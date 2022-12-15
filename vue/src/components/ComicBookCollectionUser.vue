<template>
  <div>
    <div class="all-user-collections">
      <h2>This is all of the signed in User's collections</h2>
      
      
      <label for="user-collections-dropdown">Select the Collection You Would Like to View: </label>
      <select name="user-collections-dropdown" id="dropdown-choice" class="user-collections-dropdown" v-model="selectedCollectionId">
        <option value="" disabled selected>---</option>
        <option v-for="collection in userCollections" v-bind:key="collection.collectionName" :value="collection.collectionId">{{collection.collectionName}}</option>
      </select>
      

      <div class="selected-collection-comics">
        <comic-book-card v-for="comic in comicsInSelectedCollection" v-bind:comic="comic" v-bind:key="comic.author"/>
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
  data() {
    return {
      comics: [],
      collections: this.$store.state.collections,
      selectedCollectionId: ""
    }
  },
  computed: {
    userCollections(){
      return this.$store.state.collections.filter((collection) => {
        return collection.collectionId > 8;
      });
    },
    comicsInSelectedCollection(){
      return this.$store.state.comicsDB.filter((comic) => {
        return comic.collectionId === this.selectedCollectionId;
      })
    }
  }
}
</script>

<style>
div.all-user-collections{
  border: 5px solid pink;
}

div.selected-collection-comics {
  border:5px solid brown;
  display: flex;
  flex-wrap: wrap;
}
</style>


