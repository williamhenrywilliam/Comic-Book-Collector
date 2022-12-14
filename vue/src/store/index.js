import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

/*
 * The authorization header is set for axios when you login but what happens when you come back or
 * the page is refreshed. When that happens you need to check for the token in local storage and if it
 * exists you should set the header so that it will be attached to each request
 */
const currentToken = localStorage.getItem('token')
const currentUser = JSON.parse(localStorage.getItem('user'));

if(currentToken != null) {
  axios.defaults.headers.common['Authorization'] = `Bearer ${currentToken}`;
}

export default new Vuex.Store({
  state: {
    token: currentToken || '',
    user: currentUser || {},
    //adding in code here vvv. THIS IS TEMPORARY. WILL NEED TO DYNAMICALLY PULL FROM DATABASE
    comics: [
      {
        comicName: "Spiderman test",
        title: "Spiderman #1",
        author: "Stan Lee",
        releaseDate: "2000-1-1"
      },
      {
        title: "Deadpool #1",
        author: "Stan Lee",
      },
      {
        title: "The Incredible Hulk #1",
        author: "Stan Lee",
      },
      {
        title: "Black Panther #1",
        author: "Stan Lee",
      },
      {
        title: "Iron Man #1",
        author: "Stan Lee",
      }
    ],
    collections: [],
    comicsDB: [],
    comicCount: ""
  },
  mutations: {
    SET_AUTH_TOKEN(state, token) {
      state.token = token;
      localStorage.setItem('token', token);
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    },
    SET_USER(state, user) {
      state.user = user;
      localStorage.setItem('user',JSON.stringify(user));
    },
    LOGOUT(state) {
      localStorage.removeItem('token');
      localStorage.removeItem('user');
      state.token = '';
      state.user = {};
      axios.defaults.headers.common = {};
    },
    //ADDING MUTATIONS VVV
    ADD_COLLECTION(state, collection){
      state.collections.push(collection);
    },
    SET_COLLECTIONS(state, collectionsPayload) {
      state.collections = collectionsPayload;
    },
    SET_COMICS(state, comicsPayload){
      state.comicsDB = comicsPayload;
    },
    SET_COMIC_COUNT(state, comicCountPayload){
      state.comicCount = comicCountPayload;
    }
    
  },
  actions:{
    getAllCollections (context) {
      axios.get('http://localhost:9000/collection').then(response => {
      context.commit('SET_COLLECTIONS', response.data)
      })
    },
    getAllComics (context){
      axios.get('http://localhost:9000/comic').then(response => {
        context.commit('SET_COMICS', response.data)
      })
    },
    getComicCount(context){
      axios.get('http://localhost:9000/comic/count').then(response => {
        context.commit('SET_COMIC_COUNT', response.data)
      })
    }
    
  }
})

