import Vue from 'vue'
import Router from 'vue-router'
import Login from '@/pages/Login'
import Home from '@/pages/Home'
import MainPage from '@/pages/MainPage'
import AddDepart from '@/pages/AddDepart'
import DepartList from '@/pages/DepartList'
import AddEmployee from '@/pages/AddEmployee'
import EmployeeList from '@/pages/EmployeeList'
import PersonFile from '@/pages/PersonFile'
import QueryDepart from '@/pages/QueryDepart'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Login',
      component: Login
    },
    {
      path: '/home',
      name: 'Home',
      component: Home,
      children:[
        {
          path: '/home/mainpage',
          name: 'MainPage',
          component: MainPage
        },
        {
          path: '/home/adddepart',
          name: 'AddDepart',
          component: AddDepart
        },
        {
          path: '/home/departlist',
          name: 'DepartList',
          component: DepartList
        },
        {
          path: '/home/addemployee',
          name: 'AddEmployee',
          component: AddEmployee
        },
        {
          path: '/home/employeelist',
          name: 'EmployeeList',
          component: EmployeeList
        },
        {
          path: '/home/personfile',
          name: 'PersonFile',
          component: PersonFile
        },
        {
          path: '/home/querydepart',
          name: 'QueryDepart',
          component: QueryDepart
        }
      ]
    }
  ],
  mode: "history"
})
