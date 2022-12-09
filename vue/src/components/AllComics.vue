<template>
  <div id="all-comics">
      <div id="search-bar">
        <input type="text" placeholder="Search Comics..." v-model="searchText">
      </div>
      
      <div id="comics-container">
        <span v-for="comic in searchedComics" v-bind:key="comic.comic_id" class="comic"> 
            <span>{{comic.comicName}}</span>
            <span>{{comic.author}}</span>
            <span>{{comic.releaseDate}}</span>
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
            searchText: ''
        }
    },
    created(){
        ComicService.getAllComics().then(response =>{
            this.comics = response.data;
        })
    },
    computed: {
        searchedComics(){
            return this.comics.filter((comic) => {
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

#search-bar {
    display: flex;
    justify-content: center;
}

#comics-container {
    display: flex;
    flex-wrap: wrap;
}

</style>