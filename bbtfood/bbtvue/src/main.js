import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import Header from './components/Header'
import Footer from './components/Footer'
import VueAwesomeSwiper from 'vue-awesome-swiper' //引入轮播图组件
import 'swiper/dist/css/swiper.css'     //引入轮播图css

Vue.component("my-header",Header);
Vue.component("my-footer",Footer);
Vue.use(VueAwesomeSwiper, /* { default global options } */)//引入轮播图组件

Vue.prototype.axios=axios;
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
