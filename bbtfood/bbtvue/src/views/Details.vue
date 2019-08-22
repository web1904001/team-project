<template>
  <div>
    <my-header/>
    <div id="details">
        <div class="details-content">

            <div class="details-content-left">
                <a class="ft-img">
                <img :src="plist2[i].lg" alt="">    
                </a>
                <div class="ft-info">
                    <h2>口袋免捏饭团 | 元气早餐 </h2>
                    <span class="ft-jp">精品</span>
                    <div class="ft-like">   
                        <p><span>74607</span>浏览</p>
                        <p><span>2410</span>收藏</p>
                        <button>收藏</button>
                </div>
            </div>
                <div class="metarial">
                    <h3>食材清单</h3>
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <span>【金枪鱼饭团】</span>
                                </td>
                                <td>
                                    <span>新鲜米饭</span>
                                    <span>240g</span>
                                </td>
                            </tr>
                            <tr>
                                <td> 
                                    <span>大海苔</span>
                                    <span>2张</span>
                                </td>
                                <td>
                                    <span>金枪鱼</span>
                                    <span>100g</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>水果青瓜</span>
                                    <span>1根</span></td>
                                <td>
                                    <span>玉米粒</span>
                                    <span>50g</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>蛋黄酱</span>
                                    <span>30g</span>
                                </td>
                                <td>
                                    <span>黑胡椒粉</span>
                                    <span>1g</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="cook">
                    <h3>烹饪步骤</h3>
                    <div class="cook-bz">
                       <a href="" class="cook-img"><img :src="plist4.lid" alt=""></a>
                        <div class="cook-info">
                            <h2 class="info-p1">步骤1</h2>
                            <p class="info-p2">一碗油润的葱油拌面的关键是葱炸的酥脆</p>
                        </div>
                    </div>
                    <div class="cook-bz">
                        <a href="" class="cook-img"><img src="../../public/imgs/details/md/01.jpg" alt=""></a>
                        <div class="cook-info">
                            <h2 class="info-p1">步骤1</h2>
                            <p class="info-p2">一碗油润的葱油拌面的关键是葱炸的酥脆</p>
                        </div>
                    </div>
                    <div class="cook-bz">
                        <a href="" class="cook-img"><img src="../../public/imgs/details/md/01.jpg" alt=""></a>
                        <div class="cook-info">
                            <h2 class="info-p1">步骤1</h2>
                            <p class="info-p2">一碗油润的葱油拌面的关键是葱炸的酥脆</p>
                        </div>
                    </div>
                    <div class="cook-bz">
                         <a href="" class="cook-img"><img src="../../public/imgs/details/md/01.jpg" alt=""></a>
                        <div class="cook-info">
                            <h2 class="info-p1">步骤1</h2>
                            <p class="info-p2">一碗油润的葱油拌面的关键是葱炸的酥脆</p>
                        </div>
                    </div>
                </div>
                <div class="ft-xts">
                    <h3>小贴士</h3>
                    <p>葱油拌面的酱汁葱味浓厚，剩下的酱汁可存放于冰箱中，后续作为调味料会很美味。 热量：404kcal | 碳水化合物：57g | 蛋白质：14g | 脂肪：15g | 饱和脂肪：1g | 钠：1780mg | 钾：142mg | 膳食纤维：5g | 糖：11g | 维生素A：7.5% | 维生素C：8.6% | 钙：3.1% | 铁：5.5% 注：1茶匙=5g , 1汤匙=15g，做菜好吃都有技巧，我的每道菜都有小妙招，大家搜索“豆果”可以直接查看我的菜谱！</p>
                </div>
            </div>
            <div class="details-content-right">
                <a href="">
                    <img src="../../public/imgs/details/sm/12.jpg" alt="">
                </a>
                <a href="">
                    <img src="../../public/imgs/details/sm/13.jpg" alt="">
                </a>
                <a href="">
                    <img src="../../public/imgs/details/sm/14.jpg" alt="">
                </a>
                <a href="">
                    <img src="../../public/imgs/details/md/02.png" alt="">
                </a>                
            </div>
        </div>
     </div>
     <my-footer/>
    </div>
