// Replace "YOUR_API_KEY" with your actual Google API key
const API_KEY = "AIzaSyDFAdCTAGq1vi3ZMWCRHlGwVZy7kku3dP4";

// Replace "YOUR_CSE_ID" with your actual Google CSE (Custom Search Engine) ID
const CSE_ID = "f78fb5a442a184e6d";

// Set the search term to "Marvel comic"
const searchTerm = "Marvel comic";

// Make a request to the Google Images API using the search term and API key
fetch(`https://www.googleapis.com/customsearch/v1?key=${AIzaSyDFAdCTAGq1vi3ZMWCRHlGwVZy7kku3dP4}&cx=${f78fb5a442a184e6d}&q=${Marvel comic}&searchType=image`)
  .then((response) => response.json())
  .then((data) => {
    // Check if the API returned any results
    if (data.items && data.items.length > 0) {
      // Get the first result from the list of images
      const firstImage = data.items[0];

      // Print the URL of the image to the console
      console.log(firstImage.link);
    }
  });
