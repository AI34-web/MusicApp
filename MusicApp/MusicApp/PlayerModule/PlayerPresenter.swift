//
//  PlayerPresenter.swift
//  MusicApp
//
//  Created by Artyom Ivanov on 05.10.2024.
//

import UIKit

protocol PlayerPresenterProtocol: AnyObject {
    func viewDidLoad()
}

/*
 Управляет отображением данных во View, преобразуя их для отображения. Обрабатывает пользовательские действия, полученные от View.
 
 Задачи:
 - Передача данных из Interactor в View.
 - Обработка действий пользователя и вызов соответствующих методов в Interactor.
 */

///  Обработка данных перед отображением и после обработки пользовательских действий
class PlayerPresenter: PlayerPresenterProtocol {
    weak var view: PlayerViewControllerProtocol?
    var interactor: PlayerInteractorProtocol
    var router: PlayerRouterProtocol
    
    init(
        interactor: PlayerInteractorProtocol,
        router: PlayerRouterProtocol
    ) {
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        
    }
}
