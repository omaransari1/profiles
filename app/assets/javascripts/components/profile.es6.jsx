class Profile extends React.Component {

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

    let open = <a onClick={this._touchedMe.bind(this)}>Show</a>;

    if(this.state.clicked){
      open = <div>
              <h2>{this.props.profile.first_name}</h2>
             </div>;
    }
    return (
      <div>
        {open}
      </div>
      )
  }
}

