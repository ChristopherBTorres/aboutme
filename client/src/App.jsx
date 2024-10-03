import './App.css'
import {Route, Routes} from 'react-router-dom'
import Navbar from "./components/Navbar"
import Footer from './components/Footer'
import Home from './pages/Home'
import Education from './pages/Education'
import Projects from './pages/Projects'
import Contact from './pages/Contact'
import Error from './pages/Error'

function App() {

  return (
    <>
      <Navbar/>
      <div>
        <Routes>
          <Route path="/" element={<Home/>}/>
          <Route path="/Education" element={<Education/>}/>
          <Route path="/Projects" element={<Projects/>}/>
          <Route path="/Contact" element={<Contact/>}/>
          <Route path='*' element={<Error/>}/>
        </Routes>
      </div>
      <Footer/>
    </>
  )
}

export default App
