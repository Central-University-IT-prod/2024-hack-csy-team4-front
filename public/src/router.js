import { createRouter, createWebHistory } from 'vue-router'
import App from './App.vue'

const routes = [
  { path: '/', component: App },
  { path: '/login', component: App },
  { path: '/stand-a', component: App },
  { path: '/stand-b', component: App },
  { path: '/stand-c', component: App },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

export default router