//
//  ContentView.swift
//  VinifyPro
//
//  Created by Danut Popa on 20.05.2024.
//

import SwiftUI

struct LoginView: View {
  @State private var username: String = ""
  @State private var password: String = ""

  var body: some View {

    VStack {
      Spacer()

      VStack {
        TextField("Username", text: $username)
        TextField("Password", text: $password)
      }
      .textFieldStyle(.roundedBorder)
      
      Spacer()
        .frame(maxHeight: 20)

      Button {

      } label: {
        Spacer()
        Text("Login")
          .font(.title3)
          .foregroundStyle(.white)
        Spacer()
      }
      .buttonStyle(.borderedProminent)

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

