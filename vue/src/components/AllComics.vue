<template>
  <div id="all-comics">
      <span v-for="comic in comics" v-bind:key="comic.comic_id" class="comic"> 
        <span>{{comic.comicName}}</span>
        <span>{{comic.author}}</span>
        <span>{{comic.releaseDate}}</span>
      </span>
  </div>
</template>

<script>
import ComicService from "../services/ComicService"


export default {
    name: 'all-comics',
    
    data(){
        return {
            comics: []
        }
    },
    created(){
        ComicService.getAllComics().then(response =>{
            this.comics = response.data;
        })
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

#all-comics {
    display: flex;
    flex-wrap: wrap;
}

</style>