<template>
  <div id="app">
    <body>
      
      <header> 
        <div id="nav">
          <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
          <router-link v-bind:to="{ name: 'register' }">Register</router-link>&nbsp;|&nbsp;
          <router-link v-bind:to="{ name: 'comics' }">Comics</router-link>&nbsp;|&nbsp;
          <router-link v-bind:to="{ name: 'profile' }" v-if="$store.state.token != ''">Profile</router-link>&nbsp;|&nbsp;
          <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
        </div>
      </header>
      
      <main>
        <router-view />
      </main>

      <footer>
        <footer-box />
      </footer>

    </body>
  </div>
</template>

<script>
import FooterBox from './components/FooterBox.vue'


export default {
  name: 'app',
  components: {
    FooterBox
  }
}
</script>

<style scoped>
#app {
  display: grid;
  grid-template-columns: 1fr;
  grid-template-areas:
    "header"
    "main"
    "footer"
}

header {
  grid-area: header;
  background-image: repeating-linear-gradient(red, yellow 10%, green 20%);
  height: 3rem;
}

main {
  grid-area: main;
  background-color: crimson;
}

footer {
  grid-area: footer;
}

#nav {
  text-align: center;
}
</style>