<template>
    <div>
    <my-header/>
    <div class="collect">
        <div class="collect-info">
            <div class="collect-info-left">
                <a href="javascript:;" onfocus="this.blur();" class="sel-img">
                    <img src="../../public/imgs/collect/02.png" alt="">
                </a>
                <div class="sel-info">
                    <h3>lyhlyh123</h3>
                    <img src="../../public/imgs/collect/01.png" alt="">
                    <p>经验值：35</p>
                </div>
                <div class="collect-info-right">
                    <div class="right">
                        <a href="javascript:;" onfocus="this.blur();">
                            <p>0</p>
                            <p>关注</p>
                        </a>
                    </div>
                    <div class="right">
                        <a href="javascript:;" onfocus="this.blur();">
                            <p>0</p>
                            <p>粉丝</p>
                        </a>
                    </div>
                    <div class="right">
                        <a href="javascript:;" onfocus="this.blur();">
                            <p>0</p>
                            <p>菜谱</p>
                        </a>
                    </div>
                    <div class="right">
                        <a href="javascript:;" onfocus="this.blur();">
                            <p>0</p>
                            <p>笔记</p>
                        </a>
                     </div>
                </div>
            </div>
        </div>
        <div class="collect-list">
            <a href="javascript:;" onfocus="this.blur();">概览</a>
            <a href="javascript:;" onfocus="this.blur();">菜谱</a>
            <a href="javascript:;" onfocus="this.blur();">菜单</a>
            <a href="javascript:;" onfocus="this.blur();">笔记</a>
            <a href="javascript:;" onfocus="this.blur();">收藏</a>
            <a href="javascript:;" onfocus="this.blur();">美食日记</a>
        </div>
        <div class="collect-sc">
            <a href="javascript:;" onfocus="this.blur();">收藏的菜谱</a>
            <a href="javascript:;" onfocus="this.blur();">收藏的菜单</a>
            <a href="javascript:;" onfocus="this.blur();">收藏的笔记</a>
        </div>
        <div class="collect-imgs">
            <div class="img1">
                <a href="javascript:;" onfocus="this.blur();">
                    <img src="../../public/imgs/collect/03.png" alt="">
                </a>
                <a href="javascript:;" onfocus="this.blur();" class="aname">葱油拌面 | 上海风味快手美食</a>
                <div class="img1-info">
                    <p class="p1">
                        <img src="../../public/imgs/collect/06.png" alt="">
                        <span>14695</span>
                    </p>
                    <p calss="p2">
                        <img src="../../public/imgs/collect/07.png" alt="">
                        <span>155</span>
                    </p>
                </div>
            </div>
            <div class="img1">
                <a href="javascript:;" onfocus="this.blur();">
                    <img src="../../public/imgs/collect/04.jpeg" alt="">
                </a>
                <a href="javascript:;" onfocus="this.blur();" class="aname">葱油拌面 | 上海风味快手美食</a>
                <div class="img1-info">
                    <p class="p1">
                        <img src="../../public/imgs/collect/06.png" alt="">
                        <span>14695</span>
                    </p>
                    <p calss="p2">
                        <img src="../../public/imgs/collect/07.png" alt="">
                        <span>155</span>
                    </p>
                </div>
            </div>
            <div class="img1">
                <a href="javascript:;" onfocus="this.blur();">
                    <img src="../../public/imgs/collect/05.jpg" alt="">
                </a>
                <a href="javascript:;" onfocus="this.blur();" class="aname">葱油拌面 | 上海风味快手美食</a>
                <div class="img1-info">
                    <p class="p1">
                        <img src="../../public/imgs/collect/06.png" alt="">
                        <span>14695</span>
                    </p>
                    <p calss="p2">
                        <img src="../../public/imgs/collect/07.png" alt="">
                        <span>155</span>
                    </p>
                </div>
            </div>
            
                
        </div>
        <div class="location">
            <p>你当前的位置:棒棒糖美食>个人中心>收藏的菜谱</p>
        </div>
    </div>
    <my-footer/>
</div>
</template>
<script>

</script>
<style scoped>
    *{
    margin:0;
    padding:0;
    box-sizing: border-box; 
}
body{
   /*min-width: 1000px;*/
   background: #fff;
}
.collect a{
    text-decoration: none;
}
.collect li{
    list-style: none;
}
.collect a:hover{
    color:#ffb31a;
}
.collect{
    width:1000px;
    margin:0 auto;
}
.collect-info{
    position: relative;
}
.collect-info .collect-info-left{
    height:160px;
    margin:40px 0 20px; 
    display:flex;
}
.collect-info .collect-info-left .sel-info {
    display: block;
    color:#333;
    margin:10px 0 0 10px;
}
.collect-info .collect-info-left .sel-info img{
    margin:8px 0  8px;
}
.collect-info .collect-info-left .sel-info p{
    color:rgb(119, 117, 117);
    font-size: 12px;
}
.collect-info .collect-info-left .sel-img {
    width:120px;
    height:120px;
}
.collect-info .collect-info-right{
    display: flex;
    width:320px;
    height:62px;
    margin-top:10px;
    padding: 15px 0;
    background:#e4ecf1c7;
    position: absolute;
    right: 0;
    text-align: center;
    border-radius: 3px;
}
.collect-info .collect-info-right .right {
    display: block;
    width:80px;
    height:35px;
    border-right:1px solid #ccc6c6;
}

.collect-info .collect-info-right .right:last-child{
    border-right:0;
}
.collect-info .collect-info-right .right a p{
    color:#333;
    font-size:14px; 
}
.collect-list{
    width:376px;
    height:42px;
    display: flex;
    margin-bottom: 30px;
}
.collect-list a{
   display: block;
   width:28px;
   height:42px;
   margin-right:30px;
   color:#333;
   font-size: 14px;
}
.collect-list a:last-child{
    width: 56px;
}

.collect-sc{
    display: flex;
    
}
.collect-sc a{
    display: block;
   width:90px;
   height:17px;
   margin-right:20px;
   color:#333;
   font-size: 14px;
   border-right:1px solid #ccc6c6;
   line-height: 17px;
}

.collect-sc a:last-child{
    border-right:0;
}
.collect-imgs{
    display: flex;
    flex-wrap: wrap;
}
.collect-imgs .img1 a img{
    width:306px;
    height:170px;
    margin-top:25px;
    border-radius: 5px;
}
.collect-imgs .img1 .aname{
    display: inline-block;
    color:#333;
    font-size:15px;
    margin-top:5px;
}
.collect-imgs .img1 .aname:hover{
    color:#ffb31a;  
}
.collect-imgs .img1 .img1-info {
    display: flex;
    width:150px;
    height:30px;
}
.collect-imgs .img1 .img1-info .p1 img {
   width:17px;
   height:20px;
   margin-bottom:-5px;
}
.collect-imgs .img1 .img1-info span{
    color: #333;
    line-height: 30px;
    margin:0 15px 0 2px;
}
.collect .location p{
    color:#333;
    font-size:13px; 
    /* position: absolute; */
    margin-top:450px;
}
.img1{
    width:306px;
    margin:0 13.6666666px;
}

</style>
