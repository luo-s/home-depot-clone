import React, { useEffect, useState } from "react";
import CreditCard from "./CreditCard.jsx";
import RecentView from "./RecentView.jsx";
import YourStore from "./TodaySpecial.jsx";

const Grid2 = (props) => {
  return (
    <main>
      <CreditCard />
      <RecentView />
      <YourStore />
    </main>
  );
};

export default Grid2;
