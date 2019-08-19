<template>
    <div>
       <div class="container">
           <div class="footer">
               <div class="left">
                   <img src="../../public/imgs/logo.png" alt="">
                   <h3>豆果美食，中文美食菜谱分享网站。</h3>
                   <p><span>1,000,000</span>道菜谱，<span>15,625,000</span>条美食日记，<span>50,000,000</span>美食达人，每天都有新分享。</p>
               </div>
               <div class="right">
                    <h3>扫二维码，添加棒棒糖美食小哥哥、小姐姐：</h3>
                    <div>
                       <img src="../../public/imgs/app.png" alt="">
                       <p>小哥哥</p>
                    </div>
                     <div>
                       <img src="../../public/imgs/app.png" alt="">
                       <p>公众号</p>
                    </div>
                    <div>
                       <img src="../../public/imgs/app.png" alt="">
                       <p>小程序</p>
                    </div>
               </div>
           </div>
           <div class="btm">
                <p>关于棒棒糖 · 在棒棒糖工作 · 意见反馈 · 友情链接 · 菜谱大全</p>
                <p>©2019 西安棒棒糖信息技术有限公司 西ICP证111032号   西公网安备 11010502038268号   西网文【2017】6954-770号 食品流通许可证SP1101061510252413</p>
                <p>广播电视节目制作经营许可证（西）字第11624号</p>
            </div>
       </div> 
    </div>
</template>
<script>

</script>
<style scoped>
p{margin:0;padding:0;}
.container{
    margin-top: 20px;
    width:100%;
    height:188px;
    background: #f2f2f2;
}
.footer{
    width:1000px;
    height:188px;
    margin: 0 auto;
}
.footer img{
    width: 200px;
    height: 50px;
    padding-top: 25px;
}
.left{
    width:690px;
    float: left;
}
.left p span{
    font-family: Georgia,"Times New Roman",Times,serif;
    font-size: 24px;
    color: #84b92c;
}
.left h3{
    color: #999;
    font-size: 14px;
}
.left p{
    font-size:13px;
    color: #999;
}
.right{
    width:310px;
    float: left;
}
.right h3{
    padding-top:10px;
    color: #999;
    font-size: 14px;
}
.right img{
    width: 92px;
    height: 92px;
    padding:0 10px 0 0;
}
.right div{
    float: left;
}
.right div p{
    margin-top: 5px;
    color: #999;
    font-size: 14px;
    width: 92px;
    text-align: center;
}
.btm{
    width: 1000px;
    margin: 0 auto;
    margin-top: 30px;
    margin-bottom: 20px;
}
.btm p{
    color: #6b553f;
    font-size: 12px;
    text-align: center;
    padding: 5px 0;
}
</style>