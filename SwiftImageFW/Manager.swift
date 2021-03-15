//
//  Manager.swift
//  CinematicFramework
//
//  Created by Mohammad Jahir on 3/11/21.
//

import Foundation
import UIKit

public class Manager{
    public init(){}
    //sdkVerificationCode:String
    public func viewController() -> UIViewController{
        let vc  = UINavigationController(rootViewController: ViewController()) 
        //vc.sdkVerifyCode = sdkVerificationCode
        return vc;
    }
}
