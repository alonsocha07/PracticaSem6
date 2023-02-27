import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PracticaExamenSem6FirebaseUser {
  PracticaExamenSem6FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PracticaExamenSem6FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PracticaExamenSem6FirebaseUser> practicaExamenSem6FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PracticaExamenSem6FirebaseUser>(
      (user) {
        currentUser = PracticaExamenSem6FirebaseUser(user);
        return currentUser!;
      },
    );
