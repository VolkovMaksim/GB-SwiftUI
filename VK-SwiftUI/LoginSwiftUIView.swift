//
//  LoginSwiftUIView.swift
//  VK-SwiftUI
//
//  Created by Maksim Volkov on 13.05.2022.
//

import SwiftUI

struct LoginSwiftUIView: View {
    
    @State var isOn: Bool = false
    @State var login: String = ""
    @State var password: String = ""
    @State var isLocked: Bool = false
    
    var body: some View {
        GeometryReader { geometryProxy in
            VStack {
                Image("vk_logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                VStack {
                    Image("")
                    Text("Введите логин")
                    TextField("Login", text: $login)
                        .frame(width: 200, height: 30, alignment: .center)
                        .background(.white)
                        .cornerRadius(5)
                }
                VStack {
                    Text("Введите пароль")
                    TextField("Password", text: $password)
                        .frame(width: 200, height: 30, alignment: .center)
                        .background(.white)
                        .cornerRadius(5)
                }
                Button("ЖМИ МЕНЯ", action: checkLogin)
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(.green)
                    .cornerRadius(10)
            }
            .frame(width: geometryProxy.size.width, height: geometryProxy.size.height)
            .background(.gray)
            
        }
    }
    
    func checkLogin() {
        print("НАЖАЛ КНОПКУ")
    }
    
    

    
    
}
