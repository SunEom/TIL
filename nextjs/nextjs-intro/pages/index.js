import { useState } from "react";
import NavBar from "../components/NavBar";

export default function Home() {
  return (
    <div>
      <NavBar />
      <h1 className="active">hello </h1>
    </div>
  );
}
