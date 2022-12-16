<template>
  <div class="home">
    
    <div class="title-wrapper title">
      <div class="comics-title-container">
        <h1 class="comics-title">Welcome!</h1>
      </div>
    </div>

    <div class="statistics">
      <ul>
        <li>Our Website has {{comicCount}} Comics! THIS NEEDS TO BE FIXED</li>
        <li>Our Website has {{usersCount}} current Users! Get in on the ground floor while you still can!</li>
        <li>Our Website has {{collectionCount}} different collections! Such Variety!</li>
        <li>Our Website has comics from {{authorCount}} different authors!</li>
      </ul>
    </div>
    
    <div class="picture">
      <img src="../assets/marvel1.jpeg" alt="Marvel Comic Heroes" />
    </div>

    <div class="featured-collection">
      
      <h2>Check out these featured Collections!</h2>
      <comic-book-collection />
    </div>
    
  </div>
</template>

<script>
import ComicBookCollection from '../components/ComicBookCollection.vue'
import ComicService from "../services/ComicService"

export default {
  components: { 
    ComicBookCollection
  },
  data(){
    return{
      comicCount: "",
      usersCount: "",
      collectionCount: "",
      authorCount: ""
    }
  },
  name: "home",
  created(){
    ComicService.getComicCount().then((response) => {
      this.comicCount = response.data
    }),
    ComicService.getUsersCount().then((response) => {
      this.usersCount = response.data
    }),
    ComicService.getCollectionCount().then((response) => {
      this.collectionCount = response.data
    }),
    ComicService.getAuthorCount().then((response) => {
      this.authorCount = response.data
    })
  },
  //TO Be DELETED vv
  computed: {
    featuredCollection(){
      return this.$store.state.comics; 
    },
    onlyFeaturedComics(){
      return this.comicCount.filter((comic) => {
        return comic.collectionId === 1;
      });
    }
  }
}
</script>

<style scoped>
div.home {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-areas:
    "title title"
    "statistics picture"
    "featured-collection featured-collection"
    ;
}

div.title {
  grid-area: title;
  text-align: center;
  border-bottom: 1px solid white;
  margin-bottom: 10px;
  color: black;
  font-family: monospace, serif;
  font-size: 20px;
  height: 200px;
}

div.statistics {
  grid-area: statistics;
  border: 2px solid white;
  margin: 10px 10px 10px 10px;
  font-family: monospace, serif;

}

div.picture {
  grid-area: picture;
  margin: 10px 10px 10px 10px;
}

div.featured-collection {
  grid-area: featured-collection;
  border: 1px solid white;
  margin: 10px 10px 10px 10px;
  font-family: monospace, serif;
}

div.featured-collection h2 {
  text-align: center;
}

/* this will style the image itself. currently it is centering the image. might not be necessary*/
div.picture img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 75%;
}

div.statistics li {
  font-size: 1.1rem;
  padding-bottom: 40px;
  
}
</style>

