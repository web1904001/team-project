<template>
<div id="app">
    <div class="reg-header">
        <div class="reg-logo">
            <img src="../assets/reg/logo.png" alt="" @click="index">
        </div>
    </div>
    <div class="reg-info">
        <div class="reg-info-top">
            <span class="s1">新用户注册</span>
            <span>已有账号，<a @click="login">直接登录></a></span>
        </div>
        <div calss="reg-info-bottom">
            <div class="regbox">
                <div class="regbox-item">
                    <input type="text" placeholder="请输入手机号" v-model="phone"> 
                    <span :class="spanClass">{{spanMsg}}</span>
                </div>
                <div class="ts">输入常用的手机号，便于登录和找回密码</div>
                <div class="regbox-item aaa" >
                    <input type="text" placeholder="请输入昵称" v-model="petname"> 
                    <span :class="spanClass1" >{{spanMsg1}}</span>
                </div>
                <div class="ts">5-16位由字母、数字、_或汉字组成喔</div>
                <div class="regbox-item bbb">
                    <input type="text" placeholder="请输入密码" v-model="password"> 
                    <span :class="spanClass2">{{spanMsg2}}</span>
                </div>
                <div class="ts">请输入8位以及以上，需要包含，数字字母的密码</div>

                <!-- <div class="regbox-item ccc">
                    <input  id="yanzheng" class="input1" type="text" placeholder="输入验证码" v-model="verification">
					<div id="checkCode" class="code"  onclick="createCode(4)"></div>
					<div><span onclick="createCode(4)">看不清换一张</span>
					<span class="s3" :class="spanClass3">{{spanMsg3}}</span>
					</div>
                </div> -->

				<div id="ss">
                <span class="s2">
                    <input type="checkbox" v-model="checkbox" @click="check">我已阅读并且同意<a href="">棒棒糖美食协议</a>
                </span>
                <button :class="btn" :disabled="btns">注册</button>
				</div>
            </div>
        </div>
    </div>
    <div class="foo">
            <p>关于棒棒糖 · 在棒棒糖工作 · 意见反馈 · 友情链接 · 菜谱大全 · 品牌馆</p>
            <p>©2009-2015 西安棒棒糖信息技术有限公司 西ICP证111032号 西公网安备11010102001133号 西网文[2014]0774-174号</p>
    </div>
