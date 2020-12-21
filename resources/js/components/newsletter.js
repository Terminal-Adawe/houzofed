import React, { Component } from 'react';
import ReactDOM from 'react-dom';

class Newsletter extends Component {
    constructor(){
        super()

        this.state={
            setShow: false
        }

        this.handleClose = this.handleClose.bind(this)
        this.handleShow = this.handleShow.bind(this)
    }


  handleClose (){
    this.setState({
        setShow: false
    })
    }

  handleShow (){
    this.setState({
        setShow: true
    })
    }


    render() {
        console.log("render method called for show state "+this.state.setShow)
        return (
            <React.Fragment>
                <input type="text" className="form-control newsletterSubscription" name="email" placeholder="Enter your email to subcribe to our Newsletter" />
                    <button type="button" className="btn btn-outline-orange mt-2" style={{ backgroundColor: 'whitesmoke' }} onClick={this.handleShow}><b>Sign Me Up</b></button>

                    <Modal show={show} onHide={this.handleClose}>
                        <Modal.Header closeButton>
                          <Modal.Title>Modal heading</Modal.Title>
                        </Modal.Header>
                        <Modal.Body>Woohoo, you're reading this text in a modal!</Modal.Body>
                        <Modal.Footer>
                          <Button variant="secondary" onClick={this.handleClose}>
                            Close
                          </Button>
                          <Button variant="primary" onClick={this.handleClose}>
                            Save Changes
                          </Button>
                        </Modal.Footer>
                    </Modal>
            </React.Fragment>
        );
    }
}

export default Newsletter

if (document.getElementById('newsletter')) {
    ReactDOM.render(<Newsletter />, document.getElementById('newsletter'));
}
