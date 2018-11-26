<?php
namespace app\index\controller;

use app\index\model\AdminModel;
use app\index\model\DepartmentModel;
use think\App;
use think\Controller;
use think\Request;

class IndexController extends Controller
{
    protected $request = null;
    public function __construct()
    {
        parent::__construct();
        $this->request = new Request();
    //        跨域
        header("Access-Control-Allow-Origin:*");
    }

    //    登录逻辑
    public function login()
    {
        $name = $this->request->post('name');
        $pwd = md5($this->request->post('pwd'));
    //        return json_encode($name.$pwd);
        $user = AdminModel::where('aUser',$name)->field('aUser,aPwd')->find();
        if($name != '' && $name == $user["aUser"] && $pwd == $user["aPwd"]){
    //            session('username',$name);
            return $name;
        }else{
            return '用户名或密码错误';
        }
    }

    //    登出逻辑
    public function quit()
    {
        $name = $this->request->post('name');
        if($name != ' '){
            $name = null;
            return $name;
        }else{
            return '用户名不能为空';
        }
    }

    //    添加部门逻辑
    public function adddepart()
    {
        $name = $this->request->post('name');
        $leader = $this->request->post('leader');
        $tel = $this->request->post('tel');
        $qq = $this->request->post('qq');
        $email = $this->request->post('email');
        $summary = $this->request->post('summary');
        //$obj = [$name,$leader,$tel,$qq,$email,$summary];
        // return json_encode($obj);
        $depart = new DepartmentModel([
            'dName'  =>  $name,
            'dDirector' => $leader,
            'dDirectorTel' => $tel,
            'dDirectorQQ' => $qq,
            'dDirectorEmail' =>  $email,
            'dInfo' => $summary
        ]);
        $res = $depart->save();
        return json_encode($res);
    }

    //    修改部门信息逻辑--未完善
    public function modepart()
    {
        $data = DepartmentModel::field('dId,dName,dDirector,dDirectorTel')->order('dId','desc')->all();
        return json_encode($data);
    }

    //    查询部门信息逻辑
    public function querydepart()
    {
//        $queryData = DepartmentModel::where('dId',7)->select();
//        foreach ($queryData as $key => $allData){
//            return json_encode(222);
//        }
    }
}
