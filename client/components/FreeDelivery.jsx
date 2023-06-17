import React, { useEffect, useState } from "react";

const FreeDelivery = () => {
  return (
    <div className="col">
      <div className="card grid3card">
        <img
          src="https://images.ctfassets.net/7rldri896b2a/6xZOd23eoWyYSQPtGe5CjX/83edf56ad3417fbf8442d01a05f94872/delivery.svg"
          className="grid3icon"
          alt="..."
        />
        <hr />
        <div className="card-body">
          <h5 className="card-title">FREE DELIVERY</h5>
          <p className="card-text">
            Now over two million online items eligible
          </p>
        </div>
      </div>
    </div>
  );
};

export default FreeDelivery;
