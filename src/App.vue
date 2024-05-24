<template>
  <div id="app">
    <AppNavbar />
    <!-- <div class="bg-container"><img alt="my bg" src="@/assets/bg1.jpg"></div> -->
    <router-view/>
  </div>  
</template>


<script>
import AppNavbar from '@/components/AppNavbar.vue'

export default {
  name: 'App',
  components: {
    AppNavbar
  }
}
</script>


<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}


/* .bg-container {
  background-image: url(@/assets/bg1.jpg);
  background-size: cover;
  background-position: center;
  height: 300px;
} */

/* .header-banner {
    position: relative;
    z-index: 0;
    width: 100%;
    height: 100%;
    background: url("@/assets/bg1.jpg") no-repeat center/cover;
} */

</style>
