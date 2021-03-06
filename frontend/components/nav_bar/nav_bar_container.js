import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import NavBar from './nav_bar';
import { requestUser } from '../../actions/user_actions';
import { requestUsers, clearSearchUsers } from '../../actions/search_actions';
import { clearPosts } from '../../actions/post_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  searchUsers: state.searchUsers
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  requestUser: id => dispatch(requestUser(id)),
  requestUsers: (username) => dispatch(requestUsers(username)),
  clearSearchUsers: () => dispatch(clearSearchUsers()),
  clearPosts: () => dispatch(clearPosts())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(NavBar);
