import React from "react";
import '../index.css';
import "../App.css";
import "../style.css";
import Navbar from '../Navbar.js'
import ToolBar from "../ToolBar";
import Sidebar from "../Sidebar";
import Section from "../components/collapsible_list";

function Home() {
  return (
    <div>
      <ToolBar />
      <Sidebar />
      <Navbar />
      <Section title="Personal time off request">
        <label>
          <input type="checkbox" /> Due date: N/A
        </label>
        <br />
      </Section>
    </div>
  );
}

export default Home;