<template>
    <div>
        <div id="header">
        <div class="header">
            <img src="../../public/imgs/logo.png" alt="">
            <ul class="nav">
                <li @click="index"><a>首页</a></li>
                <li @click="product"><a>菜谱</a></li>
                <li @click="index"><a>商城</a></li>
                <li @click="index"><a>笔记</a></li>
                <li @click="cartoon"><a>动漫</a></li>
                <li @click="collect"><a>收藏</a></li>
            </ul>
            <input type="text" value="" placeholder="搜索菜谱、菜单、食材、用户">
            <div class="sous" ><img src="../../public/imgs/sou-suo.png" alt=""></div>
            <div class="list">
               <a class="btn" href="javascript:;">发布
                 <div class="box">
                     <div class="kong"></div>
                     <div class="fb">
                         <a href="javascript:;" onfocus="this.blur();">发布菜单</a>
                         <a href="javascript:;" onfocus="this.blur();">创建菜单</a>
                     </div>
                 </div>
               </a>
            </div>
            <div class="login-reg">
                <a class="login" href="javascript:;" onfocus="this.blur();">登录</a>
                <span>|</span>
                <a class="reg" @click="reg">注册</a>
            </div>
        </div>
    </div>
 </div>
</template>
<script>
    export default{
        data(){
            return{
                activeClass: 0, // 0为默认选择第一个，-1为不选择
            }
        },
        methods:{
          index(){
              this.$router.push('/')
          },
          product(){
              this.$router.push('/product')
          },
          collect(){
              this.$router.push('/collect')
          },
          reg(){
              this.$router.push('/reg')
          },
          cartoon(){
              this.$router.push('/cartoon')
          }
      }          
    }
</script>
<style scoped>
#header{
    box-shadow: 0 2px 4px 0 rgba(0,0,0,0.08);
}
ul,li{
    list-style: none;
    margin: 0;
    padding: 0;
    outline: none;
}
a{
  text-decoration: none;
  color: #000;
  outline:none;  
}
.header{
    width:1000px;
    height:60px; 
    margin:0 auto;
}
.header img{
    width:170px;
    height:40px;
    float: left;
    margin-top: 9px;
    margin-right: 20px;
    cursor: pointer;
}
.header ul.nav li{
    float: left;
    line-height: 60px;
    padding: 0 15px;
}
.header ul.nav li:hover{
    cursor: pointer;
}
.active{
    color: #FFB31A;
    font-weight: bold;
}
.header input{
    width: 180px;
    height:30px;
    line-height: 16px;
    padding: 7px 10px;
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
    background: #F7F7F7;
    color: #999;
    font-size: 12px;
    border: 0;
    margin-top:15px;
    float: left;
    outline: none;
    box-shadow: none;
    box-sizing: border-box;
    margin-left: 10px;
}
.header .sous{
   float: left;
   width: 38px;
   height: 30px;
   border-top-right-radius: 4px;
   border-bottom-right-radius: 4px;
   background: #eee;
   margin-top:15px;
   position: relative;
   cursor: pointer;
}
.sous img{
    width: 25px;
    height: 25px;
    position: absolute;
    left:8px;
    top: -5px;
}
.btn{
    display:block;
    float: left;
    width: 60px;
    height: 30px;
    text-align: center;
    line-height: 30px;
    background: #FFB31A;
    color: #fff;
    font-size: 14px;
    border-radius: 4px;
    margin: 15px 0 0 10px;
}
.list .fb{
    width: 130px;
    background: #fff;
    box-shadow: 0 0 5px 0 rgba(64,71,81,0.10);
    z-index:999;
    /* top: 44px; */
    position: relative;
    border-radius: 8px;
    padding: 8px;
    margin-left: -45px;
}
.btn:hover .box{
    display: block;
}
.box .fb a:hover{
    color:#FFB31A;
}
.box{
    display: none;
}
.kong{
    width: 130px;
    height:15px;
}
.fb a{
    line-height: 36px;
    display: block;
    text-align: center;
    font-size: 13px;
}
.login-reg{
    float:right;
    line-height: 60px;
    font-size: 15px;
    cursor: pointer;
}
.login-reg span{
    padding: 0 5px;
}
.login-reg a:hover{
    color: #FFB31A;
}
</style>