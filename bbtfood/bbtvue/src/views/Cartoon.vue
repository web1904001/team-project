<template>
   <div>
   <my-header/>
      <div class="main">
          <div  class="left">
             <ul class="top">
               <li>
                 <img src="../assets/cart2_1.jpg" alt="">
                 <span>美味的夜宵</span>
               </li>
               <li>
                 <img src="../assets/cart2_2.jpg" alt="">
                 <span>绿色的早餐</span>
               </li>
               <li>
                 <img src="../assets/cart2_3.jpg" alt="">
                 <span>好吃的面</span>
               </li>
               <li>
                 <img src="../assets/cart2_4.jpg" alt="">
                 <span>汤圆-夜宵</span>
               </li>
               <li>
                 <img src="../assets/cart2_5.jpg" alt="">
                 <span>暖暖的晚餐</span>
               </li>
               <li>
                 <img src="../assets/cart2_6.jpg" alt="">
                 <span>午饭的诱惑</span>
               </li>
            </ul>

            <ul class="buttom">
               <li>
                 <img src="../assets/cart2_19.jpg" alt="">
                 <span>一月小寒&大寒</span>
               </li>
               <li>
                 <img src="../assets/cart2_20.jpg" alt="">
                 <span>二月立春&雨水</span>
               </li>
               <li>
                 <img src="../assets/cart2_21.jpg" alt="">
                 <span>三月春风&惊蛰</span>
               </li>
               <li>
                 <img src="../assets/cart2_10.jpg" alt="">
                 <span>四月谷雨&清明</span>
               </li>
               <li>
                 <img src="../assets/cart2_11.jpg" alt="">
                 <span>五月立夏&小满</span>
               </li>
               <li>
                 <img src="../assets/cart2_12.jpg" alt="">
                 <span>六月芒种&夏至</span>
               </li>
               <li>
                 <img src="../assets/cart2_13.jpg" alt="">
                 <span>七月小暑&大暑</span>
               </li>
               <li>
                 <img src="../assets/cart2_14.jpg" alt="">
                 <span>八月立秋&处暑</span>
               </li>
               <li>
                 <img src="../assets/cart2_15.jpg" alt="">
                 <span>九月白露&秋分</span>
               </li>
               <li>
                 <img src="../assets/cart2_16.jpg" alt="">
                 <span>十月寒露&霜降</span>
               </li>
               <li>
                 <img src="../assets/cart2_17.jpg" alt="">
                 <span>十一月立冬&小雪</span>
               </li>
               <li>
                 <img src="../assets/cart2_18.jpg" alt="">
                 <span>十二月冬至&大雪</span>
               </li>
            </ul>
          </div>
          <div class="right">
              <div class="game-tit">小游戏</div>
              <div class="mini-game">
                  <ul>
                      <li class="game">厨房连连看</li>
                      <li class="game">可爱宝贝爱厨房</li>
                      <li class="game">厨房清理</li>
                  </ul>
              </div>
          </div>
      </div>
      <my-footer/>
  </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
  ul,li{list-style: none;margin: 0;padding: 0;}
  .main{
      width:1000px;
      height: 3400px;
      margin:0 auto;
      margin-top: 10px;
      color: #333;
      font: 12px Tahoma,Geneva,"Microsoft Yahei";
  }
  .left{
      width:690px;
      float: left;
  }
  .left ul li{
      float: left;
  }
  .left span{
     display:block;
     font-size: 16px;
    color: #333;
    text-align: center;
    margin-top: 10px;
   }
   .left .top img{
      width:340px;
      height:475px;
   }
   .left .buttom img{
      width:340px;
      height:280px;
   }
   .left ul li{
      cursor: pointer;
   }
   .left ul li span:hover{
        color:#FFB31A;
   }


  .right{
      width:280px;
      float: right;
      margin-top: 10px;
  }
  .game-tit{
    font-size: 15px;
  }
  .mini-game ul li{
      padding: 5px 0;
      font-size: 13px;
  }
  .mini-game ul li:hover{
      color:#FFB31A;
      cursor: pointer;
  }
</style>

