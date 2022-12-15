<template>
  <div id="comic-book-collection">
    
    <div class="comic-book-container scroll">        
        <comic-book-card v-for="comic in featuredCollection" v-bind:comic="comic" v-bind:key="comic.author"/>
    </div>

  </div>
</template>

<script>
import ComicBookCard from './ComicBookCard.vue'

export default {
    data(){
      return {
        comicsDB: []
      }
    },
    name: 'comic-book-collection',
    components: { 
        ComicBookCard
    },
    mounted(){
      this.$store.dispatch("getAllComics");
    },
    computed: {
    featuredCollection(){
      return this.$store.state.comicsDB.filter((comic) => {
        return comic.collectionId === 1;
      }) 
    },
  }
}
</script>

<style scoped >


div.comic-book-container{
    display: flex;
    overflow-x: auto;
    overflow-y: hidden;
    margin: 4px, 4px;
    padding: 4px;
  
}

</style>

