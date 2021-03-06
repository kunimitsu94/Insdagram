import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import PostsReducer from './posts_reducer';
import UserReducer from './user_reducer';
import SearchReducer from './search_reducer';
import SuggestedUsersReducer from './suggested_users_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  posts: PostsReducer,
  user: UserReducer,
  searchUsers: SearchReducer,
  suggestedUsers: SuggestedUsersReducer
});

export default RootReducer;
