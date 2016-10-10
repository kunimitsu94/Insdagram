import React from 'react';

class UserShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidUpdate(){
    const userPosts = this.props.user.posts.map (post =>
      <img key={post.id} src={post.image_url} />
    );
  }

  render(){
    if (this.props.user.posts) {
      const userPosts = this.props.user.posts.map (post =>
        <img className="user-show-image" key={post.post_id} src={post.image_url} />
      );
      return(
        <div className="user-show-container">
          <div className="user-show-header">
            <div className="user-show-information">
              <div className="username-header">{this.props.user.username}</div>
              <div className="user-stats">
                <span className="posts-bold">{this.props.user.posts.length}</span>
                <span className="posts-regular">posts</span>
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

export default UserShow;