import { Grid } from 'semantic-ui-react';
import Job from './Job';

const JobList = ({ jobs, deleteJob, menuId, updateJob }) => (
  <Grid columns={3}>
    {
      jobs.map( i => 
        <Job 
          deleteJob={deleteJob}
          menuId={menuId}
          updateJob={updateJob}
          {...i}
        />
      )
    }
  </Grid>
)

export default JobList;