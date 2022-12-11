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
      
      <div v-for="collection in collections" v-bind:key="collection.name">
        {{collection.name}}
        <comic-book-collection />
      </div>
    </div>

  </div>
</template>

<script>
import ComicBookCollection from '../components/ComicBookCollection.vue'
import ComicService from '../services/ComicService'

export default {
  components: { 
    ComicBookCollection
  },
    name: 'profile',
    data() {
        return {
            user: this.$store.state.user,
            newCollection: "",
            collections: [
              {
                name: "Test Collection",
              },
              {
                name: "Test Collection 2",
              }
            ]
        }
    },
    methods: {
      createCollection() {
        if(this.newCollection !== ""){
          const newCollectionDB = {
            collection_name: this.newCollection
          } 
        this.collections.push({
          name: this.newCollection
        });
        ComicService.createCollection(newCollectionDB)
        this.newCollection = "";
        } else {
          alert("A New Collection must have a name!")
        }
      }
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