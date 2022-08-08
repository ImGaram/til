import React, {Component} from "react";

class RefSample extends Component {
    input=React.createRef();

    handleFocus=()=> {
        this.input.current.focus();
    }

    render() {
        return(
            <div>
                <input ref={this.ref}/>
            </div>
        );
    }
}

export default RefSample;