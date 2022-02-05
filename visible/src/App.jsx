import { useState } from 'react'
import logo from './logo.svg'
import './App.css' 
import Navbar from './components/Navbar'
import Homepage from './components/Homepage'
import Footer from './components/Footer'
import VoterReg from './components/VoterReg'
import './components/Navbar.css'
import './components/Homepage.css'
import './components/Footer.css'
import './components/VoterReg.css'

function App() {
  const [count, setCount] = useState(0)
  
  return (
    // <div className="App">
    <div>
      <Navbar/>
      {/* <Homepage/> */}
      <VoterReg/>
      <Footer/>
    </div>
  )
}

export default App;
