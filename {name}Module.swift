//
//  {name}Module.swift
//  {project}
//
//  Created by {author} on {date}.
//
import Foundation
import UIKit

// MARK: - router

protocol {name}RouterPresenterInterface: RouterPresenterInterface {

}

// MARK: - presenter

protocol {name}PresenterRouterInterface: PresenterRouterInterface {

}

protocol {name}PresenterInteractorInterface: PresenterInteractorInterface {

}

protocol {name}PresenterViewInterface: PresenterViewInterface {
    func start()
}

// MARK: - interactor

protocol {name}InteractorPresenterInterface: InteractorPresenterInterface {

}

// MARK: - view

protocol {name}ViewPresenterInterface: ViewPresenterInterface {

}

protocol {name}ModuleInterface: ModuleInterface {

}

// MARK: - module builder

final class {name}Module: {name}ModuleInterface {

    typealias View = {name}ViewInterface
    typealias Presenter = {name}PresenterInterface
    typealias Router = {name}RouterInterface
    typealias Interactor = {name}InteractorInterface

    func build() -> UIViewController? {
        let resolver = MainAssembler.shared.assembler.resolver

        let view = resolver.resolve(View.self) as? {name}HomeView
        let presenter = resolver.resolve(Presenter.self) as? {name}HomePresenter
        let router = resolver.resolve(Router.self) as? {name}HomeRouter
        let interactor = resolver.resolve(Interactor.self) as? {name}HomeInteractor

        if let view = view, let presenter = presenter, let router = router, let interactor = interactor {
            presenter.interactor = interactor
            presenter.router = router
            presenter.view = view
            router.viewController = view
            interactor.presenter = presenter
            view.presenter = presenter
        } else {
            return UIViewController()
        }

        return view
    }
}
