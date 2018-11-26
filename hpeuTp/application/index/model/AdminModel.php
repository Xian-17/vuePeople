<?php
/**
 * Created by PhpStorm.
 * User: song jia xian
 * Date: 2018-11-1
 * Time: 08:56
 */

namespace app\index\model;

use think\Model;

class AdminModel extends Model
{
    protected $name = 'admin';
//    protected $table = 'admin';
//    public function posts()
//    {
//        /*1:N关联
//         * hasMany('关联模型','外键','主键');
//        关联模型（必须）：模型名或者模型类名
//        外键：关联模型外键，默认的外键名规则是当前模型名+_id
//        主键：当前模型主键，一般会自动获取也可以指定传入
//        */
//        return $this->hasMany('PostModel','uid',"id");
//    }
}


?>