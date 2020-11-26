import React from 'react'
import ReactDom from 'react-dom'

function CategoriesHeader(props){
	console.log("categories are "+JSON.stringify(props.categories[0]))
	let categories = []
	categories = props.categories

	return(<div><div className="pageBar">
        <div className="container">
            <div className="d-flex nav-div">
            	<div className="mr-auto p-2">
            	<form action='/' method='get'>
                    <input type="hidden" name="csrf_token" value={ props.csrfField } />
                            <input type="hidden" name="cart" value={ JSON.stringify(props.cart) } id='cartHidden'/>
                <button className="linkToItems2" type="submit">home</button> / view clothing
            	</form> <button type='button' className="linkToItems3" onClick={ ()=>props.categoryid('all') }>All</button> 
            	{
                	props.categories.map((category,i)=>{
                		console.log(`category is ${category.category_name}`)
                			return <span key={i}> 
                		| <button type='button' className="linkToItems3" onClick={ ()=>props.categoryid(category.id) }>{ category.category_name }</button> </span>
                	})
                }
            	</div>
                <div className="p-2">
                	{ props.categoryinfo.category_name }	
                </div>
            </div>
        </div>
    </div>
    <hr/>
    </div>)
}

export default CategoriesHeader