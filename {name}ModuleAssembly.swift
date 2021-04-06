//
//  {name}View.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation
import Swinject
import SwinjectAutoregistration

class {name}ModuleAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister({name}RouterInterface.self, initializer: {name}Router.init)
        container.autoregister({name}PresenterInterface.self, initializer: {name}Presenter.init)
        container.autoregister({name}InteractorInterface.self, initializer: {name}Interactor.init)
        container.autoregister({name}ModuleInterface.self, initializer: {name}Module.init)
        container.autoregister({name}ViewInterface.self, initializer: {name}View.init as () -> {name}View)
    }
}