<template>
  <div id="all-comics">

    <div id="search-bar"><input type="text" placeholder="Search Comics..." v-model="searchText" /> </div>
    <div id="comics-container">
      <span v-for="comic in searchedComics" v-bind:key="comic.comic_id" class="comic" @click="comic.flipped = !comic.flipped">
        <span v-if="!comic.flipped">
          <img :src="comic.image" alt="Spider-Man comic">
        </span>
        <span class="comic-details" v-else>
          <span>{{comic.comicName}}</span>
          <span>{{comic.author}}</span>
          <span>{{comic.releaseDate}}</span>
        </span>
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
      } else if (index % 3 === 1) {
        imageUrl = "http://i.annihil.us/u/prod/marvel/i/mg/9/c0/527bb7b37ff55/portrait_xlarge.jpg";
      } else {
        imageUrl = "http://i.annihil.us/u/prod/marvel/i/mg/3/50/537ba56d31087/portrait_xlarge.jpg";
      }
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
  }
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

</style>