<template>
  <div>
    <div class="comic-book-collection-user">
      <h2>This is a User Collection</h2>

      <div v-for="collection in userCollectionsOnly" v-bind:key="collection.name"> {{collection.collectionName}}
        <div class="comic-book-container-user">
          <comic-book-card v-for="comic in featuredCollection" v-bind:comic="comic" v-bind:key="comic.author"/>
        </div>
      </div>
      
    </div>
  </div>
</template>

<script>
import ComicBookCard from "./ComicBookCard.vue"

export default {
    name: 'comic-book-collection-user',
    components: {
      ComicBookCard
    },
    data(){
      return{
        comicsDB: [],
        allComics: [],
        allCollections: [],
        userCollectionsOnly: [],
        userCollectionsIdsOnly: []
      }
    },
    created() {
      this.allComics = this.$store.state.comicsDB;
      this.allCollections = this.$store.state.collections;
      this.userCollectionsOnly = this.allCollections.filter((collection) => {return collection.collectionId > 9});
      this.userCollections
    },
    mounted(){
      this.$store.dispatch("getAllComics");
      this.$store.dispatch("getAllCollections");
    },
    computed: {
      featuredCollection(){
        return this.$store.state.comicsDB.filter((comic) => {
          return comic.collectionId === 3;
        }); 
      },
      userCollections(){
        return this.$store.state.collections.filter((collection) => {
          //THE 9 here is because we have 9 starter collections. so a user collection is guaranteed to be greater than 9. if we add more starter collections we need to update this number
          return collection.collectionId > 9;
        })
      },
      methods: {
        testMethod(){
          return this.$store.state.comicsDB.filter((comic) => {
          return comic.collectionId === 3;
        }); 
        }
      }
    }

}
</script>

<style>
div.comic-book-collection-user{
  border: 5px solid greenyellow
}

div.comic-book-container-user{
  display: flex;
    justify-content: space-evenly;
}
</style>