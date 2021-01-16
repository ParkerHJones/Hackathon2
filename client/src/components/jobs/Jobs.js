import { Component } from 'react';
import { JobConsumer } from '../../providers/JobProvider';
import JobForm from './JobForm';
import JobList from './JobList';

class Jobs extends Component {
  componentDidMount() {
    const { getAllMenuJob, menuId } = this.props 
    getAllMenuJob(menuId)
  }

  render() {
    const { menuId, addJob, Jobs, deleteJob, updateJob } = this.props
    return(
      <>
        <JobForm 
          menuId={menuId}
          addJob={addJob}
        />
        <JobList 
          menuId={menuId}
          items={items}
          deleteItem={deleteItem}
          updateItem={updateItem}
        />
      </>
    )
  }
} 

const ConnectedItems = (props) => (
  <ItemConsumer>
    { value => 
      <Items
        {...value}
        {...props}
      />
    }
  </ItemConsumer>
)

export default ConnectedItems;