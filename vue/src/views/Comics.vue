<template>
  <section>
    <h1>Comics to Explore</h1>
    <all-comics />

  </section>
</template>

<script>
import AllComics from '../components/AllComics.vue'


export default {
  components: { 
    AllComics 
  },
  name: 'comics',
    
}
</script>

<style>

/*this needs to be updated*/
section {
  height: 800px;
}
</style>