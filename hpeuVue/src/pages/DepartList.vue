<template>
  <div class="departlists">
      <ul class="info">
        <router-link to="/home/adddepart">
          <li> 添加部门 </li>
        </router-link>
        <router-link to="/home/querydepart">
          <li> 部门列表 </li>
        </router-link>
      </ul>
      <div class="departList">
        <label for="Name">
          <span>部门名称</span>
          <input type="text" id="Name" style="padding-left: 10px;" placeholder="控制在10个字、20个字节以内" />
        </label>
        <label for="Dep">
          <span>部门负责人</span>
          <input type="text" id="Dep" style="padding-left: 10px;" placeholder="控制在5个字、10个字节以内" />
        </label>
        <label for="Num">
          <span>负责人电话</span>
          <input type="text" id="Num" style="padding-left: 10px;" placeholder="控制在15个字符以内" />
        </label>
        <label for="Qq">
          <span>负责人QQ</span>
          <input type="text" id="Qq" style="padding-left: 10px;" placeholder="控制在10个字节以内" />
        </label>
        <label for="Emeil">
          <span>负责人邮箱</span>
          <input type="text" id="Emeil" style="padding-left: 10px;" placeholder="控制在50个字符内" />
        </label>
        <label for="Info">
          <span>部门简介</span>
          <textarea name="" id="Info" cols="" rows="2" style="padding-left: 10px;" placeholder="控制在500个汉字以内"></textarea>
        </label>
        <button class="btn">修改部门信息</button>
      </div>
    </div>
</template>

<script>
    export default {
      name: 'DepartLists',
      data () {
        return {

        }
      }
    }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
a{
  color: #333;
  text-decoration: none;
}
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
.departlists{
  width: 78%;
  float: right;
  margin: 2%;
  background: #fff;
  overflow: hidden;
  vertical-align: middle;
}
.departlists .info {
  padding: 4px;
  overflow: hidden;
  border-bottom: 1px solid #f3f3f3;
}
.departlists .info li {
  float: left;
  cursor: pointer;
  margin-right: 16px;
}
.departlists .info li:hover {
  color: #2dc6c2;
}

.departlists .departList {
  padding: 12px 10px;
  background: #fff;
  padding-left: 6%;
}
.departlists .departList label {
  width: 100%;
  font-weight: 400;
}
.departlists .departList label input {
  width: 82%;
  float: right;
  margin-left: 3%;
  margin-bottom: 1%;
  border: 1px solid #f3f3f3;
}
.departlists .departList label textarea {
  width: 82%;
  float: right;
  overflow:hidden;
  border: 1px solid #f3f3f3;
}
.departlists .departList button {
  border: 0;
  color: #fff;
  margin-top: 16px;
  padding: 4px 6px;
  margin-left: 18%;
  background: #1cb394;
}
</style>
