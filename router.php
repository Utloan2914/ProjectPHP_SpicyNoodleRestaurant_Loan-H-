<?php
$uri = parse_url($_SERVER['REQUEST_URI'])['path'];

$routes = [
    '/' => 'controllers/home/index.controller.php',
    '/category' => 'controllers/category/index.controller.php',
    '/project' => 'controllers/project/project.controller.php',
    '/registration' =>'controllers/registration/registration.controllers.php',
    '/tables' =>'controllers/tables/tables.controllers.php'
];

if (array_key_exists($uri, $routes)) {
    require $routes[$uri];
} else {
   http_response_code(404);
   echo 'ERROR URL';
   die();
}



