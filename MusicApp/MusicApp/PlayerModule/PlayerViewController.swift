//
//  PlayerViewController.swift
//  MusicApp
//
//  Created by Artyom Ivanov on 03.10.2024.
//

import UIKit


/* 
 AnyObject - ключевое слово, говорящее что протокол может быть реализован только классами
 */

protocol PlayerViewControllerProtocol: AnyObject {
    
}

class PlayerViewController: UIViewController, PlayerViewControllerProtocol {

    var presenter: PlayerPresenterProtocol
    
    init(presenter: PlayerPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension PlayerViewController {
    func configureView() {
        configureBackground()
        addSubviews()
    }
    
    func configureBackground() {
        let gradient = CAGradientLayer()
        
        gradient.frame = view.bounds
        gradient.transform = CATransform3DMakeRotation(.pi / 2, 0, 0, 1)
        gradient.colors = [UIColor.systemGreen.cgColor, UIColor.white.cgColor, UIColor.systemGreen.cgColor]
        
        view.layer.addSublayer(gradient)
    }
    
    func addSubviews() {
        setupConstraints()
    }
    
    func setupConstraints() {
        
    }
}
