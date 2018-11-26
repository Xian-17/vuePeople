<template>
  <div class="employeelists">
    <ul class="emp">
      <router-link to="/home/addemployee">
        <li> {{ addemploy }} </li>
      </router-link>
      <router-link to="/home/employeelist">
        <li> {{ emplist }} </li>
      </router-link>
    </ul>
    <div class="info">
      <ul>
        <li v-for="(infolist,index) in infolists">
          <span> {{ infolist }} </span>
          <input type="text" style="padding-left: 10px;">
          <!-- <template v-if="infolist == '性别'">
            <span> {{ infolist }} </span>
            <input type="radio" name="" value="" checked="checked"/>
            <span> {{ man }} </span>
            <input type="radio" name="" value="" />
            <span> {{ woman }} </span>
            <input type="text" style="padding-left: 10px;">
          </template>
          <template v-else-if="infolist == ''"></template> -->
        </li>
      </ul>
    </div>
    <div class="infs">
      <ul>
        <li v-for="(inflist,index) in inflists">
          <span> {{ inflist }} </span>
          <input type="text" style="padding-left: 10px;">
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: 'EmployeeLists',
  data () {
    return {
      man: "男",
      woman: "女",
      addemploy: '添加员工',
      emplist: '员工列表',
      infolists:['编号','性别','电话','入职日期','职务','民族','身份证号','身高(CM)','政治面貌','邮箱','掌握技能','请上传简历'],
      inflists:['姓名','生日','学历','所在部门','职称','婚姻状况','籍贯','所在地','体重(kg)','员工QQ','工作经验','请上传头像']
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
p {
  margin: 0;
}
ul {
  margin: 0;
  padding: 0;
}
li {
  margin: 0;
  padding: 0;
  list-style: none;
}
a {
  color: #333;
  text-decoration: none;
}
.employeelists{
  width: 80%;
  float: right;
  padding: 4px 0; 
  margin: 1%;
  background: #fff;
  text-align: center;
}
.employeelists .emp{
  overflow: hidden;
  border-bottom: 1px solid #f3f3f3;
}
.employeelists .emp li {
  float: left;
  cursor: pointer;
  margin: 0 16px 4px 10px;
}
.employeelists .emp li:hover {
  color: #2dc6c2;
}
.employeelists .info,.infs {
  display: inline-block;
  float: left;
  margin: 0 27px;
  text-align: right;
}
.employeelists .info li,.infs li{
  margin: 5px 0;
}
.employeelists .info input,.infs input {
  height: 18px;
  vertical-align: middle;
  border: 1px solid #f3f3f3;
}

.employeelists .info span,.infs span {
  vertical-align: middle;
}
</style>
