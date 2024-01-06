//
//  UserService.swift
//  SwiftDIExample
//
//  Created by Measna on 30/12/23.
//

import Foundation
import SwiftDI

@Contract
@objc protocol UserService {
    func showCurrentUser()
}

@Component
class UserServiceImpl: UserService {
    
    @Inject(.context, qualifier: UserRepositoryImpl.self)
    private var userRepository: UserRepository?
    
    func showCurrentUser() {
        print("UserServiceImpl called")
        userRepository?.getCurrentUser()
    }
}

@Component
class UserServiceMock: UserService {
    
    @Inject(.context, qualifier: UserRepositoryMock.self)
    private var userRepository: UserRepository?
    
    func showCurrentUser() {
        print("UserServiceMock called")
        userRepository?.getCurrentUser()
    }
}
