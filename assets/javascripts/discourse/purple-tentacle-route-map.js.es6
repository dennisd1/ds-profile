// export default {
//  resource: 'admin.adminPlugins',
//  path: '/plugins',
//  map() {
//    this.route('purple-tentacle');
//  }
//};
export default {
 resource: 'user',
 path: 'users/:username',
 map() {
  this.route('profile', { path: '/profile' })
 }
};
