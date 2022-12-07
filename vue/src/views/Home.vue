<template>
  <div class="home">
    
    <div class="title">
      <h1>Welcome!!</h1>
      <p>You must be authenticated to see this</p>
    </div>

    <div class="statistics">
      <p>statistics will go here</p>
    </div>
    
    <div class="picture">
      <img src="../assets/marvel1.jpeg" alt="Marvel Comic Heroes" />
    </div>

    <div class="featured-collection">
      <p>featured collection will go here </p>
    </div>
    
  </div>
</template>

<script>

export default {
  name: "home",
};
</script>

<style scoped>
div.home {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-areas:
    "title title"
    "statistics picture"
    "featured-collection featured-collection"
}

div.title {
  grid-area: title;
  text-align: center;
  border: 5px solid black;
  margin: 10px 10px 10px 10px;
}

div.statistics {
  grid-area: statistics;
  border: 5px solid black;
  margin: 10px 10px 10px 10px;
}

div.picture {
  grid-area: picture;
  border: 5px solid black;
  margin: 10px 10px 10px 10px;
}

div.featured-collection {
  grid-area: featured-collection;
  border: 5px solid black;
  margin: 10px 10px 10px 10px;
}

/* this will style the image itself. currently it is centering the image. might not be necessary*/
div.picture img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 75%;
}

</style>
