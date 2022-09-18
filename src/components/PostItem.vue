<template>
<div class="post">
  <img  class="post__img" src="https://via.placeholder.com/300" alt="">
  <div class="post__text">
    <h1 class="post__name">Test Post</h1>
    <p class="post__body">dfdsfdef</p>
    <div class="post__btns">

     <router-link to="#/post">
     </router-link> <app-button class="post_btn" >view</app-button>

    </div>
  </div>
</div>
</template>

<script>
export default {
  name: "post-item",
  components: {}

}
</script>

<style lang="sass">
@import "../styles/index.sass"
</style>