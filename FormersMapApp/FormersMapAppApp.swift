//
//  FormersMapAppApp.swift
//  FormersMapApp
//
//  Created by 小野寺良太 on 2023/09/13.
//

import SwiftUI

@main
struct YourApp: App {
    @StateObject private var vm = LocationsViewModel()
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var loggedIn = false
    
    var body: some Scene {
        WindowGroup {
            if loggedIn {
                LocationsView()
                    .environmentObject(vm)
            } else {
                ContentView(
                    username: $username,
                    password: $password,
                    wrongUsername: $wrongUsername,
                    wrongPassword: $wrongPassword,
                    showingLoginScreen: $showingLoginScreen,
                    loggedIn: $loggedIn
                )
            }
        }
    }
}

struct ContentView: View {
    @Binding var username: String
    @Binding var password: String
    @Binding var wrongUsername: Int
    @Binding var wrongPassword: Int
    @Binding var showingLoginScreen: Bool
    @Binding var loggedIn: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack {
                    
                    HStack {
                        HStack {
                            Image(systemName: "leaf.circle.fill") // 葉っぱのアイコンを表示
                                .font(.system(size: 50))
                                .foregroundColor(.green) // 緑色の色を指定
                            
                            Text("トラベジ")
                                .font(.custom("Dancing Script", size: 40)) // 可愛らしいフォントを指定
                                .bold()
                                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color.yellow) // 緑色の背景色を指定
                                )
                                .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 0, y: 5)
                        }
                        
                        
                    }
                    
                    
                    Text("Login")
                        .font(.largeTitle)
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        autheticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(
                        destination: Text("You are logged in @\(username)"),
                        isActive: $showingLoginScreen
                    ) {
                        EmptyView()
                    }
                    
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    func autheticateUser(username: String, password: String) {
        if username.lowercased() == "onodera" {
            wrongUsername = 0
            if password.lowercased() == "1234" {
                wrongPassword = 0
                loggedIn = true
            } else {
                wrongPassword = 1
            }
        } else {
            wrongUsername = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            username: .constant(""),
            password: .constant(""),
            wrongUsername: .constant(0),
            wrongPassword: .constant(0),
            showingLoginScreen: .constant(false),
            loggedIn: .constant(false))
    }
}



