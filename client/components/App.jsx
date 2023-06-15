import React, { useEffect, useState } from "react";
import Header from "./Header.jsx";
import Carousel from "./Carousel.jsx";
import Categories from "./Categories.jsx";
import Grid1 from "./Grid1.jsx";
import ShopByCategory from "./ShopByCategory.jsx";
import Grid2 from "./Grid2.jsx";
import Recommendation from "./Recommendation.jsx";
import Grid3 from "./Grid3.jsx";
import Footer from "./Footer.jsx";

const App = () => {
  return (
    <main>
      <Header />
      <Carousel />
      <Categories />
      <Grid1 />
      <ShopByCategory />
      <Grid2 />
      <Recommendation />
      <Grid3 />
      <Footer />
    </main>
  );
};

export default App;
