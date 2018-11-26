<template>
  <div class="mainpage">
    <div class="lists">
      <ul>
        <!-- vue 静态 -->
        <!-- <li v-for="setColor in setColors" v-bind:style="{background:setColor.color}">
          <p v-bind:class="setColor.claz"></p>
          <span>{{ setColor.info }}</span>
        </li> -->
        <router-link to="/home/adddepart">
          <li class="one">
            <p class="glyphicon glyphicon-plus-sign"></p>
            <span>部门设置</span>
          </li>
        </router-link>
        <router-link to="/home/querydepart">
          <li class="two">
            <p class="glyphicon glyphicon-eye-open"></p>
            <span>部门信息</span>
          </li>
        </router-link>
        <router-link to="/home/employeelist">
          <li class="three">
            <p class="glyphicon glyphicon-user"></p>
            <span>员工信息</span>
          </li>
        </router-link>
        <router-link to="/home/addemployee">
          <li class="four">
            <p class="glyphicon glyphicon-plus"></p>
            <span>录入员工</span>
          </li>
        </router-link>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MainPage',
  data () {
    return {
      // vue 数组
      // setColors:[
      //   {color:'#ed5564',info:'部门设置',claz:'glyphicon glyphicon-plus-sign'},
      //   {color:'#1ab394',info:'部门信息',claz:'glyphicon glyphicon-eye-open'},
      //   {color:'#f8ab59',info:'员工信息',claz:'glyphicon glyphicon-user'},
      //   {color:'#22c6c8',info:'录入员工',claz:'glyphicon glyphicon-plus'}
      // ]
    }
  },
  methods:{},
  computed:{}
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
a {
  text-decoration: none;
}
p{
  margin: 0;
  padding: 4px 0;
}
ul {
  padding: 0;
  margin: 10px 0 0 0;
  list-style-type: none;
}
li {
  display: inline-block;
  color: #fff;
  margin: 10px;
  cursor: pointer;
  border-radius: 4px;
  padding: 12px 20px;
}
a {
  color: #42b983;
  text-decoration: none;
}
.mainpage {
  width: 82%;
  float: right;
  text-align: center;
}
.mainpage .lists ul li.one{
  background-color: #ed5564;
}
.mainpage .lists ul li.two{
  background-color: #1ab394;
}
.mainpage .lists ul li.three{
  background-color: #f8ab59;
}
.mainpage .lists ul li.four{
  background-color: #22c6c8;
}
.mainpage .lists ul li p{
  font-size: 36px;
  margin-right: 5px;
  vertical-align: middle;
}
.mainpage .lists ul li span{
  color: #fff;
  font-size: 16px;
  vertical-align: middle;
}

</style>