</template>
<script>
   export default{
    data(){
        return{
            plist1:[],
            plist2:[{lg:""}],
            plist3:[],
            plist4:[],
            i:0,
        }
    },
    props:["lid"],
    computed: {
    },
    created() {
      this.load();
    },
    watch: {
      lid() {
        this.load();
      }
    },
    methods: {
      load() {
        // if(this.lid){
        this.axios.get(
          "http://localhost:5050/details",
          {
            //   params:{
            //       lid:this.lid
            //   }
          }
        ).then(result => {
          console.log(result.data);
          var {plist1,plist2,plist3,plist4}=result.data
          this.plist1=plist1;
          this.plist2=plist2;
          this.plist3=plist3;
          this.plist4=plist4;   
        }).catch(err => {
          console.log(err)
        })
        }
      },    
    }

</script>
<style scoped>
    body{
    padding:0;
    margin:0;
    min-width: 1000px;
    box-sizing: border-box;
}
#details{
    width: 1000px;
    margin:0 auto;
    margin-top:20px;
}
.details-content{
    display:flex;
}
.details-content-left{
    width:690px;
}
.details-content-left .ft-img img{
    border-radius: 10px;
}
.details-content-left  .ft-info h2{
    font-size:22px;
    color:#333;
    margin-bottom:5px; 
}
.details-content-left  .ft-info .ft-jp{
    display: block;
    width:42px;
    height: 22px;
    border-radius: 3px;
    margin-bottom: 25px;
    background: #ffb31a;
    text-align: center;
    line-height: 22px;
    color:#fff;
    font-size:14px;
}
.details-content-left  .ft-info .ft-like{
    display: flex;
    position: relative;
}
.details-content-left  .ft-info .ft-like button{
    width:75px;
    height:30px;
    border-radius: 3px;
    margin-bottom: 20px;
    background: #ffb31a;
    text-align: center;
    line-height: 22px;
    color:#fff;
    font-size:14px;
    border: 0;
    position: absolute;
    right:0px;
    outline: none;
}
.details-content-left  .ft-info .ft-like p{
    margin: 0;
    padding-right:40px;
    font-size: 14px;
}
.details-content-left  .ft-info .ft-like p span{
    color:#ffb31a;
    font-size: 24px;
    margin-right:3px; 
}
.details-content-left .metarial h3{
    color:#333;
}
.details-content-left .metarial table{
    width:690px;
   margin-bottom: 30px;
}
.details-content-left .metarial tr{
    display: block;
    width:690px;
    height:55px;
    border-bottom: 1px solid #e5e5e5;
    background: #e4ecf1c7;
}
.details-content-left .metarial tr span:first-child{
    float:left;
    margin-left:15px;
}
.details-content-left .metarial tr:first-child{
    border-radius: 7px 5px 0 0 ;
}
.details-content-left .metarial tr:last-child{
    border-bottom: 0;
    border-radius: 0 0 7px 7px  ;
}
.details-content-left .metarial tr td{
    width:344px;
    height:54px;
    padding: 0;
    margin:0 0 0 5px;
}
.details-content-left .metarial tr td~td{
   border-left:1px solid #e5e5e5;
}
.details-content-left .metarial tr td span{
    float: right;
    margin: 3px 15px 0 0 ;
    color:#333;
    font-size: 15px;
}
.details-content-left .cook h3{
    color:#333;
}
.details-content-left .cook .cook-bz{
    display: flex;
    margin-bottom: 35px;
}
.details-content-left .cook .cook-bz .cook-img img{
    border-radius: 5px;
    margin-right:10px;
}
.details-content-left .cook .cook-bz .cook-info .info-p1{
    margin-top:5px;
    color:#333;
    font-size: 15px;
}
.details-content-left .cook .cook-bz .cook-info .info-p2{
    margin-top:-5px;
    
}
.details-content-left {
   color:#333;
   
}
.details-content-left .ft-xts p{
   font-size:15px;
    line-height: 27px;
}
.details-content-right a img{
    margin:0 0 20px 30px;
    border-radius: 5px; 
}
.details-content-right a img:last-child{
    width:280px;
}
</style>