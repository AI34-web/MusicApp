//
//  DIContainer.swift
//  MusicApp
//
//  Created by Artyom Ivanov on 05.10.2024.
//

import UIKit

class DIContainer {
    
    func resolveMusicModule() -> UIViewController {
//        let interactor = PlayerInteractor()
//        let router = PlayerRouter()
//        let presenter = PlayerPresenter(interactor: interactor)
//        let view = PlayerViewController(presenter: presenter)
        
        let interactor = PlayerInteractor()
        let router = PlayerRouter()
        let presenter = PlayerPresenter(interactor: interactor, router: router)
        let view = PlayerViewController(presenter: presenter)
        
        // Устанавливаем связь между presenter и view
        presenter.view = view
        
        // Обновляем router, чтобы он знал о viewController
        router.viewController = view
        
        // Устанавливаем связь interactor -> presenter
        interactor.presenter = presenter
        
        return view
    }
}

