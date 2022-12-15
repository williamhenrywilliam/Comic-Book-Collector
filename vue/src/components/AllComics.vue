<template>
  <div id="all-comics">

    <div id="search-bar">
      <label for="comics-search-bar">Search for your favorite comics by Title or Author!</label>
      <input type="text" id="comics-search-bar" placeholder="Search Comics..." v-model="searchText" />
    </div>
    
    <div id="comics-container">
        <span v-for="comic in searchedComics" v-bind:key="comic.comic_id" class="comic" @click="comic.flipped = !comic.flipped">
         
          <span v-if="comic.flipped" id="comic-details">
            <span>{{comic.comicName}}</span>
            <span>{{comic.author}}</span>
            <span>{{comic.releaseDate}}</span>
          </span>

          <div v-else>
            <img :src="comic.imageURL" alt="Comic Book Cover Art">
          </div>

          <form v-on:submit.prevent="addComicToACollection(comic, selectedCollectionId)" @click.stop>
            <button>Add To Collection</button>

            <label for="user-collections">Select Collection to Add to</label>
            <select name="user-collections" class="user-collections-dropdowns" @change="switchCollectionId($event)">
              <option value="" disabled selected>---</option>
              <option v-for="collection in userCollections" v-bind:key="collection.collectionName" :value="collection.collectionId" >{{collection.collectionName}}</option>
            </select>

          </form>

        </span>
    </div>
  </div>
</template>

<script>
import ComicService from "../services/ComicService"
export default {
  name: 'all-comics',
  data(){
    return {
      comics: [],
      collections: this.$store.state.collections,
      searchText: "",
      selectedCollectionId: ""
    }
  },
  created(){
  ComicService.getAllComics().then(response =>{
    this.comics = response.data.map((comic) => {
      let imageUrl = "";
     //TODO
      return {...comic, flipped: false, image: imageUrl};
      });
    })
  },
  computed:{
    searchedComics(){
      return this.comics.filter((comic)=> {
        return (comic.comicName.toLowerCase().includes(this.searchText.toLowerCase()) || comic.author.toLowerCase().includes(this.searchText.toLowerCase())) && comic.comicId <= 100;
      })
    },
    userCollections(){
      return this.$store.state.collections;
    }
  },
  mounted(){
      this.$store.dispatch("getAllCollections");
      this.userCollections = this.$store.state.collections;
  },
  methods: {
     addComicToACollection(comic, id) {
   
    const newComic = comic;
    newComic.collectionId = id;

   
    this.$store.commit("addComicToACollection", newComic);
    
    
    ComicService.addComicToACollection(newComic)
      .then(() => {
        this.$store.dispatch("getAllCollections");
      });
    },
    switchCollectionId(event){
      this.selectedCollectionId = event.target.value;
    }
  }
}
</script>
<style scoped>
span.comic {
  border: 3px solid black;
  height: 400px;
  width: 264px;
  margin: 10px 10px 10px 10px;
  padding: 10px 10px 10px 10px;
  display:flex;
  flex-direction: column;
  text-align: center;
  justify-content: space-between;
  color: #fff;
}

img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

#search-bar {
  display:flex;
  justify-content: center;
}

#comics-container{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
}

span.comic {
  /* existing styles */
  box-shadow: 0 0 5px rgba(0,0,0,0.5);
  transition: all 0.3s ease;
  margin-bottom: 50px;
}


  .comic:hover {
    box-shadow: 0 0 20px 10px #2F4858;
  }


#comic-details {
  display: flex;
  flex-direction: column;
}

span > form {
  margin-top: 20px;
}

#search-bar {
  margin-top: 10px;
  margin-bottom: 10px;
}

#search-bar label {
  font-size: 2rem;
  font-family: monospace, serif;
  color: seashell;
}

#comics-search-bar{
  
  width: 300px;
}
</style>





