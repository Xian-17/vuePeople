<template>
  <div class="personlfile">
    <div class="files">
      <ul>
        <li v-for="(file,index) in files"> {{ file }} </li>
      </ul>
    </div>
    <div> {{ basic }} </div>
    <div> {{ relative }} </div>
    <div> {{ person }} </div>
  </div>
</template>

<script>
export default {
  name: 'PersonalFile',
  data () {
    return {
      basic: "基本信息",
      relative: "相关信息",
      person: "个人信息",
      files: ["个人档案","返回列表"]
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
.personlfile{
  width: 78%;
  float: right;
  padding: 4px 0; 
  margin: 2%;
  background: #fff;
  text-align: center;
}
.personlfile .files {
  border: 0;
  padding: 4px 0;
  overflow: hidden;
}
.personlfile .files li{
  float: left;
  cursor: pointer;
  margin-right: 16px;
}
.personlfile .files li:hover {
  color: #2dc6c2;
}
.personlfile div{
  padding: 24px 0; 
  text-align: left;
  vertical-align: top;
  border-top: 1px solid #f3f3f3;
}
</style>
