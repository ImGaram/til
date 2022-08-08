import React, { Component } from "react";
import "./ValidationCss.css"

class ValidationSample extends Component {
    state={
        password:' ',
        clicked:false,
        validated: false
    }

    handleChange=(e)=> {
        this.setState({
            password:e.target.value
        });
    }

    handleButton=()=> {
        this.setState({
            clicked:true,
            validated:this.state.password==='000'
        });
    }

    handleChangeClick=()=> {
        this.setState({
            clicked:true,
            validated:this.state.password==='000'
        });
        this.input.focus();
    }

    render() {
        return(
            <div>
                <input ref={(ref)=>this.input=ref}
                       type="text"
                       value={this.state.password}
                       onChange={this.handleChange}
                       className={this.state.clicked ? (this.state.validated ? 'success' : 'failure'): ''}/>
                <button onClick={this.handleButton}>검증하기</button>
            </div>
        )
    }
}

export default ValidationSample