import {createRouter, createWebHashHistory} from "vue-router"
import post from "@/components/post.vue";
import app from "@/App";

export default createRouter({
    history: createWebHashHistory(),
    routes: [
        {path: '/',  alias: '/'},
        {path: '/post', component: post, alias: '/post'}
        ]
})
