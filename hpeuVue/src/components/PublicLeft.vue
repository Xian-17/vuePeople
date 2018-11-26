<template>
  <div class="publicleft">
    <div class="user">
      <img src="../assets/img/pic.jpg">
        <span>{{ username }}</span>
      <span class="glyphicon glyphicon-triangle-bottom" v-on:click="showQuit = !showQuit"></span>
      <ul v-if="showQuit">
        <!-- 登出 最好使用逻辑登出，避免使用router-link直接跳出 -->
        <li @click="gout"> {{ quit }} </li>
      </ul>
    </div>

    <div v-on:click="CardOne" class="admin">
      <span class="glyphicon glyphicon-th-large"></span>
      <span>{{ depart }}</span>
      <span :class="claszone" class="content"></span>
    </div>
    <div v-show="showCardOne" class="card">
      <router-link to="/home/adddepart">
        <p> {{ addep }} </p>
      </router-link>
      <router-link to="/home/departList">
        <p> {{ deinfo }} </p>
      </router-link>
    </div>

    <div v-on:click="CardTwo" class="admin">
      <span class="glyphicon glyphicon-user"></span>
      <span>{{ ademploy }}</span>
      <span :class="clasztwo" class="content"></span>
    </div>
    <div v-show="showCardTwo" class="card">
      <router-link to="/home/AddEmployee">
        <p> {{ ademps }} </p>
      </router-link>
      <router-link to="/home/EmployeeList">
        <p> {{ adempinfo }} </p>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: 'publicleft',
  data () {
    return {
      username: '',
      quit: '安全退出',
      depart:'部门管理',
      addep:'添加部门',
      deinfo:'部门信息',
      showQuit: false,
      showCardOne: false,
      showCardTwo: false,
      claszone: 'glyphicon glyphicon-menu-left',
      claszeone: 'glyphicon glyphicon-menu-down',
      ademploy:'员工管理',
      ademps:'添加员工',
      adempinfo:'员工列表',
      clasztwo: 'glyphicon glyphicon-menu-left',
      claszetwo: 'glyphicon glyphicon-menu-down',
    }
  },
  methods: {
    // CardOne和CardTwo的操作相同，分开写的原因是它们控制的是不同的两个元素，避免控制一个，另一个也被控制。
    CardOne(){
      this.showCardOne = !this.showCardOne;
      if(this.claszone == 'glyphicon glyphicon-menu-left'){
        this.claszone = this.claszeone;
      }else if(this.claszone == 'glyphicon glyphicon-menu-down'){
        this.claszone = 'glyphicon glyphicon-menu-left'
      }
    },
    CardTwo(){
      this.showCardTwo = !this.showCardTwo;
      if(this.clasztwo == 'glyphicon glyphicon-menu-left'){
        this.clasztwo = this.claszetwo;
      }else if(this.clasztwo == 'glyphicon glyphicon-menu-down'){
        this.clasztwo = 'glyphicon glyphicon-menu-left'
      }
    },
    // 登出
    gout(){
      this.$axios.post("/apis/quit",{name:this.$cookieStore.getCookie('user')})
      .then((res) => {
        if(res.data == "" || res.data == null){
          this.$cookieStore.delCookie('user');
          this.$router.push("/");
        }
      })
      .catch((error) => {
        console.log(error)
      })
    }
  },
  computed:{},
  created(){
    // 设置cookie
    this.username = this.$cookieStore.getCookie('user');
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
p {
  padding: 0;
  margin: 0;
  text-align: center;
}
ul {
  list-style-type: none;
  padding: 0;
}
a {
  color: #42b983;
  outline-style: none;
  text-decoration: none;
}
.publicleft{
  width: 18%;
  height: 420px;
  padding: 0;
  float: left;
  background: #057FCA;
}
.user{
  width: 100%;
  /*height: 30%;*/
  padding: 10px 0 ;
  text-align: center;
  background: #263948;
}
.user img{
  display: block;
  width: 50px;
  height: 50px;
  margin: 0 auto;
  cursor: pointer;
  background: #fff;
  border-radius: 50%;
}
.user span{
  color: #fff;
  cursor: pointer;
  margin: 14px auto;
  vertical-align: middle;
}
.user ul li {
  color: #fff;
  cursor: pointer;
  border-radius: 6px;
  background: #80a5c2;
  border: 1px solid #333;
}
.admin{
  color: #fff;
  cursor: pointer;
  padding-top: 30px;
  vertical-align: middle;
}
.admin span {
  margin: 0 6px;
}
.admin span.content {
  font-size: 10px;
}
.card p {
  color: #fff;
  cursor: pointer;
  font-size: 12px;
  margin: 6px auto;
}
</style>
