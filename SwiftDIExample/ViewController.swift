//
//  ViewController.swift
//  SwiftDIExample
//
//  Created by Measna on 30/12/23.
//

import UIKit
import SwiftDI

class ViewController: UIViewController {
    
    @Inject(.context, qualifier: Const().isTesting ? UserServiceMock.self : UserServiceImpl.self)
    var userService: UserService?
    
    @Inject(.context, qualifier: UserServiceImpl.self)
    var userServiceContext: UserService?
    
    @Inject(.new)
    var userServiceNew: UserService?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let userService = self.userService {
            print("==userService==")
            userService.showCurrentUser()
        }
        
        if let userServiceContext = self.userServiceContext {
            print("==userServiceContext==")
            userServiceContext.showCurrentUser()
        }
        
        if let userServiceNew = self.userServiceNew {
            print("==userServiceNew==")
            userServiceNew.showCurrentUser()
        }
        
        print("finished!")
    }
}

