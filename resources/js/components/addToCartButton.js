import React from 'react'
import ReactDOM from 'react-dom';
import ReactDisplayController from './reactDisplayController.js'

class AddToCartButton extends React.Component {
	constructor(){
		super()

		this.state={
			itemQuantity: 1,
			item: JSON.parse(document.getElementById("item").value),
		}

		this.addToCart = this.addToCart.bind(this)
		this.quantityIncreaseOrDecrease = this.quantityIncreaseOrDecrease.bind(this)
	}

	addToCart(item){
		const quantity = this.state.itemQuantity
		console.log("item to be sent is "+item['item_name']+" and quantity is "+quantity)

		new ReactDisplayController().addToCart(item, quantity)

	}

	quantityIncreaseOrDecrease(itemkey,action,quantity){
    let count = quantity

    action=="increase" ? count < this.state.item['quantity_available'] ? count++ : "" : action=="decrease" ? count <= 1 ? "" : count -- : ""

    // this.props.cart.map((cartItem, i) => {
    //   i==itemkey ? cartItem[1].quantity=count : ""
    //   console.log(`this key is ${i}, itemkey is ${itemkey}`);
    // })


    this.setState({ itemQuantity: count })


    console.log(`count is ${count}, itemkey is ${itemkey} and action is ${action}`);
  }


	render(){
		console.log("item is "+this.state.item['item_name'])

		const { item } = this.state.item
		const { itemid } = this.state.item['iid']
		let quantity = this.state.itemQuantity

		console.log("Item in render is "+{ item } )

		return(<div className="row">
				<div className="product_quantity ml-lg-auto mr-lg-auto text-center">
                        <span className="product_text product_num col">{ quantity }</span>
                        <div className="qty_sub qty_button trans_200 text-center" onClick={ (e)=>this.quantityIncreaseOrDecrease({ itemid }, "decrease", quantity )}><span>-</span></div>
                        <div className="qty_add qty_button trans_200 text-center" onClick={ (e)=>this.quantityIncreaseOrDecrease({ itemid },"increase", quantity )}><span>+</span></div>
            	</div>

                <button type="button" className="btn btn-secondary col mx-1" onClick={ () =>this.addToCart(this.state.item) }>Add to Cart <i className="fas fa-cart-arrow-down"></i></button>
                    </div>)

	}
}

export default AddToCartButton

if (document.getElementById('addToCartButtonDiv')) {
    ReactDOM.render(<AddToCartButton />, document.getElementById('addToCartButtonDiv'));
}