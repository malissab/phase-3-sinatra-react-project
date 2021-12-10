import {useState} from 'react'

function SneakerForm({sneakerPost}){
    const [formData, setFormData] = useState({
        name: '',
        brand: '',
        release_date: '',
        resell_value: '',
    })

    const handleChange = (e) => {
        setFormData({...formData, [e.target.name]: e.target.value})
    }

    const handleSubmit = (e) => {
        e.preventDefault()
        sneakerPost(formData)
    }


    return(
        <>
        <form onSubmit={handleSubmit} onChange={handleChange}>
            <label>
            Sneaker Name:
            <input type='text' name='name'/>
            </label> 
            <label>
            Brand:
            <input type='text' name='brand'/> 
            </label>
            <label>
            Release Date:
            <input type='text' name='release_date'/>
            </label>
            <label>
            Resell Value: 
            <input type='text' name='resell_value'/>
            </label> 
            <input type="submit" value="Submit" />
        </form>
        </>

    )
}

export default SneakerForm;