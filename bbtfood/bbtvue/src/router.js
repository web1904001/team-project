import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Details from './views/Details.vue'
import Product from './views/Product.vue'
import Reg from './views/Reg.vue'
import Login from './views/Login.vue'
import Collect from './views/Collect.vue'
import Cartoon from './views/Cartoon.vue'
import Shoop from './views/Shoop.vue'
import Note from './views/Note.vue'
import Header from './components/Header.vue'
import Footer from './components/Footer.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path:"/",
      component:Index,
    },
    {
      path: '/Index',
      name: 'Index',
      component: Index
    },
    {
      path: '/Shoop',
      name: 'Shoop',
      component:Shoop
    },
    {
      path: '/Note',
      name: 'Note',
      component:Note
    },
    {
      path: '/Details/:tid',
      name: 'Details',
      component: Details,
      props:true
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
    {
      path: '/Login',
      name: 'Login',
      component: Login
    },
  ]
})
