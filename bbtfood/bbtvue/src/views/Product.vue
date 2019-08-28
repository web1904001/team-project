<template>
    <div>
            <my-header/>
      <div class="content">
        <div class="nav">
          <ul >
            <li><a class="active">川菜</a></li>
            <li><a >粤菜</a></li>
            <li><a>湘菜</a></li>
            <li><a>东北菜</a></li>
           </ul>
        </div>
        <!-- <div v-for="(f,i) of familylist" :key="i"> -->
        <h3 class="title">精选菜谱</h3>
        <div class="main">
            <ul>
                <li @click="details">
                    <img class="md"  alt="">
                    <span>香酥鸡排</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
            </ul>
        </div>
      </div>
      <my-footer/>
    </div>
</template>
<script>
export default {
    data() {
        return {
            productlist:[{sm:""}],
            familylist:[],
            i:1,
        }
    },
    created() {
      this.load();
    },
    watch: {
      tid() {
        this.load();
      }
    },
    methods: {
      details() {
        this.$router.push('/Details')
      },
      load() {
        this.axios.get(
          "http://localhost:5050/product",
        ).then(res => {
          console.log(res);
          this.productlist = res.data;
        }).catch(err => {
          console.log(err)
        })
      },
    //   changei(i){
    //       this.i=i;
    //   }
    }
  }       
</script>
<style scoped>
ul,li,h1,h2,h3,h4,h5,h6,p{list-style:none;margin:0;padding:0;outline: 0;border: 0;}
.content{
   width: 1000px;
   margin:0 auto;
}
.nav{
    height:45px;
    line-height:45px;
    margin-bottom: 25px;
    margin-top: 11px;
}
.nav ul li{
     float: left;
}
.nav ul li a{
    display: inline-block;
    color: #383830;
    height: 42px;
    line-height: 42px;
    margin-right: 30px;
}
.nav ul li .active{
    border-bottom: 2px solid #383830;
    font-weight: bold;
    color: #383830;
}
.nav ul li a:hover{
    color: #FFB31A;
    cursor: pointer;
}
.title{
    font-size: 20px;
    color: #333;
    font-weight: bold;
    margin-bottom: 25px;
}
.main{
    height:2200px;
}
.main ul li{
    float: left;
    cursor: pointer;
    width: 300px;
    height: 255px;
    margin: 0 40px 20px 0;
    border-radius:8px;
}
.main ul li .md{
    width: 300px;
    height: 200px;
    display: block;
    border-radius:8px;
    position: relative;
}
.main ul li span{
    display: block;
    margin:15px 0 5px 0;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}
.main ul li span:hover{
    color: #FFB31A;
}
.main .md:hover{
     box-shadow: 0 0 40px #ccc;
     transform: scale(1.1);
}
.main .ms{
    width: 20px;
    height: 19px;
    vertical-align: middle;
}
.main ul li p span{
    display: inline;
    font-size: 10px;
    padding-left:5px;
}
.main ul li p span:hover{
    color:#000;
}
</style>