<template>
  <div class="app">

<router-view></router-view>
      <app-header class="header">

      </app-header>

      <div class="main">
        <post-list></post-list>
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
}
</script>
<style lang="sass">
  @import "styles/index.sass"
</style>
