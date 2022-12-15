<template>
  <div>
    
    
      
        <div class="title-wrapper">
          <div class="comics-title-container">
            <h1 class="comics-title">Comics to Explore</h1>
          </div>
        </div>
      
    
    <all-comics />

  </div>
</template>

<script>
import AllComics from '../components/AllComics.vue'


export default {
  components: { 
    AllComics 
  },
  name: 'comics',
    
}
</script>

<style>
* {
  box-sizing: border-box
}

:root {
  --color-1: rgba(30,60,210,1) 19%;
  --color-2: rgb(43, 55, 132);
  --color-3: #FFD700;
  --color-4: #f9002f;
  --color-5: #fb0000;
}


.title-wrapper {
  background: #000;
  line-height: 1;
  display: grid;
  place-items: center;
  height: 400px;
}

h1.comics-title {
  font-family: "Exo", sans-serif;
  font-size: 15vw;
  font-weight: 900;
  width: -webkit-min-content;
  width: -moz-min-content;
  width: min-content;
  margin: auto;
  text-transform: uppercase;
  background: linear-gradient(219deg, 
    var(--color-1) 19%, 
    transparent 19%,transparent 20%, 
    var(--color-2) 20%, var(--color-2)  39%,
    transparent 39%,transparent 40%, 
    var(--color-3) 40%,var(--color-3) 59% ,
    transparent 59%,transparent 60%, 
    var(--color-4) 60%, var(--color-4) 79%,
    transparent 79%, transparent 80%, 
    var(--color-5) 80%);
  background-clip: text;
  -webkit-background-clip: text;
  color: transparent;
}

.comics-title-container {
  text-align: center;
}



@media screen and (min-width: 768px) {
  h1.comics-title {
    font-size: 6.5rem;
  }
}

</style>