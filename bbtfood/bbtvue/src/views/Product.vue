<template>
    <div>
      <!--引入头部  -->
      <my-header/>
      <div class="content">
        <div class="nav">
          <ul>
            <li><a class="active">川菜</a></li>
            <li><a >粤菜</a></li>
            <li><a>湘菜</a></li>
            <li><a>东北菜</a></li>
           </ul>
        </div>
        <h3 class="title">精选川菜菜谱</h3>
        <div class="main">
            <ul>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_9c3d37fb669d1bb7c7b1ec123cf26bdb.jpg" alt="">
                    <span>香酥鸡排</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_8527a8c7260679f0933c15ceddef6646.jpg" alt="">
                    <span>百合枸杞蒸南瓜</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li style="margin-right: 0;" @click="details">
                    <img class="md" src="../assets/product/400x266_8e438c06fb9cfd2ed98153306144812a.jpg" alt="">
                    <span>坚果酸奶挞</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_6613e3a4d68809ad54695a4f1958dece.jpg" alt="">
                    <span>健身食谱｜无花果火腿片色拉，吃出春天的气息</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                 <li @click="details">
                    <img class="md" src="../assets/product/400x266_21ea8a066566bd543286b727b2f1c7ae.jpg" alt="">
                    <span>鸡丝凉面</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li style="margin-right: 0;" @click="details">
                    <img class="md" src="../assets/product/400x266_dbc45752d3d60feaacac7d60a422f927.jpg" alt="">
                    <span>葱香芝士烤法棍</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_9f09c66f1a3343a046369448fc4d360c.jpg" alt="">
                    <span>冰镇梅粉圣女果</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                        </p>
                 </li>
                 <li @click="details">
                    <img class="md" src="../assets/product/400x266_78cbbe7a9111b43d81d04118ffadd4f3.jpg" alt="">
                    <span>【榨菜肉末蒸豆腐】</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li style="margin-right: 0;" @click="details">
                    <img class="md" src="../assets/product/400x266_1d93551e4d52196ca7b8c567c8cc3270.jpg" alt="">
                    <span>椰浆珍珠藜麦水果捞</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_397d431d88d30be859123145d3c0cd7c.jpg" alt="">
                    <span>牛腩炖萝卜</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_d7b03c409b73f787db7458951b566c59.jpg" alt="">
                    <span>红枣红糖年糕</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li style="margin-right: 0;" @click="details">
                    <img class="md" src="../assets/product/400x266_ff15b75502156f009f5217e355415b42.jpg" alt="">
                    <span>香烤多春鱼</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                 <li @click="details">
                    <img class="md" src="../assets/product/400x266_803dbb060ab52dce24b6c650d9ef4aac.jpg" alt="">
                    <span>手指饼干</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                     <img class="md" src="../assets/product/400x266_661babfb8bca4d425b9543942abd9201.jpg" alt="">
                    <span>快手早餐，香蕉饼</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                        </p>
                </li>
                <li style="margin-right: 0;" @click="details">
                    <img class="md" src="../assets/product/400x266_0b98d5215ac54682ad1ee5e8c75abf60.jpg" alt="">
                    <span>干贝蒸冬瓜球</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details"> 
                    <img class="md" src="../assets/product/400x266_068364b714c9b46597421e657a9b0674.jpg" alt="">
                    <span>榛果黑麦超酥曲奇 hello kitty：</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_f3ca13850068a1205ac46abbb287f08e.jpg" alt="">
                    <span>红萝卜莲藕排骨煲</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                 </li>
                <li style="margin-right: 0;" @click="details">
                    <img class="md" src="../assets/product/400x266_914a3bc33ca5460d97deaea00de40668.jpg" alt="">
                    <span>三蒸三烘健康零食红薯干</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_bdfe2c1e7b9f5ec3ef345e6b02e02898.jpg" alt="">
                    <span>玛格丽特饼干</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span>   
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_a008b086659fb672bb2f1c3593650c12.jpg" alt="">
                    <span>蜜汁照烧鸡腿饭</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li style="margin-right: 0;" @click="details">
                    <img class="md" src="../assets/product/400x266_816bcebbd3647ca9c1be792385fa8e7b.jpg" alt="">
                    <span>粗粮炒饭</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span>   
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_2538127ab1c0d7d5e49892e105c3f02a.jpg" alt="">
                    <span>椰蓉牛奶小方</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li @click="details">
                    <img class="md" src="../assets/product/400x266_ee05b06693e244d7a2458c83e31bfbd6.jpg" alt="">
                    <span>蒸鲈鱼</span>
                    <p>
                        <img class="ms" src="../assets/眼睛.png" alt="">
                        <span>321</span> 
                        <img class="ms" src="../assets/星星.png" alt="">
                        <span>59</span> 
                    </p>
                </li>
                <li style="margin-right: 0;" @click="details">
                    <img class="md" src="../assets/product/400x266_9c3d37fb669d1bb7c7b1ec123cf26bdb.jpg" alt="">
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
      <!-- 引入尾部 -->
      <my-footer/>
    </div>
</template>
<script>
export default {
    data() {
        return {
            
        }
    },
    methods:{
      details(){
              this.$router.push('/Details')
          }
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