import React from 'react';
import ReactDOM from 'react-dom';
import Modal from 'react-modal';

class PostShowModal extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    const userPosts = this.props.userProps.user.posts;

    let currentPost = null;
    this.props.userProps.user.posts.forEach (post =>
      {if (post.post_id === this.props.state.currentImage) {
        currentPost = post;
      }
    });

    return (
      <div className="modal-content">
        <img className="modal-image" src={currentPost.image_url} />
        <h3 className="modal-username">{this.props.userProps.user.username}</h3>
      </div>
    );
  }
}



export default PostShowModal;
