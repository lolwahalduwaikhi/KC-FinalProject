//
//  log in.swift
//  Right Path
//
//  Created by Lulwah alduwaikhi on 03/09/2022.
//

import SwiftUI

struct log_in: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var Showlogin = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.indigo
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                
                    .ignoresSafeArea()
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack{
                    Text("login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUsername))
                    
                    SecureField("password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                      authenticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.indigo)
                    .cornerRadius(10)
                    
                    NavigationLink(destination:
                                    ContentView()
                                    ,isActive: $Showlogin) {
                        EmptyView()
                    }
            }
            }
            .navigationBarHidden(true)
           
            
        }
    }
    func authenticateUser(username: String, password: String){
    if username.lowercased() == "lulwah04" {
        wrongUsername = 0
        if password.lowercased() == "1234" {
            wrongPassword = 0
            Showlogin = true
        }else {
            wrongPassword = 2
        }
    
    }else {
        wrongUsername = 2
    }
    }
}

struct log_in_Previews: PreviewProvider {
    static var previews: some View {
        log_in()
    }
}
