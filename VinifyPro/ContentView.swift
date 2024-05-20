//
//  ContentView.swift
//  VinifyPro
//
//  Created by Danut Popa on 20.05.2024.
//

import SwiftUI

struct ContentView: View {
  @State private var email: String = ""
  @State private var password: String = ""

  var body: some View {
    VStack(alignment: .leading) {

      VStack {
        TextField("Email", text: $email)
        TextField("Password", text: $password)
      }
      .textFieldStyle(.roundedBorder)

      Spacer()
        .frame(maxHeight: 25)

      HStack {
        Spacer()
        Button {
          
        } label: {
          Text("Login")
            .font(.title3)
            .foregroundStyle(.white)
        }
        .buttonStyle(.borderedProminent)
        Spacer()
      }
      .background(
        RoundedRectangle(cornerRadius: 10)
          .fill(Color.blue)
      )
    }
    .padding(.horizontal)
  }
}

#Preview {
  ContentView()
}

