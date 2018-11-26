<template>
  <div class="depart">
    <div class="departInfo">
      <ul class="info">
        <router-link to="/home/adddepart">
          <li> {{ add }} </li>
        </router-link>
        <router-link to="/home/departlist">
          <li> {{ inf }} </li>
        </router-link>
      </ul>
    </div>
    <div class="departList">
      <label for="Name">
        <span>部门名称</span>
        <input v-model="name" type="text" id="Name" style="padding-left: 10px;" placeholder="控制在10个字、20个字节以内"/>
      </label>
      <label for="Dep">
        <span>部门负责人</span>
        <input v-model="leader" type="text" id="Dep" style="padding-left: 10px;" placeholder="控制在5个字、10个字节以内"/>
      </label>
      <label for="Num">
        <span>负责人电话</span>
        <input v-model="tel" type="text" id="Num" style="padding-left: 10px;" placeholder="控制在15个字符以内"/>
      </label>
      <label for="Qq">
        <span>负责人QQ</span>
        <input v-model="qq" type="text" id="Qq" style="padding-left: 10px;" placeholder="控制在10个字节内"/>
      </label>
      <label for="Email">
        <span>负责人邮箱</span>
        <input v-model="email" type="text" id="Email" style="padding-left: 10px;" placeholder="控制在50个字符内"/>
      </label>
      <label for="Info">
        <span>部门简介</span>
        <textarea v-model="summary" name="" id="Info" cols="" rows="2" style="padding-left: 10px;" placeholder="控制在500个汉字以内"></textarea>
      </label>
      <button class="btn" v-on:click="addDepart">添加部门</button>
    </div>
  </div>
</template>

<script>
  import qs from "qs";
export default {
  name: 'Depart',
  data () {
    return {
      add: '添加部门',
      inf: '修改部门',
      name: "",
      leader: "",
      tel: "",
      qq: "",
      email: "",
      summary: ""
    }
  },
  methods:{
    addDepart: function(){
      let postData = {
        name: this.name,
        leader: this.leader,
        tel: this.tel,
        qq: this.qq,
        email: this.email,
        summary: this.summary
      }
      this.$axios.post("/apis/adddepart",qs.stringify(postData))
      .then((res) => {
        // console.log(res);
        if(res){
          alert('添加部门成功');
          this.$router.push({path:'/home/querydepart'})
        }else{
          alert('添加部门失败');
        }
      })
      .catch((error) => {
        console.log(error)
      })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
html,body{
  background-color: #f3f3f3;
}
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
.depart{
  width: 78%;
  float: right;
  margin: 2%;
}
.depart .departInfo {
  padding: 6px;
  overflow: hidden;
  background: #fff;
  border-bottom: 1px solid #f3f3f3;
}
.depart .departInfo .info {
  float: left;
  overflow: hidden;
}
.depart .departInfo li {
  float: left;
  cursor: pointer;
  margin-right: 16px;
}
.depart .departInfo li:hover {
  color: #2dc6c2;
}
.depart .departInfo .operation {
  float: right;
  padding: 4px 0;
  overflow: hidden;
}
.depart .departInfo .operation li {
 color: #999;
 font-size: 10px;
}
.depart .departList {
  padding: 12px 10px;
  background: #fff;
  padding-left: 6%;
}
.depart .departList label {
  width: 100%;
  font-weight: 400;
}
.depart .departList label input {
  width: 82%;
  float: right;
  margin-left: 3%;
  margin-bottom: 1%;
  border: 1px solid #f3f3f3;
}
.depart .departList label textarea {
  width: 82%;
  float: right;
  overflow:hidden;
  border: 1px solid #f3f3f3;
}
.depart .departList button {
  border: 0;
  color: #fff;
  margin-top: 16px;
  padding: 4px 6px;
  margin-left: 18%;
  background: #1cb394;
}
.depart .departList .table th {
  cursor: pointer;
  border-bottom: 1px;
  background: #f3f3f3;
}
.depart .departList .table td {
  cursor: pointer;
}
.depart .lookup {
  background: #fff;
  text-align: right;
  padding: 18px 16px 0 0;
}
.depart .lookup input {
  margin-left: 6px;
  border: 1px solid #ccc;
}
</style>
