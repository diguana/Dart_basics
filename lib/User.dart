class User {
  final email;
  User(this.email);
  
}

class AdminUser extends User with getMailSystem{
 AdminUser(String email) : super(email);
}

mixin getMailSystem on User{
  String? get emailType => email.split("@")[1];
}
class UserManager<T extends User> {
  Set <T> usersEmail= {};

void addAdmin(T user){
  usersEmail.add((user));
}
  void add(List<T> userList) => usersEmail.addAll(userList);

  void removeOne(T user) => usersEmail.remove(user);

  void remove(List<T> userList) => usersEmail..removeAll(userList);

  List<String> getEmails() {
    final List<String> emails = [];

    for (final user in usersEmail) {
      if (user.email != null) {
        if (user is AdminUser) {
          emails.add(user.emailType!);
        } else {
          emails.add(user.email!);
        }
      }
    }

    return emails;
 }
}
void main(){
  //var us = UserManager;
  var us = AdminUser("ewfji@gmail");
  
  print(us.emailType);
}