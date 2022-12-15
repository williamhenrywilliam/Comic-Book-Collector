<template>
  <div id="profile">
    
    <div class="title-wrapper">
      <div class="comics-title-container">
        <h1 class="comics-title">{{user.username}}'s Profile Page</h1>
      </div>
    </div>

    <div id="collections">
      <h2>View Your Collections Below</h2>
      
      <form v-on:submit.prevent="createCollection" >
        <button>Create New Collection</button>
        <input type="text" placeholder="new collection name..." v-model="newCollection"/>
      </form>
      
      <comic-book-collection-user />
      
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
      // Check if the new collection has a name
      if (this.newCollection !== "") {
        // Create the new collection object to be added to the store
        const newCollection = {
          collectionName: this.newCollection
        };

        // Add the new collection to the store using a Vuex mutation
        this.$store.commit("addCollection", newCollection);

              ComicService.createCollection(newCollection).then(() => {
          // Dispatch a Vuex action to fetch the updated list of collections from the database
          this.$store.dispatch("getAllCollections");
        });


        // Reset the new collection input to blank
        this.newCollection = "";
      } else {
          alert("A New Collection must have a name!")
        }
      }
    }
     
}
</script>

<style >
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

#collections h2 {
  font-family: monospace, serif;
}




</style>
