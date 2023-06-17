import React, { useEffect, useState } from "react";

const Curbside = () => {
  return (
    <div className="col">
      <div className="card grid3card">
        <img
          src="https://images.ctfassets.net/7rldri896b2a/1XkXVWTsTd3aH9y5RUuTca/a2b327f874f222904052e643dc277a51/curbsideOrangeOutline.svg"
          className="grid3icon"
          alt="..."
        />
        <hr />
        <div className="card-body">
          <h5 className="card-title">WE DELIVER CURBSIDE</h5>
          <p className="card-text">
            Order online for convenient store pickup daily until 6 p.m.
          </p>
        </div>
      </div>
    </div>
  );
};

export default Curbside;
