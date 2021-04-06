//
//  {name}View.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation
import UIKit

protocol {name}ViewInterface: ViewInterface {

}

final class {name}View: UIViewController, {name}ViewInterface {

    var presenter: {name}PresenterViewInterface!


    override func viewDidLoad() {
        super.viewDidLoad()

        self.presenter.start()
    }

}

extension {name}View: {name}ViewPresenterInterface {

}
