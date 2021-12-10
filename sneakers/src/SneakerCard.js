


function SneakerCard({snkr, handleDelete}) {
    

    const reviews = snkr.reviews.map(review => <p>{review.comment}</p>)
    
    return (
        <div>
            
           <h2>{snkr.name} </h2>
           <h3>Brand: {snkr.brand}</h3> 
           <p>Release Year: {snkr.release_date}</p>
           <p>Resell Value: ${snkr.resell_value}</p>
           <p>Comment:{reviews}</p>
           <button onClick={() => handleDelete(snkr.id)}>Delete Post</button>
          
           </div>
    )
}


export default SneakerCard;