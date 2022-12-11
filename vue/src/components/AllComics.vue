<template>
  <div id="all-comics">

    <div id="search-bar"><input type="text" placeholder="Search Comics..." v-model="searchText" /> </div>
    <div id="comics-container">
     <span v-for="comic in searchedComics" v-bind:key="comic.comic_id" class="comic" @click="comic.flipped = !comic.flipped">
  <span v-if="comic.flipped">
    <span>{{comic.comicName}}</span>
    <span>{{comic.author}}</span>
    <span>{{comic.releaseDate}}</span>
  </span>
    <div v-else>
    <img :src="comic.imageURL" alt="Spider-Man comic">
  </div>
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
      searchText: ""
    }
  },
  created(){
  ComicService.getAllComics().then(response =>{
    this.comics = response.data.map((comic, index) => {
      let imageUrl = "";
      if (index % 3 === 0) {
        imageUrl = "https://i.annihil.us/u/prod/marvel/i/mg/d/f0/62d0452848928/portrait_xlarge.jpg";
      } //TODO
      return {...comic, flipped: false, image: imageUrl};
      });
    })
  },
  computed:{
    searchedComics(){
      return this.comics.filter((comic)=> {
        return comic.comicName.toLowerCase().includes(this.searchText.toLowerCase()) || comic.author.toLowerCase().includes(this.searchText.toLowerCase());
      })
    }
  },
}
</script>
<style scoped>
span.comic {
  border: 3px solid black;
  height: 150px;
  width: 100px;
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
  object-fit:cover;
}

#search-bar {
  display:flex;
  justify-content: center;
}

#comics-container{
  display: flex;
  flex-wrap: wrap;
}
span.comic-details {
 display:flex;
    flex-direction: column;
    text-align: center;
    justify-content: space-between;
    color: #fff;
}

span.comic {
  /* existing styles */
  transition: all 0.3s ease;
}

span.comic:hover {
  transform: scale(1.1);
  box-shadow: 0 0 10px rgba(0,0,0,0.5);
}

span.comic {
  /* existing styles */
  box-shadow: 0 0 5px rgba(0,0,0,0.5);
}
</style>