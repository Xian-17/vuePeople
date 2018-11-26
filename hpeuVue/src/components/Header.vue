<template>
  <div class="header">
      <router-link to="/home/mainpage">
        <span class="glyphicon glyphicon-menu-hamburger"></span>
      </router-link>
      <p class="ptitle">{{ ptitle }}</p>
    </div>
</template>

<script>
export default {
  name: 'Header',
  data () {
    return {
      ptitle: '慧与大学人事管理系统'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
p {
  margin: 0;
}
.header{
  width: 82%;
  float: right;
  padding: 4px 0;
  text-align: center;
  background: #057FCA;
}
.header span{
  color: #fff;
  vertical-align: middle;
}
.header .ptitle{
  color: #fff;
  display: inline-block;
  vertical-align: middle;
}
</style>
