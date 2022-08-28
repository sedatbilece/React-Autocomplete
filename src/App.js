import './App.css';
import {useEffect, useState,useRef} from 'react';


const data =[
  {
    id:1,
    title:'test 1'
  },
  {
    id:2,
    title:'Test 2'
  },
  {
    id:3,
    title:'deneme 1'
  },
  {
    id:4,
    title:'deneme 2'
  }

]

function App() {
  const [search, setSearch] = useState('');
  const [result , setResult] = useState(false);
  const searchRef = useRef();

  const isTyping = search.replace(/\s+/g,'').length > 0;

  useEffect(()=>{
    if(isTyping){
     const  filteredResult= data.filter(item => item.title.toLocaleLowerCase().includes(search.toLocaleLowerCase() ))
      setResult( filteredResult.length>0 ? filteredResult:false);
    }else{
      setResult(false)
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
                  {item.title}
                </div>
               ) ) }
               {!result &&(
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
