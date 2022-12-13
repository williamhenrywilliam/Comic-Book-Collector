<template>
  <div id="comic-book-collection">
    <h2>This is a Comic book collection </h2>
    
    <div class="comic-book-container">        
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
        return comic.collectionId === 5;
      }) 
    },
  }
}
</script>

<style scoped >
#comic-book-collection {
  border: 5px solid purple;
}

div.comic-book-container{
    display: flex;
    justify-content: space-evenly;
}

#comic-book-span {
  border: 5px solid chartreuse;
}
</style>