//
//  {name}Interactor.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation

protocol {name}InteractorInterface: InteractorInterface {

}

final class {name}Interactor: {name}InteractorInterface {

    weak var presenter: {name}PresenterInteractorInterface!
}

extension {name}Interactor: {name}InteractorPresenterInterface {

}
