import React, { useEffect, useState } from "react";
import MobileApp from "./MobileApp.jsx";
import ToolRental from "./ToolRental.jsx";
import Curbside from "./Curbside.jsx";
import FreeDelivery from "./FreeDelivery.jsx";

const Grid3 = (props) => {
  return (
    <main>
      <MobileApp />
      <ToolRental />
      <Curbside />
      <FreeDelivery />
    </main>
  );
};

export default Grid3;
