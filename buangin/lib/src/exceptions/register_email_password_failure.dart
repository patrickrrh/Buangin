class RegisterWithEmailAndPasswordFailure{
  final String message;

  const RegisterWithEmailAndPasswordFailure([this.message = 'Terjadi kesalahan.']);

  factory RegisterWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'invalid-email' : return const RegisterWithEmailAndPasswordFailure('Penulisan email tidak benar');
      default: return const RegisterWithEmailAndPasswordFailure();
    }
  }
}