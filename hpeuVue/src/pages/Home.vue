<template>
  <div class="home">
    <hpeu-publeft></hpeu-publeft>
    <hpeu-header></hpeu-header>
    <router-view></router-view>
    <hepu-footer></hepu-footer>
  </div>
</template>

<script>
import Header from '@/components/Header'
import Footer from '@/components/Footer'
import PublicLeft from '@/components/PublicLeft'

export default {
  name: 'Home',
  data () {
    return {
      
    }
  },
  components:{
    "hpeu-header":Header,
    "hepu-footer":Footer,
    "hpeu-publeft":PublicLeft
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
html,body{
  background-color: #f3f3f3;
}
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
