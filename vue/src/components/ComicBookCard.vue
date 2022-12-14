<template>
  <div>

    <div class="comic-book-container">
      <span class="comic" >
        
        <!--
        <span id="comic-book-container-details">
          <span>{{comic.comicName}}</span>
          <span>{{comic.author}}</span>
          <span>{{comic.releaseDate}}</span>
        </span>
        -->
        
        <div>
          <img :src="comic.imageURL" alt="Comic Book Cover Art">
        </div>
      </span>
    </div>

  </div>
</template>

<script>
import ComicService from "../services/ComicService"

export default {
    name: 'comic-book-card',
    props: {
        comic: Object
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
  }
    
}
</script>

<style scoped>
#comic-book-container-details {
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
  height: 400px;
  width: 264px;
  padding: 10px;
  /*
  width: 100%;
  height: 100%;
  object-fit: cover;
  */
}



</style>
