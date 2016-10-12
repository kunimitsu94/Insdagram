import { connect } from 'react-redux';
import PostIndexItem from './post_index_item';
import { createLike } from '../../actions/like_actions';

const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser,
  posts: state.posts
});

const mapDispatchToProps = dispatch => ({
  createLike: post_id => dispatch(createLike(post_id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PostIndexItem);
