import {useState, useEffect} from 'react'
import SneakerForm from './SneakerForm'
import SneakerCard from './SneakerCard'

function App() {
  
  const [sneakers, setSneakers] = useState([])
  const [reviews, setReviews] = useState([])
  const [users, setUsers] = useState([])
  

  // gets sneakers, users, and reviews
  useEffect(() => {
    fetch('http://localhost:9292/sneakers')
    .then(res => res.json())
    .then(setSneakers)
  }, [])

  useEffect(() => {
    fetch('http://localhost:9292/reviews')
    .then(res => res.json())
    .then(setReviews)
  }, [])
  useEffect(() => {
    fetch('http://localhost:9292/users')
    .then(res => res.json())
    .then(setUsers)
  }, [])



  // sneaker post
  const sneakerPost = (sneaker) => {
    fetch('http://localhost:9292/sneakers',{
      method:'POST',
      headers:{
        'Content-Type':'application/json'
      },
      body: JSON.stringify(sneaker)
    })
    .then(res => res.json())
    .then(newSneaker => {
      setSneakers([newSneaker,...sneakers])
    })
  }
  
  
  // deletes a post
  const handleDelete = (id) => {
    fetch(`http://localhost:9292/sneakers/${id}`,{
      method:'DELETE',
      headers:{'Content-Type':'application/json'}
    })
    .then(res => res.json())
    .then(() => {
      setSneakers(sneakers.filter(s => s.id !== id))
    })
  }

  


  return (
    <div className="App">
    
       
         <div className="App">
        <SneakerForm sneakerPost={sneakerPost} />
        <h1>Latest Posts...</h1>
        {sneakers.map((s) => <SneakerCard snkr={s} key={s.id} name={s.name} brand={s.brand} release_date={s.release_date} 
        resell_value={s.resell_value} handleDelete={handleDelete} />)}
        
      


         </div>
       

    </div>
  );
}

export default App;
