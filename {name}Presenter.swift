//
//  {name}Presenter.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation

protocol {name}PresenterInterface: PresenterInterface {

}

final class {name}Presenter: {name}PresenterInterface {

    var router: {name}RouterPresenterInterface!
    var interactor: {name}InteractorPresenterInterface!
    weak var view: {name}ViewPresenterInterface!

}

extension {name}Presenter: {name}PresenterRouterInterface {

}

extension {name}Presenter: {name}PresenterInteractorInterface {

}

extension {name}Presenter: {name}PresenterViewInterface {

    func start() {

    }

}
