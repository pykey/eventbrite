import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';

import { openModal } from '../../actions/modal_actions';
import {fetchEvent} from '../../actions/event_actions';
import Ticket from './ticket';

const mapStateToProps = (state, ownProps) => {
  const eventId = parseInt(ownProps.match.params.eventId);

  let event = state.entities.events[eventId];
  return {
    eventId,
    event
  };
};

const mapDispatchToProps = dispatch => ({
  fetchEvent: id => dispatch(fetchEvent(id)),
  openModal: modal => dispatch(openModal(modal))
});

export default connect(mapStateToProps, mapDispatchToProps)(Ticket);
