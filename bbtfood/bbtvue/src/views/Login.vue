<template>
    <div>
    <div class="container">
        <div class="login-header">
            <div class="login-logo">
                 <a href=""><img src="../../public/imgs/logo.png" alt=""></a>
            </div>
        </div>
        <div id="login">
            <div class="login-left">
                <img src="../../public/imgs/left.png" alt="">
            </div>
            <div class="login-right">
                <div class="login-right-top">
                    <span class="login1">登录</span>
                    <span class="reg"><a @click="reg">去注册 ></a></span>
                </div>
                <div class="login-right-bottom">
                    <div class="input-phone">
                        <input type="text" placeholder="请输入手机号/邮箱">
                    </div>
                    <div class="input-pwd">
                         <input type="text" placeholder="请输入密码">
                    </div>
                    <p class="p1">
                        <span>忘记密码 ></span>
                        <span>邮箱或手机不能为空</span>
                    </p>
                    <button class="login-btn">登录</button>
                    <p class="p2">使用社交账号登录棒棒糖美食</p>
                    <div class="tx-xl">
                        <p class="p3">
                            <span></span>
                            <span>腾讯账号</span>
                        </p>   
                        <p class="p4">
                            <span></span>
                            <span>新浪微博</span>
                        </p>  
                    </div>  
                </div>
            </div>
        </div>
        <div class="bbt-info">
            <div class="bbt-info1">
                关于豆果&nbsp; 在豆果工作&nbsp; 意见反馈&nbsp; 友情链接&nbsp; 菜谱大全&nbsp; 品牌馆
            </div>
            <div class="bbt-info2">
                ©2009-2015 北京豆果信息技术有限公司 京ICP证111032号 京公网安备11010102001133号 京网文[2014]0774-174号
            </div> 
        </div>
    </div>
</div>
</template>
<script>
    export default{
        data(){
            return{

            }
        },
        methods: {
            reg(){
            this.$router.push('/reg')
          },
        }
    }
</script>
<style scoped>
    *{margin: 0;padding: 0}
    .container{
        width:100%;
        height:6000px;
        background:#f8f8f7;
    }
    .login-header{
        width: 100%;
        background: #fff;
        margin-bottom:50px;
    }
    .login-header .login-logo{
        width:940px;
        height:90px;
        margin:0 auto;
        position: relative;
        
    }
    .login-header .login-logo a img{
        width:180px;
        height:45px;
        position: absolute;
        top:20px;
        left:20px;
    }
    #login{
        width:1000px;
        margin:0 auto;
        display: flex;
    }
    #login .login-left{
        width:540px;
        margin-top:70px;
    }
    #login .login-left img{
        width:538px;
        height:362px; 
    }
    #login .login-right{
        width:400px;
        height:480px;
        background: #fff;
        border-radius: 5px;
    }  
    .login-right-top{
        height:57px;
        padding: 17px 20px;
        display: flex;
        justify-content:space-between;
        border-bottom: 1px solid #f8f8f7;
    }
    .login-right-bottom{
        width:312px;
        margin:0 auto;
    }
    .login-right-top .login1{
       color:#333;
       font-size: 18px; 
    }  
    .login-right-top .reg a{
        color:#3ea000;
        font-size: 16px;
        cursor: pointer;
    }
    .login-right input{
        width:312px;
        height:38px;
        border: 1px solid #deded3;
        border-radius: 2px;
        vertical-align: middle;
        font-size: 14px;
        color:#333;
        padding: 5px 0 5px 10px;
        margin-bottom:30px; 
    }
    .login-right-bottom .input-phone input{
        margin-top:40px;
    }  
    .login-right-bottom .p1{
       margin:-5px 0 20px;
    }
    .login-right-bottom .p1 span{
        color:#333;
        font-size: 14px;
        margin-right:20px;
        cursor: pointer;
    }
    .login-right-bottom .p1 span~span{
        color:red;
        font-size:14px;
    }
    .login-right-bottom .login-btn{
        width:310px;
        height:42px;
        background: #ffb31a;
        color:#fff;
        font-size: 14px;
        border:0;
        border-radius: 3px;
        outline: none;
    }
    .login-right-bottom .p2{
        color:#333;
        font-size:14px;
        margin:20px 0 15px;
    }
    .login-right-bottom .tx-xl {
        display: flex;
        padding:10px 0 6px;
        border-top:1px solid #dedede;
        border-bottom:1px solid #dedede;
    }
    .login-right-bottom .tx-xl .p3{
        display: flex;
        margin-right:40px;
    }
    .p3 span~span{
        color:#333;
        font-size: 12px; 
    }
    .login-right-bottom .tx-xl .p3 span:first-child {
        display: block;
        width:22px;
        height:22px;
        background-image: url("../../public/imgs/spit.png");
        background-position:0px 67px; 
        margin-right:10px;
    }
    .p4 span~span{
        color:#333;
        font-size: 12px; 
    }
    .login-right-bottom .tx-xl .p4 {
        display: flex;
        color:#333;
        font-size: 12px;
    }
    .login-right-bottom .tx-xl .p4 span:first-child {
        display: block;
        width:22px;
        height:22px;
        background-image: url("../../public/imgs/spit.png");
        background-position:-33px 67px; 
        margin-right:10px;
    }
    .bbt-info{
        width:1000px;
        margin:0 auto;
        text-align: center;
        font-size:12px;
    }
    .bbt-info .bbt-info1{
        color:#68553f;
        margin:40px 0 15px;
    }
    .bbt-info .bbt-info2{
        color:#999;
    }
</style>