<template>
  <div class="querydepart">
    <div class="departInfo">
      <ul class="info">
        <router-link to="/home/AddDepart">
          <li> {{ add }} </li>
        </router-link>
        <router-link to="/home/querydepart">
          <li> {{ deinfo }} </li>
        </router-link>
      </ul>
    </div>
    <div class="lookup">
      <span> {{ look }} </span>
      <input type="text" style="padding-left:10px;">
    </div>
    <div class="departList">
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th class="theight" v-for="(delist,index) in delists"> {{ delist }} </th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(postData,index) in postDatas" v-if="index<(NavNums/3)">
            <td class="height"> {{ postData.dId }} </td>
            <td class="height"> {{ postData.dName }} </td>
            <td class="height"> {{ postData.dDirector }} </td>
            <td class="height"> {{ postData.dDirectorTel }} </td>
            <td class="height bord glyphicon glyphicon-pencil"></td>
            <td class="height bord glyphicon glyphicon-trash"></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!--<navigation v-bind:NavNums="NavNums" v-bind:NavPers="NavPers" @click="getCutPage"></navigation>-->
  </div>
</template>

<script>
    // import Navigation from '../components/Navigation'
    export default {
      name: 'QueryDepart',
      data () {
        return {
            NavNums: 1,
            NavPers: 5,
            getCutNum: '',
            postDatas:[],
            add: '添加部门',
            deinfo: '部门列表',
            look: '请输入关键字查询:',
            delists:['部门ID','部门名称','部门负责人','负责人电话','操作']
        }
      },
      methods:{
          getCutPage:function (currentPage) {
              this.getCutNum = currentPage;
              console.log('这是子组件传过来的当前页：'+this.getCutNum);
          }
      },
      components:{
        // "navigation":Navigation
      },
      created(){
        this.$axios.post("/apis/modepart")
        .then((res)=>{
            // console.log(res.data.length);
            this.postDatas = res.data;
            this.NavNums = res.data.length;
        })
        .catch((error) => {
            console.log(error)
        });
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
.querydepart{
  width: 77%;
  float: right;
  margin: 20px;
  text-align: center;
}
.querydepart .departInfo {
  padding: 6px;
  overflow: hidden;
  background: #fff;
  border-bottom: 1px solid #f3f3f3;
}
.querydepart .departInfo .info {
  float: left;
  overflow: hidden;
}
.querydepart .departInfo li {
  float: left;
  cursor: pointer;
  margin-right: 16px;
}
.querydepart .departInfo li:hover {
  color: #2dc6c2;
}
.querydepart .departList {
  padding: 6px 15px;
  background: #fff;
}
.querydepart .departList .table {
  border: none;
  margin: 14px 0; 
  text-align: left;
}
.querydepart .departList .table th.theight {
  cursor: pointer;
  padding: 5px;
  border: none;
  background: #f3f3f3;
}
.querydepart .departList .table td.height {
  padding: 4px;
  cursor: pointer;
  border: none;
  vertical-align: middle;
}
.querydepart .departList .table td.bord {
  padding: 6px;
}
.querydepart .departList .table td.bord:hover {
  color: #057FCA;
}
.glyphicon {
    position: relative;
    top: 0;
    border: none;
    display: inline-block;
    font-family: 'Glyphicons Halflings';
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.querydepart .lookup {
  background: #fff;
  text-align: right;
  padding: 18px 16px 0 0;
}
.querydepart .lookup input {
  margin-left: 6px;
  border: 1px solid #ccc;
}
</style>
