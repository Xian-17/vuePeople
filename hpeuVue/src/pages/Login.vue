<template>
  <div class="login">
    <div class="log">
      <div class="content">
        <div class="hpeu">
          <div class="left">
            <p class="color"></p>
            <p class="text">Hewlett Packard</p>
            <p class="txt">Enterprise</p>
          </div>
          <div class="mid"></div>
          <div class="right">
            <p class="tet">HPE University</p>
          </div>
        </div>
        <input v-model="name" type="text" style="padding-left: 6px;" placeholder="用户名">
        <input v-model="pwd" type="password" style="padding-left: 6px;" placeholder="密码">
        <div class="identy">
          <div class="code" @click="refreshCode">
            <s-identify :identifyCode="identifyCode"></s-identify>
          </div>
          <input type="text" class="inden" style="padding-left: 6px;" placeholder="验证码" v-model="identify">
        </div>
        <button type="submit" class="glyphicon glyphicon-ok" v-on:click="login">登录</button>
      </div>
    </div>
  </div>
</template>

<script>

import Identify from './Identify.vue'

export default {
  name: 'Login',
  data () {
    return {
      name: "",
      pwd: "",
      identify: "",
      identifyCodes: "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz",
      identifyCode: ""
    }
  },
  mounted() {
    this.identifyCode = "";
    this.makeCode(this.identifyCodes, 4);
  },
  methods:{
    login: function(){
      /*get
      this.$axios({
        url: '/apis/login',
        method: 'get',
        params: {
          name: this.name,
          pwd: this.pwd
        }
      })*/
      if(this.identify == this.identifyCode){
        // post
        this.$axios.post("/apis/login",{name: this.name,pwd: this.pwd
        })
        .then((res) => {
          // console.log(res);
          if(res.data == this.name){
            this.$cookieStore.setCookie('user', res.data, 3600);
            this.$router.push("/home/mainpage");
          }else{
            this.$router.push("/");
          }
        })
        .catch((error) => {
          console.log(error)
        })
      }else{
        // console.log(this.identifyCode);
        alert('验证码错误');
      }
    },
    randomNum(min, max) {
      return Math.floor(Math.random() * (max - min) + min);
    },
    refreshCode() {
      this.identifyCode = "";
      this.makeCode(this.identifyCodes, 4);
    },
    makeCode(o, l) {
      for (let i = 0; i < l; i++) {
        this.identifyCode += this.identifyCodes[
          this.randomNum(0, this.identifyCodes.length)
        ];
      }
      // console.log(this.identifyCode);
    }
  },
  components:{
    "s-identify":Identify
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
p {
  margin: 0;
}
.login{
  height: 420px;
  background-size: 100% 100%;
  background: url("../assets/img/background.jpg") no-repeat center center;
}
.login .log{
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.login .log .content{
  width: 214px;
  height: 260px;
  background: #fff;
  border-radius: 4px;
}
.login .log .content .hpeu{
  width: 100%;
  height: 24%;
  margin: 10% auto 0 auto;
  overflow: hidden;
}
.login .log .content .hpeu div {
  float: left;
  font-size: 11px;
}
.login .log .content .hpeu .left {
  width: 42%;
  height: 100%;
  text-align: left;
  margin-left: 10px;
}
.login .log .content .hpeu .left .color {
  width: 32%;
  height: 18%;
  border: 2px solid #37a488;
}
.login .log .content .hpeu .left .text {
  margin-top: 4px;
  font-weight: 600;
}
.login .log .content .hpeu .left .txt {
  font-weight: 400;
  text-align: left;
}
.login .log .content .hpeu .right {
  width: 42%;
  height: 100%;
  text-align: left;
}
.login .log .content .hpeu .right .tet {
  margin-top: 18%;
  font-weight: 600;
}
.login .log .content .hpeu div.mid {
  height: 80%;
  margin: 0 8px;
  border-left: 1px solid #333 ;
}
.login .log .content input {
  border: 0;
  width: 90%;
  margin: 6px 10px;
  height: 30px;
  color: #a2a2a2;
  font-size: 12px;
  border-radius: 4px;
  background: #eee;
}
.login .log .content button {
  border: 0;
  width: 90%;
  color: #fff;
  height: 30px;
  font-size: 18px;
  margin: 2px 10px;
  border-radius: 4px;
  background: rgb(107,196,164);
}
.login .log .content .identy {
  width: 214px;
  height: 50px;
  overflow: hidden;
}
.login .log .content .identy .code {
  width: 114px;
  height: 40px;
  float: left;
  margin: 6px 0 6px 10px;
}
.login .log .content .idcode {
  width: 50%;
  height: 80%;
  float: left;
  margin: 6px 6px 6px 10px;
  display: inline-block;
}
.login .log .content .idcode canvas {
  width: 100%;
  height: 90%;
  border-radius: 4px;
}
.login .log .content input.inden {
  width: 34%;
  height: 64%;
  float: right;
  font-size: 16px;
  margin: 6px 12px 6px 0;
  display: inline-block;
}

</style>
