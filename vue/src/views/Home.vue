<template>
  <div class="home">
    
    <div class="title">
      <h1>Welcome to the best comic website!!</h1>
      <p>You must be authenticated to see this</p>
    </div>

    <div class="statistics">
      <p>statistics will go here</p>
    </div>
    
    <div class="picture">
      <img src="../assets/marvel1.jpeg" alt="Marvel Comic Heroes" />
    </div>

    <div class="featured-collection">
      <comic-book-collection />
    </div>
    
  </div>
</template>

<script>
import ComicBookCollection from '../components/ComicBookCollection.vue'

export default {
  components: { 
    ComicBookCollection
  },
  name: "home",
  //TO Be DELETED vv
  computed: {
    featuredCollection(){
      return this.$store.state.comics; 
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
  margin: 10px 10px 10px 10px;
  color: black;
  font-family: "Comic Sans MS", "Comic Sans", cursive;
  font-size: 20px;

}

div.statistics {
  grid-area: statistics;
  border: 2px solid white;
  margin: 10px 10px 10px 10px;
  font-family: "Comic Sans MS", "Comic Sans", cursive;

}

div.picture {
  grid-area: picture;
  margin: 10px 10px 10px 10px;
}

div.featured-collection {
  grid-area: featured-collection;
  border-bottom: 1px solid white;
  margin: 10px 10px 10px 10px;
  font-family: "Comic Sans MS", "Comic Sans", cursive;

}

/* this will style the image itself. currently it is centering the image. might not be necessary*/
div.picture img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 75%;
}

</style>
