import { connect } from 'react-redux';
import PostIndexItem from './post_index_item';
import { createLike, destroyLike } from '../../actions/like_actions';

const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser,
  posts: state.posts
});

const mapDispatchToProps = dispatch => ({
  createLike: postId => dispatch(createLike(postId)),
  destroyLike: postId => dispatch(destroyLike(postId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PostIndexItem);
