<template>
  <div>
    <my-header/>
    <!-- 轮播图 -->
    <p id="container">
     <swiper :options="swiperOption" ref="mySwiper">
      <swiper-slide class="swiper-slide games">
       <img src="../assets/slider-1.jpg" alt="">
      </swiper-slide>
      <swiper-slide class="swiper-slide games">
       <img src="../assets/slider-2.jpg" alt="">
      </swiper-slide>
      <swiper-slide class="swiper-slide games">       
       <img src="../assets/slider-3.jpg" alt="">       
      </swiper-slide>       
      <swiper-slide class="swiper-slide games">       
       <img src="../assets/slider-4.jpg" alt="">       
      </swiper-slide> 
       <swiper-slide class="swiper-slide games">       
       <img src="../assets/slider-5.jpg" alt="">       
      </swiper-slide>         
      <p class="swiper-pagination" slot="pagination"></p>       
      <p class="swiper-button-prev" slot="button-prev"></p>       
      <p class="swiper-button-next" slot="button-next"></p>       
     </swiper>           
    </p>    
  <!-- 主体页面 -->
  <div class="main">
    <h3>每日精选菜谱
      <a class="gd" href="javascript:;" onfocus="this.blur();">更多&gt;</a>
    </h3>
    <ul class="recipe-list">
        <li class="item" v-for="(p,i) of list" :key="i">
          <router-link :to="`details/${p.tid}`">
            <img :src="p.sm" class="active">
            <router-link class="name" to="/" v-text="p.product"></router-link>
          </router-link>
        </li>
    </ul>
    <h3>笔记
      <a class="gd" href="javascript:;" onfocus="this.blur();">更多&gt;</a>
    </h3>
    <ul class="recipe-list">
        <li class="item" v-for="(p,i) of list" :key="i">
            <router-link :to="`details/${p.tid}`">
              <img :src="p.sm" class="active">
              <router-link class="name" to="/" v-text="p.product"></router-link>
            </router-link>
          </li>
    </ul>
    <h3></h3>
  </div>
  <my-footer/>
</div>
</template>      
<script>        
    export default {
    name: 'coverflow',
    data() {
      return {
        list: [],
        swiperOption: {
          autoplay: {
            disableOnInteraction: false, //用户操作后是否禁止自动循环
            delay: 3000 //自动循环时间
          }, //可选选项，自动滑动
          speed: 2000, //切换速度，即slider自动滑动开始到结束的时间（单位ms）
          loop: true, //循环切换
          // 渐隐式轮播
          effect: 'fade',
          fadeEffect: {
            crossFade: true,
          },
          //  grabCursor: true, //设置为true时，鼠标覆盖Swiper时指针会变成手掌形状，拖动时指针会变成抓手形状
          // setWrapperSize: true, //Swiper使用flexbox布局(display: flex)，开启这个设定会在Wrapper上添加等于slides相加的宽或高，在对flexbox布局的支持不是很好的浏览器中可能需要用到。    
          autoHeight: true,   //自动高度。设置为true时，wrapper和container会随着当前slide的高度而发生变化。   
          scrollbar: '.swiper-scrollbar',
          mousewheelControl: true, //设置为true时，能使用鼠标滚轮控制slide滑动
          observeParents: true, //当改变swiper的样式（例如隐藏/显示）或者修改swiper的子元素时，自动初始化swiper  
          pagination: {
            el: '.swiper-pagination',
            // type : 'progressbar', //分页器形状
            clickable: true, //点击分页器的指示点分页器会控制Swiper切换
          },
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
          id:``
        },
      }
    },
    computed: {
      swiper() {
        return this.$refs.mySwiper.swiper
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
        let arr = []
        this.axios.get(
          "http://localhost:5050/index",
        ).then(res => {
          console.log(res);
          this.list = res.data;
        }).catch(err => {
          console.log(err)
        })
      }
    }
  }       
</script>
   <style scoped>    
   /*轮播图样式  */
   a{text-decoration:none;}
   h3,ul,li,p{margin:0;padding:0;border:0;outline:0;}
   img {      
    width: 100%;       
    height: auto;     
   }
  .swiper-button-prev,.swiper-button-next{
     width:24px;
     height:24px;
   }
   .swiper-button-prev{
     left: 30px;
      right: auto;
   }
   .swiper-button-next{
     right: 30px;
     left: auto;
     }
   /* 主体样式 */
   .main{
     width: 1000px;
     margin: 0 auto;
   }
   .main h3{
    font-size: 20px;
    color: #333;
    font-weight: bold;
    margin-top: 40px;
    line-height: 20px;
   }
   .main .gd{
    font-size: 13px;
    color: #256DC6;
    float: right;
    height: 20px;
    line-height: 20px;
    font-weight: normal;
   }
   .recipe-list{
     width:1000px;
     height:590px;
   }
   .recipe-list .item{
     width: 220px;
     height: 270px;
     margin: 25px 40px 0 0;
     display: inline-block;
   }
   .recipe-list .item:nth-child(4),.recipe-list .item:nth-child(8){
     margin-right: 0;
   }
   .recipe-list .active:hover{
     box-shadow: 0 0 40px #ccc;
     transform: scale(1.1);
   }
   .recipe-list .active{
     width: 220px;
     height: 220px;
     display: block;
     overflow: hidden;
     position: relative;
     cursor: pointer;
     border-radius: 8px;
   }
   .recipe-list img{
     width: 220px;
     height: 220px;
   }
   .recipe-list .name{
     display: block;
     width: 220px;
     height: 50px;
     line-height: 50px;
     font-size: 15px;
     color: #333;
     text-overflow: ellipsis;
     white-space: nowrap;
     overflow: hidden;
   }
   .recipe-list .name:hover{
     color: #ffaa00;
   }
  </style>