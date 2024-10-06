//
//  PlayerRouter.swift
//  MusicApp
//
//  Created by Artyom Ivanov on 06.10.2024.
//

import UIKit

protocol PlayerRouterProtocol {
    func toTrackDetail(artist: String, image: UIImage)
}


/*
 Управляет переходами между экранами.

 Класс: MusicRouter
 Задачи:
 Организация навигации, переходов на экраны детальной информации о треке, плейлисты и т.д.
 */

class PlayerRouter: PlayerRouterProtocol {
    weak var viewController: PlayerViewController?
    
    init(viewController: PlayerViewController? = nil) {
        self.viewController = viewController
    }
    
    func toTrackDetail(artist: String, image: UIImage) {
        let viewController = TrackDetailViewController(artist: artist, image: image)
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
}
