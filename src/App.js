import './App.css';
import {useEffect, useState,useRef} from 'react';



function App() {
  const [search, setSearch] = useState('');
  const [result , setResult] = useState(false);
  const searchRef = useRef();

  const isTyping = search.replace(/\s+/g,'').length > 0;

 


  useEffect(()=>{
    if(isTyping){
     
    }else{
      setResult(false)
    }
       
     const getData = setTimeout(() => {
      fetch(`http://localhost/backend.php?query=${search}`)
    .then(res => res.json())
    .then(data => {
      console.log(data)
      setResult(data)
      
    })
     }, 250);

     return ()=>{
        clearTimeout(getData)

     }
  },[search])

  useEffect(()=>{
      document.addEventListener('mousedown',handleClickOutside);

      return ()=>{
        document.removeEventListener('mousedown',handleClickOutside);
      }
  },[])

  const handleClickOutside = (e)=>{
        
    if(searchRef.current && !searchRef.current.contains(e.target)){
      setSearch('');
    }
  }


  return (
    <>
      <div className='search' ref={searchRef}>
        <input 
        type='text' 
        placeholder='Search' 
        onChange={(e)=>setSearch(e.target.value)} 
        className={isTyping?'typing':null} 
        value={search}
        />

        {isTyping && (
        <div className='search-result'>
               {result && result.map(item =>(
                <div key={item.id} className='search-result-item'>
                  <img  src={item.image} className='item-image'/> <div className='title'>{item.title}</div>
                </div>
               ) ) }
               {!result && (
                <div className='result-not-found'>
                  "{search}" not found
                  </div>
               )}
        </div>
      )}

      </div>

      
     
    </>
  );
}

export default App;
