import React from 'react';
import PostShowModalContainer from '../modal/post_show_modal_container';
import Modal from 'react-modal';

class UserShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = { modalOpen: false, currentImage: null};

    this.postText = this.postText.bind(this);
    this.followAction = this.followAction.bind(this);
    this.followStatus = this.followStatus.bind(this);
    this.followText = this.followText.bind(this);
    this.followCssClass = this.followCssClass.bind(this);
    this.followInformationText = this.followInformationText.bind(this);
    this.checkUser = this.checkUser.bind(this);

    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  componentDidUpdate(){
    this.props.clearSearchUsers();

    const userPosts = this.props.user.posts.map (post =>
      <img key={post.id} src={post.image_url} />
    );
  }

  componentWillUnmount(){
    this.props.clearUser();
  }

  postText(){
    if (this.props.user.posts.length === 1) {
      return <span className="posts-regular">post</span>;
    } else {
      return <span className="posts-regular">posts</span>;
    }
  }

  followStatus(){
    for (var key in this.props.user.followers) {
      if (this.props.user.followers[key].id === this.props.currentUser.id) {
        return true;
      }
    }
    return false;
  }

  followText() {
    if (this.followStatus()) {
      return "Following";
    } else {
      return "Follow";
    }
  }

  followCssClass(){
    if (this.followStatus()) {
      return "unfollowed-button";
    } else {
      return "followed-button";
    }
  }

  followAction(){
    const userId = this.props.user.id;

    if (this.followStatus()) {
      this.props.destroyFollow(userId);
    } else {
      this.props.createFollow(userId);
    }
  }

  followInformationText(){
    if (this.props.user.followers.length === 1) {
      return "follower";
    } else {
      return "followers";
    }
  }

  checkUser(){
    if (this.props.user.id !== this.props.currentUser.id) {
      return(
        <span className={ this.followCssClass() }
          onClick={this.followAction}>{ this.followText() }
        </span>
      );
    }
  }

  openModal(post_id){
    this.setState({modalOpen: true, currentImage: post_id});
  }

  closeModal(){
    this.setState({modalOpen: false, currentImage: null});
    this.props.requestPosts();
  }


  render(){
    if (this.props.user.posts) {
      const userPosts = this.props.user.posts.map (post =>
        <img className="user-show-image" key={post.post_id}
          src={post.image_url} onClick={(e) => this.openModal(post.post_id)} />
      );

      // closeTimeoutMS={this.placeholder}
      // onAfterOpen={this.placeholder}


      return(
        <div className="user-show-container">
          <div className="modal-container">
            <Modal className="modal"
              contentLabel="modal"
              isOpen={this.state.modalOpen}
              onRequestClose={this.closeModal}
              style={ModalStyle}>
              <PostShowModalContainer state={this.state} closeModal={this.closeModal}/>
            </Modal>
          </div>
          <div className="user-show-header">
            <div className="user-show-information">
              <div className="username-header">
                <span className="username-title">{this.props.user.username}</span>
                { this.checkUser() }
              </div>
              <div className="user-stats">
                <span className="post-stats">
                  <span className="stat-number">{this.props.user.posts.length}</span>
                  <span className="stat-text">{ this.postText() }</span>
                </span>
                <span className="followers-stats">
                  <span className="stat-number">{ this.props.user.followers.length }</span>
                  <span className="stat-text">{ this.followInformationText() }</span>
                </span>
                <span className="following-stats">
                  <span className="stat-number">{ this.props.user.followings.length }</span>
                  <span className="stat-text">following</span>
                </span>
              </div>
              <div className="user-full-name">{this.props.user.full_name}</div>
            </div>
          </div>
          <div className="user-show-body">{ userPosts }</div>
        </div>
      );
    } else {
      return <div></div>;
    }
  }
}

const ModalStyle = {
  overlay : {
    position          : 'fixed',
    top               : 0,
    left              : 0,
    // right             : 0,
    // bottom            : 0,
    backgroundColor   : 'rgba(0, 0, 0, 0.75)'
  },
  content : {
    position                   : 'fixed',
    top                        : '100px',
    left                       : '140px',
    right                      : '140px',
    bottom                     : '100px',
    background                 : '#fff',
    overflow                   : 'hidden',
    WebkitOverflowScrolling    : 'touch',
    outline                    : 'none',
  }
};

export default UserShow;
