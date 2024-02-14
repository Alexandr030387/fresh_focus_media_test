# Fresh Focus Media Challenge

## Getting started
### Before run the container check if you do not use the same ports in the other projects and check if you stop Apache or NGINX
### You can run the next commands without sudo, but if you have the problems with permissions run these commands with `sudo`
* Clone the repository
## Launch the project
* Set up docker `sudo apt install docker`
* Set up docker-compose `sudo apt install docker-compose`
* Run the container `sudo docker-compose up -d --build`
* Go to the `laravel` dir `cd laravel`
* In the `laravel` directory you will find the `.env.example` file, you should copy it and rename to `.env`.
* **After that you need to install next packages**:
  * `composer install` to download all necessary packages and dependencies
  * `npm install` to install all frontend dependencies
  * also you need to install node, check the version that you use and if it is an old version try to update it `sudo n 16.16.0` or to another version.
* In the root directory you can find the sql database. You can use this database.
* Or go to the container, 'laravel' dir `cd laravel` run the next command `sudo docker exec -it laravel-app bash`.
* Inside container run migrations and seeds to create a new database. Go to the next steps.
* `php artisan migrate`
* `php artisan make:seeder` or `php artisan db:seed`
* If you set up all correct after you follow the instruction, you can run next command to launch the frontend `npm run watch` or `npm run dev`, check the url `http://localhost:8080`