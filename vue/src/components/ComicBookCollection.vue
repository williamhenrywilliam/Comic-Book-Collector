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
  data() {
    return {
      collectionId: 1,
      intervalId: null,
    }
  },
  name: 'comic-book-collection',
  components: {
    ComicBookCard
  },
  mounted() {
    this.$store.dispatch("getAllComics");

    this.intervalId = setInterval(() => {
      this.collectionId += 1;
      if (this.collectionId > 8) {
        this.collectionId = 1;
      }
    }, 10000);
  },
  destroyed() {
    clearInterval(this.intervalId);
  },
  computed: {
    featuredCollection() {
      return this.$store.state.comicsDB.filter((comic) => {
        return comic.collectionId === this.collectionId;
      });
    }
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

