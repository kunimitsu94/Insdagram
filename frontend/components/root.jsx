import React from 'react';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import { Provider } from 'react-redux';
import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import PostIndexContainer from './post/post_index_container';
import NavBar from './nav_bar/nav_bar_container';
import PostFormContainer from './post_form/post_form_container';
import UserShowContainer from './user/user_show_container';
import { requestUser } from '../actions/user_actions';

const Root = ({ store }) => {

  const loggedIn = () => {
    const currentUser = store.getState().session.currentUser;
    return Boolean(currentUser);
  }

  const _redirectIfLoggedIn = (nextState, replace) => {
    if (loggedIn()) { replace('/'); }
  }

  const _ensureLoggedIn = (nextState, replace) => {
    if (!loggedIn()) { replace('/login') }
  }

  const _changeUserShow = (state) => {
    store.dispatch(requestUser(state.params.id))
  }

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path="/" component={App} onEnter={_ensureLoggedIn}>
          <IndexRoute component={PostIndexContainer} />
          <Route path="postForm" component={PostFormContainer} />
          <Route path="user/:id" component={UserShowContainer} onEnter={_changeUserShow}/>
        </Route>
          <Route path="/login" component={SessionFormContainer} onEnter={_redirectIfLoggedIn} />
          <Route path="/signup" component={SessionFormContainer} onEnter={_redirectIfLoggedIn} />
      </Router>
    </Provider>
  );
}

export default Root;
