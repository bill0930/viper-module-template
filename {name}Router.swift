//
//  {name}Router.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation
import UIKit

protocol {name}RouterInterface: RouterInterface {
    
}

final class {name}Router: {name}RouterInterface {

    weak var presenter: {name}PresenterRouterInterface!

    weak var viewController: UIViewController?
}

extension {name}Router: {name}RouterPresenterInterface {

}