import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import Details from './views/Details'
import NotFound from './views/NotFound'
import Products from './views/Products'
import MyHeader from './components/MyHeader'
import Login from './views/Login'

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/", component:Login},
    //{path:"/", component:MyHeader},
    // {path:"/", component:Index},
    {path:"/details/:lid", component: Details, props:true},
    {path:"/products/:kw", component:Products, props:true},
    {path:"*", component:NotFound}
  ]
})
