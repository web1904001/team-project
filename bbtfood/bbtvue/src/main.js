import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
import Header from './components/Header'
import Footer from './components/Footer'
import VueAwesomeSwiper from 'vue-awesome-swiper' //引入轮播图组件
import 'swiper/dist/css/swiper.css'     //引入轮播图css

Vue.component("my-header",Header);
Vue.component("my-footer",Footer);
Vue.use(VueAwesomeSwiper, /* { default global options } */)//引入轮播图组件
//将axios对象强行添加到Vue类型的原型对象中
Vue.prototype.axios=axios;
Vue.prototype.qs=qs;
//结果:
//在所有组件中都可以用this.axios.get()发送请求
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
