//
//  PlayerInteractor.swift
//  MusicApp
//
//  Created by Artyom Ivanov on 05.10.2024.
//

import Foundation

protocol PlayerInteractorProtocol {
    func fetchTrack()
}

/*
 Бизнес-логика приложения
 Логика приложения (обработка данных). Получает данные, например, от API или локального хранилища.

 Класс: MusicInteractor
 Задачи:
 Получение списка треков.
 Обработка логики проигрывания треков.
 Взаимодействие с репозиторием или сервисами для получения/хранения данных.
 */

final class PlayerInteractor: PlayerInteractorProtocol {
    weak var presenter: PlayerPresenterProtocol?

    func fetchTrack() {
        // логика получения треков с API(к примкеру)
    }
}
