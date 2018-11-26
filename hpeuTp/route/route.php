<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\facade\Route;
Route::post('/login','index/index/login');
Route::post('/quit','index/index/quit');
Route::post('/adddepart','index/index/adddepart');
Route::post('/modepart','index/index/modepart');
Route::post('/querydepart','index/index/querydepart');

//Route::get('/login','index/index/login');
//Route::get('/adddepart','index/index/adddepart');

?>
