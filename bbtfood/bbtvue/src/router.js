import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Details from './views/Details.vue'
import Product from './views/Product.vue'
import Reg from './views/Reg.vue'
import Collect from './views/Collect.vue'
import Cartoon from './views/Cartoon.vue'
import Header from './components/Header.vue'
import Footer from './components/Footer.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path:"/",
      component:Index
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    },
    {
      path: '/Details',
      name: 'Details',
      component: Details
    },
    {
      path: '/Product',
      name: 'Product',
      component: Product
    },
    {
      path: '/Reg',
      name: 'Reg',
      component: Reg
    },
    {
      path: '/Collect',
      name: 'Collect',
      component: Collect
    },
    {
      path: '/Cartoon',
      name: 'Cartoon',
      component: Cartoon
    },
  ]
})
