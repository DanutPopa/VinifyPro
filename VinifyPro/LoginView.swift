//
//  ContentView.swift
//  VinifyPro
//
//  Created by Danut Popa on 20.05.2024.
//

import SwiftUI

struct LoginView: View {
  @State private var email: String = ""
  @State private var password: String = ""

  private var isLoginValid: Bool {
    !email.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace && email.isEmailValid
  }

  var body: some View {

    VStack {
      Spacer()

      VStack {
        TextField("Email", text: $email)
        SecureField("Password", text: $password)
      }
      .textInputAutocapitalization(.never)
      .textFieldStyle(.roundedBorder)

      Spacer()
        .frame(maxHeight: 20)

      Button {
        //TODO: Implement the network call
      } label: {
        Spacer()
        Text("Login")
          .font(.title3)
          .foregroundStyle(.white)
        Spacer()
      }
      .buttonStyle(.borderedProminent)
      .disabled(!isLoginValid)

      Spacer()
    }
    .padding()
    .background(
      Image("vineyard")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .ignoresSafeArea()
    )
  }
}

#Preview {
  LoginView()
}

