//
//  UserRepository.swift
//  SwiftDIExample
//
//  Created by Measna on 30/12/23.
//

import Foundation
import SwiftDI

@Contract
@objc protocol UserRepository {
    func getCurrentUser()
}

@Component
class UserRepositoryImpl: UserRepository {
    
    func getCurrentUser() {
        print("UserRepositoryImpl getCurrentUser called!")
    }
}

@Component
class UserRepositoryMock: UserRepository {
    
    func getCurrentUser() {
        print("UserRepositoryMock getCurrentUser called!")
    }
}
