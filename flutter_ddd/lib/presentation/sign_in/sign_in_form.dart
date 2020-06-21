import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd/application/auth/sigin_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureorSuccess.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                    cancelledByUser: (_) => "Cancelled",
                    emailAlreadyInUSe: (_) => "",
                    invalidEmailAndPasswordComnbination: (_) =>
                        "Invalid email and password",
                    serverError: (_) => "Server error"),
              ).show(context);
            },
            (_) {
              // TODO: Navigate
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              const Text(
                '✍🏻',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 130),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: 'Email'),
                autocorrect: false,
                onChanged: (value) => context.bloc<SignInFormBloc>().add(
                      SignInFormEvent.emailChaned(value),
                    ),
                validator: (value) =>
                    context.bloc<SignInFormBloc>().state.emailAdress.value.fold(
                          (f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid email String',
                              orElse: () => null),
                          (r) => null,
                        ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock), labelText: 'Password'),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context.bloc<SignInFormBloc>().add(
                      SignInFormEvent.passwordChaned(value),
                    ),
                validator: (value) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                              invalidEmail: (_) => 'Short Password',
                              orElse: () => null),
                          (r) => null,
                        ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(const SignInFormEvent
                            .signInWithEmailAndPasswordPress());
                      },
                      child: const Text('Sign In'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(const SignInFormEvent
                            .registerWithEmailAndPasswordPress());
                      },
                      child: const Text('Register'),
                    ),
                  )
                ],
              ),
              RaisedButton(
                onPressed: () {
                  context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGoogle());
                },
                color: Colors.deepPurple[300],
                child: const Text('Sign In With Google'),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 8,
                ),
                const LinearProgressIndicator( )
              ]
            ],
          ),
        );
      },
    );
  }
}
