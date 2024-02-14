<?php

namespace App\Http\Requests\Tasks;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest
{
    public function rules(): array
    {
//        labours:Array[0]
//        miscellaneous:Array[0]
//        trucks:Array[0]
        return [
            'customer' => [
                'required',
                'numeric',
            ],

            'job' => [
                'required',
                'numeric',
            ],

            'location' => [
                'required',
                'numeric',
            ],

            'area' => [
                'required',
                'string',
                'max:255',
            ],

            'order_by' => [
                'required',
                'string',
                'max:255',
            ],

            'description' => [
                'required',
                'string',
            ],

            'status' => [
                'required',
                'string',
                'max:10',
            ],

            'date' => [
                'required',
                'date',
            ],

            'labours' => [
                'required',
                'array',
            ],

            'labours.*.staff' => [
                'required',
                'numeric',
            ],

            'labours.*.position.id' => [
                'required',
                'numeric',
            ],

            'labours.*.uom.id' => [
                'required',
                'numeric',
            ],

            'labours.*.rate_type' => [
                'required',
                'string',
            ],

            'labours.*.regular_rate' => [
                'required',
                'numeric',
            ],

            'labours.*.regular_hours' => [
                'required',
                'numeric',
            ],

            'labours.*.overtime_rate' => [
                'required',
                'numeric',
            ],

            'labours.*.overtime_hours' => [
                'required',
                'numeric',
            ],

            'labours.*.line_total' => [
                'required',
                'numeric',
            ],

            'labour_sub_total' => [
                'required',
                'numeric',
            ],

            'trucks' => [
                'required',
                'array',
            ],

            'trucks.*.truck' => [
                'required',
                'numeric',
            ],

            'trucks.*.qty' => [
                'required',
                'numeric',
            ],

            'trucks.*.uom.id' => [
                'required',
                'string',
            ],

            'trucks.*.rate' => [
                'required',
                'numeric',
            ],

            'trucks.*.line_total' => [
                'required',
                'numeric',
            ],

            'truck_sub_total' => [
                'required',
                'numeric',
            ],

            'miscellaneous' => [
                'required',
                'array',
            ],

            'miscellaneous.*.description' => [
                'required',
                'string',
            ],

            'miscellaneous.*.cost' => [
                'required',
                'numeric',
            ],

            'miscellaneous.*.price' => [
                'required',
                'numeric',
            ],

            'miscellaneous.*.qty' => [
                'required',
                'numeric',
            ],

            'miscellaneous.*.line_total' => [
                'required',
                'numeric',
            ],

            'miscellaneous_sub_total' => [
                'required',
                'numeric',
            ],
        ];
    }

    public function messages(): array
    {
        return [
            'postal.postal_code' => 'Invalid postal code. Please provide a valid Canadian postal code.',
        ];
    }
}
