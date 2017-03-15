class ProfilePanel extends React.Component {

  constructor(props){
    super(props)
    this.state = {
      clicked: false
    }
  }
  _touchedMe(){
    var newState = {};
    newState["clicked"] = true;
    this.setState(newState);
    }

  
  render () {

    let open = <a className="clicker" onClick={this._touchedMe.bind(this)}>Show Profile Details</a>;

    if(this.state.clicked){
      open = <div>
              <h3>Age: {this.props.profile.age}</h3>
              <h3>E-mail: {this.props.profile.email}</h3>
              <h3>Phone: {this.props.profile.phone_number}</h3>
             </div>;
    }
    return (
      <div>
        {open}
      </div>
      )
  }
}
