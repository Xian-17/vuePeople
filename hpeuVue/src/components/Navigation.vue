<template>
  <div class = "navigation">
    <nav aria-label = "Page navigation">
      <ul class = "pagination pagination-sm">
          <!--动态添加类名之三元表达式：放在数组中，类名需使用引号-->
          <li @click="previous" :class="[currentPage==1?'disabled':'']">
              <a href = "#">&laquo;</a>
          </li>
          <li v-for = "(pages,index) in totalPages" :class="[index+1==currentPage?'active':'']" @click="getIndex(index)">
              <a href="#"> {{ pages }} - {{ index }}- {{ NavNums }} </a>
          </li>
          <li @click="next" :class="[currentPage==totalPages?'disabled':'']">
              <a href = "#">&raquo;</a>
          </li>
      </ul>
    </nav>
  </div>
</template>

<script>
  export default {
    name: 'Navigation',
    props:{
      //  获取数据总条数
      NavNums:{
          type:Number
      },
      //  获取每页的数据条数
      NavPers:{
          type:Number
      }
    },
    data() {
      return {
          currentPage: 1,    // 当前页默认为第一页
          totalPages: 1,      // 总页数=总条数/每页数据条数,默认为1
      }
    },
    //  未完善
    computed:{
        getIndex: function(i) {
            console.log(i);
            return 999;
        }
    },
    methods: {
        previous: function(){
            if(this.currentPage > 1 && this.currentPage <= this.totalPages){
                this.currentPage--;
                this.$emit('getCutPage',this.currentPage);
                console.log('当前页是第'+ this.currentPage+'页');
            }else{
                this.currentPage = 1;
                console.log('当前页是第'+ this.currentPage+'页');
            }
        },
        next: function () {
            if(this.currentPage >= 1 && this.currentPage < this.totalPages){
                this.currentPage++;
                this.$emit('getCutPage',this.currentPage);
                console.log('当前页是第'+ this.currentPage+'页');
            }else{
                this.currentPage = this.totalPages;
                console.log('当前页是第'+ this.currentPage+'页');
            }
        }
    },
    beforeUpdate(){
        // 获取总页数
        this.totalPages = Math.ceil(this.NavNums / this.NavPers);
        console.log('数据总页数为：'+this.totalPages+'页');
        console.log('数据总条数为：'+this.NavNums+'条');
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

  nav {
    text-align: center;
    background: #fff;
  }
</style>
