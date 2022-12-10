// Define the image representation
const image = {
    path: "http://i.annihil.us/u/prod/marvel/i/mg/3/40/4bb4680432f73",
    extension: "jpg"
  };
  
  // Select the variant name
  const variant = "portrait_xlarge";
  
  // Build the full image path by concatenating the path, variant name, and extension
  const imagePath = image.path + "/" + variant + "." + image.extension;
  
  // Print the full image path to the console
  console.log(imagePath);

  <img src="http://i.annihil.us/u/prod/marvel/i/mg/3/40/4bb4680432f73/portrait_xlarge.jpg" alt="Spider-Man comic"></img>