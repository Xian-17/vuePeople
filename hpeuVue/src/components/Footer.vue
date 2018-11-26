<template>
  <div class="footer">
    <p class="copyright"> {{ copyright }} </p>
  </div>
</template>

<script>
export default {
  name: 'Footer',
  data () {
    return {
      copyright:'慧与大学人事管理系统 版权所有 2018'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
p {
  padding: 4px 0;
}
.footer .copyright{
  width: 82%;
  float: right;
  color: #057FCA;
  font-size: 10px;
  background: #fff;
  text-align: right;
  padding-right: 16px;
}
</style>
