<template>
  <div id="profile">
    
    <div id="profile-title">
      <h1>Welcome, {{user.username}}!</h1>
    </div>

    <div id="collections">
      <h2>View Your Collections Below</h2>
      
      <form v-on:submit.prevent="createCollection" >
        <button>Create New Collection</button>
        <input type="text" placeholder="new collection name..." v-model="newCollection"/>
      </form>
      <!--
      <div v-for="collection in userCollections" v-bind:key="collection.name">
        {{collection.collectionName}} -->
        <comic-book-collection-user />
      <!--</div>-->
    </div>

  </div>
</template>

<script>

import ComicBookCollectionUser from '../components/ComicBookCollectionUser.vue'
import ComicService from '../services/ComicService'

export default {
  components: { 
    
    ComicBookCollectionUser
  },
    name: 'profile',
    data() {
        return {
            user: this.$store.state.user,
            newCollection: "", 
        }
    },
    computed: {
      collectionsStore() {
        return this.$store.state.collections;
      },
      userCollections(){
        return this.$store.state.collections.filter((collection) => {
          //THE 9 here is because we have 9 starter collections. so a user collection is guaranteed to be greater than 9. if we add more starter collections we need to update this number
          return collection.collectionId > 9;
        })
      }
    },
    mounted(){
      this.$store.dispatch("getAllCollections");
    },
    methods: {
      createCollection() {
        /*
        NEED TO MAKE SURE THAT DATABASE HAS UNIQUE NAMES ONLY
        sort through the collections array on the veux store, check each one's collectionName and see if it ties to newCollection. if so, we CANNOT execute the code and should dispaly a message that says "collection name already exists!"

        this.$store.state.find((collection) => {
          return collection.collectionName === newCollection;

        }
        
        */

        if(this.newCollection !== ""){
          //this variable will be sent to the database
          const newCollectionDB = {
            collectionName: this.newCollection
          };

          //this sends to the database
          ComicService.createCollection(newCollectionDB);
 
          //this resets the newCollection input to blank
          this.newCollection = "";
          location.reload();
        } else {
          alert("A New Collection must have a name!")
        }
      },
      
    }
     
}
</script>

<style>
#profile {
  display:flex;
  flex-direction: column; 
}

#profile-title {
  border: 5px solid orange;
}

#collections {
  border: 5px solid black;
}
</style>
