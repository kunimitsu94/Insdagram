import { connect } from 'react-redux';
import SuggestedUsers from './suggested_users';
import { createFollow, destroyFollow } from '../../actions/follow_actions';
import { requestPosts } from '../../actions/post_actions';
import { requestSuggestedUsers } from '../../actions/suggested_users_actions';


const mapStateToProps = (state) => ({
    suggestedUsers: state.suggestedUsers,
    currentUser: state.session.currentUser,
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  createFollow: userId => dispatch(createFollow(userId)),
  destroyFollow: userId => dispatch(destroyFollow(userId)),
  requestPosts: () => dispatch(requestPosts()),
  requestSuggestedUsers: () => dispatch(requestSuggestedUsers())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SuggestedUsers);
