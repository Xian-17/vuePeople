<template>
  <div class="employee">
    <ul class="info">
      <router-link to="/home/addemployee">
        <li> {{ addemploy }} </li>
      </router-link>
      <router-link to="/home/employeelist">
        <li> {{ employlist }} </li>
      </router-link>
    </ul>
    <div class="departList table-responsive">
      <table class="table table-striped table-bordered table-condensed">
      <!-- <caption>table title and/or explanatory text</caption> -->
        <thead>
          <tr>
            <th v-for="(infolist,index) in infolists"> {{ infolist }} </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td v-for="(infolist,index) in infolists"> data </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Employee',
  data () {
    return {
      addemploy: '添加员工',
      employlist: '员工列表',
      infolists:['序号','姓名','性别','年龄','婚姻','学历','手机','部门','工龄','照片','附件','状态','操作']
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
.employee{
  width: 78%;
  float: right;
  margin: 2%;
  background: #fff;
  text-align: center;
}

.employee .info {
  padding: 4px;
  overflow: hidden;
  border-bottom: 1px solid #f3f3f3;
}
.employee .info li {
  float: left;
  cursor: pointer;
  margin-right: 16px;
}
.employee .info li:hover {
  color: #2dc6c2;
}
.employee .departList {
  padding: 6px 24px;
  background: #fff;
}
.employee .departList .table {
  margin: 14px 0; 
  text-align: left;
}
.employee .departList .table th {
  cursor: pointer;
  border-bottom: 1px;
  background: #f3f3f3;
}
.employee .departList .table td {
  cursor: pointer;
}
</style>
