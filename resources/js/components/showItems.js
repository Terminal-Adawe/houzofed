import React from 'react'
import ReactDom from 'react-dom'
import ReactDisplayController from './reactDisplayController.js'
import CategoriesHeader from './categoriesHeader'

class Showitems extends React.Component {

	constructor(props){
		super(props)

		this.state={
			items: [],
			cart: [],
			categories: [],
			categoryinfo: [],
			categoryid: document.getElementById("categoryid-items").value,
			type: document.getElementById("category-type").value,
			csrfField: document.querySelector("meta[name='csrf-token']").getAttribute("content")
		}

		this.addToCart = this.addToCart.bind(this)
		this.getCategoryId = this.getCategoryId.bind(this)

	}

	async getData(){
   		const res = await axios(`/api/categories/items/${this.state.categoryid}&${this.state.type}`);
   
   		return await res;
	}

	componentDidMount(){

		console.log("category ID being sent is "+this.state.categoryid)

		this.getData().then(response=>{
				console.log("response is "+response)

				this.setState({
					items: response.data.items,
					categories: response.data.categories,
					categoryinfo: response.data.categoryid
				})
			})
	}

	addToCart(item){
		const cart = new ReactDisplayController().addToCart(item)

		console.log(cart);

		this.setState({
			cart: cart
		})

	}

	getCategoryId(id){
		this.setState({
			categoryid: id
		})
	}

	render(){
		const items = this.state

		// console.log("about to filter categories: "+JSON.stringify(items.categories))
		// console.log("about to filter items: "+JSON.stringify(items.items))
		// console.log("category id to filter is: "+items.categoryid)

		return (<div>
			<CategoriesHeader categories = { items.categories } categoryinfo={ items.categoryinfo } cart={ items.cart } csrfField={ this.state.csrfField } categoryid={ this.getCategoryId }/>

			<div className="container-fluid mt-4">
    	<div className="row no-gutters" id="items-row">
    		
    	{
			items.items.filter(item=>item.categoryid==items.categoryid || items.categoryid == "all" ).map((item,i)=>{
				const url = "/storage/"+item.item_image_path
				console.log("image url: "+url+"\nItem: "+item.iid)
				console.log("image url: "+url+"\nItem ID: "+item.id)

			return <div key={i} className="col-lg-3 col-md-3 col-sm-6 col-6 mt-4 columnarea" data-aos="fade-right" data-aos-duration="600" data-aos-easing="ease-in-out">
			<div class="item-div-1 mx-auto">
            	<form action="/viewItem" method="get" id="saveForm" enctype="multipart/form-data" className="form-horizontal saveForm">
                        <input type="hidden" name="csrf_token" value={ this.state.csrfField } />
                            <input type="hidden" name="itemid" value={ item.iid } />
                <div className="item-image-holder items-item">
                    <img src={ url } width="100%" />
                    <button className="linkToItems getCartBtn" type="submit"></button>
                </div>
                <div className="row item-info my-1">
                	<div className="col">
                		<h6>{ item.item_name }</h6>
                		<p className="desPar">
                			{ item.description }
                		</p>
                	</div>
                </div>
                <div className="row item-info mb-4">
               		<div className="col">
                		<span className="mr-1 item-price"><b>₵{ item.item_price }</b></span>
                	
                	  	<button type="button" className="btn btn-custom mx-2" onClick={ () =>this.addToCart(item) }>Add to Cart <i className="fas fa-cart-arrow-down"></i></button>
                	</div>
                </div>
            	</form>
            </div>
            </div>
			})
		}
    		</div>
    	</div>
	</div>
			)
	}
}

export default Showitems

if (document.getElementById('categoryItemsDiv')) {
    ReactDOM.render(<Showitems />, document.getElementById('categoryItemsDiv'));
}