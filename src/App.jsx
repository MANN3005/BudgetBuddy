import React from 'react';
import Chatbot from './components/Chatbot';
import { ToastContainer } from "react-toastify";
const App = () => {
  return (
    <div>
      <Chatbot />
     <ToastContainer />
    </div>
  );
};

export default App;
