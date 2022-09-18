<template>
  <div class="app">

<router-view></router-view>
      <app-header class="header">

      </app-header>

      <div class="main">
        <post-list v-if="$route.path.includes('/')"></post-list>
        <post v-if="$route.path == '/post'"></post>
      </div>
      <app-footer>

      </app-footer>

  </div>
</template>
<script>
import "@/components/AppHeader"
import "@/components/AppFooter"
import "@/components/PostLIst"


export default {
  components: {


  },

  mounted() {

  }
}
</script>
<style lang="sass">
  @import "styles/index.sass"
</style>
