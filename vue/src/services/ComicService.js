import axios from 'axios';

//not sure if we need to make a http = axios.create statement like greg does in his video. there's something in here where the baseURL is built in i think? question for david?
//timestamp in video is 1h35min ish
/*
const http = axios.create({
    baseURL: "http://localhost:9000"
})

getAllComics(){
    return http.get('/comic')
}

*/

const http = axios.create({
    baseURL: "http://localhost:9000"
})

export default {

  getAllComics(){
    return http.get('/comic');
  },

  createCollection(collection){
    return http.post('/collection', collection);
  },

  getAllCollections(){
    return http.get('/collection')
  },

  addComicToACollection(comic){
    return http.post('/comic', comic);
  }
  

  
}