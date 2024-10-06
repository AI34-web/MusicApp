//
//  YouLikeMusicVC.swift
//  MusicApp
//
//  Created by Artyom Ivanov on 03.10.2024.
//

import UIKit

class YouLikeMusicVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }


}

private extension YouLikeMusicVC {
    func configureView() {
        configureBackground()
        addSubviews()
    }
    
    func configureBackground() {
        view.backgroundColor = .green
    }
    
    func addSubviews() {
        setupConstraints()
    }
    
    func setupConstraints() {
        
    }
}
