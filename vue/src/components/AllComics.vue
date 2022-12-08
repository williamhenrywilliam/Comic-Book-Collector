<template>
  <div>
      <h1>Here is a list of comics</h1>

      <table>
          <tr>
              <th>test header 1</th>
              <th>test header 2</th>
              <th>test header 3</th>
          </tr>
          <tr v-for="comic in comics" v-bind:key="comic.comic_id">
              <td>{{comic.comic_name}}</td>
              <td>{{comic.author}}</td>
              
          </tr>
      </table>
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

<style>

</style>