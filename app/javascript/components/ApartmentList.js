import React from "react"
import PropTypes from "prop-types"
class ApartmentList extends React.Component {
  constructor (props){
    super(props)
    this.state = {
      apartments: []
    }
  }

  componentDidMount(){
    fetch("/apartment_complexes")
    .then(res = > {
      return res.json()
    })
    .then(apartmentsJson => {
      this.setState({apartments: apartmentsJson})
    })

  }
  render () {
    const { apartments } = this.state
    return (
      <React.Fragment>
        <ul>
          {
            apartments.map((apartment, i) => {
              return <li key={i}>{apartment.street}</li>
            })
          }
        </ul>
      </React.Fragment>
    );
  }
}

export default ApartmentList
