<template>
<h1 style="text-align: center">list op posts</h1>
  <post-item></post-item>
  <post-item></post-item>

</template>

<script>
import "@/components/PostItem"
export default {
  name: "post-list",
  components: {
    props: {
      posts: {
        type: Array,
        required: true,
      }
    }
  }

}
</script>

<style lang="sass">
@import "../styles/index.sass"
</style>