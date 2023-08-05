void main () {
  print('========== Welcome Guys ===========');
  var auth = Authentication.login_with_Email;

  switch (auth) {
    case Authentication.login_with_facebook: 
    print("login with facebook ka function chalao");
      break;
    case Authentication.login_with_Email: 
    print("login with email ka function chalao");
      break;
    case Authentication.login_wth_google: 
    print("login with google ka function chalao");
      break;
    case Authentication.login_with_number: 
    print("login with number ka function chalao");
      break;
  
    default:
  }

}
enum Authentication { login_with_Email , login_wth_google , login_with_facebook , login_with_number}