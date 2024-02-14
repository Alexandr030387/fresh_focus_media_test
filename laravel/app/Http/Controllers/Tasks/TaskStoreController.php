<?php

namespace App\Http\Controllers\Tasks;

use App\Http\Controllers\Controller;
use App\Http\Requests\Tasks\StoreRequest;
use App\Models\Task\Task;
use App\Models\Task\TaskLabour;
use App\Models\Task\TaskMiscellaneous;
use App\Models\Task\TaskProject;
use App\Models\Task\TaskTruck;
use Illuminate\Http\JsonResponse;

class TaskStoreController extends Controller
{
    public function __invoke(StoreRequest $request): JsonResponse
    {
        $task = Task::create([
            'description' => $request->input('description')
        ]);

        $this->storeTaskProject($task->id, $request);
        $this->storeTaskLabours($task->id, $request);
        $this->storeTaskTrucks($task->id, $request);
        $this->storeTaskMiscellaneous($task->id, $request);

        return new JsonResponse([
            'data' => 'ok',
        ]);
    }

    private function storeTaskProject(int $taskId, StoreRequest $request): void
    {
        TaskProject::create([
            'task_id' => $taskId,
            'status' => $request->input('status'),
            'order_by' => $request->input('order_by'),
            'date' => $request->input('date'),
            'area' => $request->input('area'),
            'customer_id' => (int) $request->input('customer'),
            'job_id' => (int) $request->input('job'),
            'location_id' => (int) $request->input('location'),
        ]);
    }

    private function storeTaskLabours(int $taskId, StoreRequest $request): void
    {
        $labours = [];

        foreach ($request->input('labours') as $labour) {
            $labours[] = [
                'task_id' => $taskId,
                'staff_id' => (int) $labour['staff'],
                'position_id' => (int) $labour['position']['id'],
                'position_rate_id' => (int) $labour['uom']['id'],
                'uom_type' => $labour['rate_type'],
                'regular_rate' => (float) $labour['regular_rate'],
                'overtime_rate' => (float) $labour['overtime_rate'],
                'regular_hours' => (float) $labour['regular_hours'],
                'overtime_hours' => (float) $labour['overtime_hours'],
                'line_total' => (float) $labour['line_total'],
            ];
        }

        TaskLabour::insert($labours);
    }

    private function storeTaskTrucks(int $taskId, StoreRequest $request): void
    {
        $trucks = [];

        foreach ($request->input('trucks') as $truck) {
            $trucks[] = [
                'task_id' => $taskId,
                'truck_id' => (int) $truck['truck'],
                'truck_rate_id' => (int) $truck['uom']['rates']['id'],
                'quantity' => (int) $truck['qty'],
                'uom_type' => $truck['uom']['id'],
                'rate' => (float) $truck['rate'],
                'line_total' => (float) $truck['line_total'],
            ];
        }

        TaskTruck::insert($trucks);
    }

    private function storeTaskMiscellaneous(int $taskId, StoreRequest $request): void
    {
        $taskMiscellaneous = [];

        foreach ($request->input('miscellaneous') as $miscellaneous) {
            $taskMiscellaneous[] = [
                'task_id' => $taskId,
                'description' => $miscellaneous['description'],
                'cost' => (float) $miscellaneous['cost'],
                'price' => (float) $miscellaneous['price'],
                'quantity' => (float) $miscellaneous['qty'],
                'line_total' => (float) $miscellaneous['line_total'],
            ];
        }

        TaskMiscellaneous::insert($taskMiscellaneous);
    }
}
