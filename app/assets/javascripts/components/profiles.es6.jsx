class Profiles extends React.Component {
  render () {
    return( <div> 
            {this.props.profiles.map(function(x){
              return(
                <p key={x.id}><a href={"/profiles/" + x.id}>{x.first_name}</a></p>
              )
            })}
           </div>
    )
  }
}