</div>
</template>
<script>
    export default {
    data(){
        return {
         phone:"",
         spanClass:{
            vali_success:false,
            vali_fail:false
        },
        spanMsg:"",

        petname:'',
        spanClass1:{
            vali_success:false,
            vali_fail:false
        },
         spanMsg1:'',

        password:"",
        spanClass2:{
            vali_success:false,
            vali_fail:false
        },
        spanMsg2:'',
      //
        btn:{
            btn2:true,
            active:false
        },
        checkbox:false,
        btns:true,
        }
    },
    
    watch:{
        phone(){
            var reg=/^1[3-9]\d{9}$/;
            if(reg.test(this.phone)==true){
                this.spanMsg="手机号可用";
                this.spanClass={
                    vali_fail:false,
                    vali_success:true
                }
            }else{
                this.spanMsg="请输入手机号";
                this.spanClass={
                vali_fail:true,
                vali_success:false
            }
            }
        },
        petname(){
            var reg = /^[\u4e00-\u9fff\w]{5,16}$/;
            if(reg.test(this.petname)==true){
                this.spanMsg1="昵称格式正确";
                this.spanClass1={
                    vali_fail:false,
                    vali_success:true
                }
            }else{
                this.spanMsg1="请输入5-16位由字母、数字、_或汉字组成昵称";
                this.spanClass1={
                vali_fail:true,
                vali_success:false
            }
         }
        },
        password(){
            var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,30}$/;
            if(reg.test(this.password)==true){
                this.spanMsg2="密码格式正确";
                this.spanClass2={
                    vali_fail:false,
                    vali_success:true
                }
            }else{
                this.spanMsg2="密码不符合要求";
                this.spanClass2={
                vali_fail:true,
                vali_success:false
            }
          }
        }
    },
    methods:{
      index(){
              this.$router.push('/')
          },
      login(){
            this.$router.push('/login')
          },
      check(){
          if(this.checkbox == false){
              this.btns=false;
              this.btn={
                 btn2:false,
                 active:true
              }
          }else if(this.checkbox == true){
              this.btns=true;
              this.btn={
                 btn2:true,
                 active:false
              }

          }
      }    
    },
}
</script>
<style scoped>
#app{
    margin:0;
    padding:0;
    background: #f8f8f7;
    box-sizing: border-box;
    min-width:1000px ;
}
body a{
    text-decoration: none;
}
.reg-header{
    width: 100%;
    background: #fff;
    margin-bottom:40px;
}
.reg-header .reg-logo{
    width:940px;
    height:90px;
    margin:0 auto;
    position: relative;
    
}
.reg-header .reg-logo img{
    width:180px;
    height:45px;
    position: absolute;
    top:20px;
    left:20px;
    cursor: pointer;
}
.reg-info{
   width:940px;
   height:552px; 
   border-radius: 2px;
   background: #fff; 
   margin: 0 auto;
}
.reg-info .reg-info-top {
    width: 100%;
    height:59px;
    border-bottom: 1px solid #f8f8f7;
}
.reg-info .reg-info-top span{
    line-height: 59px;
    color:#333;
    font-size: 18px;

}
.reg-info .reg-info-top .s1{
    margin-left:25px;
}
.reg-info .reg-info-top span~span{
    float:right;
    font-size: 16px;
    margin-right:15px;
}
.reg-info .reg-info-top span~span a{
    color:#3ea000;
}
.regbox{
    width:610px;
    margin: 30px 0 0 320px;
}
 .regbox-item{
    width:610px;
    height:45px;
    position: relative;
}
.regbox-item input{
    width:300px;
    height:28px;
    border: 1px solid #deded3;
    border-radius: 2px;
    vertical-align: middle;
    font-size: 14px;
    color:#333;
    padding: 5px 0 5px 10px;
    margin-bottom:10px;
}
.regbox-item  span{
    color:#f00;
    font-size: 12px; 
    line-height: 45px;
    margin-left:20px;;

}

.regbox div.ts{
   color:#999;
   font-size: 12px;
   margin: 10px 0;
}
.regbox-item .input1{
   width:105px;
   height:22px; 
   border: 1px solid #deded3;
   border-radius: 2px;
   vertical-align: middle;
   font-size: 14px;
   color:#999;
   padding: 5px 0 5px 10px;
   float:left;
   
}
.regbox-item  button{
    width:132px;
    height:34px;
    margin-left:53px;
    margin-top:-9px;
    padding:4px 12px;
    background: #e6e6e6;
    font-size: 12px;
    color:#999;
    border:0;
    border-radius:2px;
}
 .s2{
     display: block;
    color:#999;
    font-size: 14px;
    margin-top:30px;
}
.regbox span a{
    color:#3ea000;
}
.btn2{
    width:310px;
    height:42px;
    color:#fff;
    text-align: center;
	border-radius: 2px;
    border:0;
    margin-top:20px;
    outline: none;
}
.active{
    width:310px;
    height:42px;
    color:#fff;
    text-align: center;
	border-radius: 2px;
    border:0;
    margin-top:20px;
    background: #288bc4;
    outline: none;
}
.code
{
    font-family:Arial;
    font-style:italic;
    color:blue !important;
    font-size:20px !important;
    border:0;
    padding:5px 0px;
    letter-spacing:3px;
    font-weight:bolder;            
    float:left;           
    cursor:pointer;
    width:105px;
    height:23px;
    line-height:23px;
    text-align:center;
    vertical-align:middle;
    background-color:#D8B7E3;
 }
span{
    text-decoration:none;
    font-size:12px;
    color:#288bc4;
    padding-left:0;
	cursor:pointer;
}
.foo{
    width: 940px;
    height: 150px;
    margin: 0 auto;
    text-align: center;
    margin-top: 40px;
}
.foo p{
    font-size: 12px;
    color: #999;
}
</style>
 