//
//  TrackDetailViewController.swift
//  MusicApp
//
//  Created by Artyom Ivanov on 06.10.2024.
//

import UIKit
 
class TrackDetailViewController: UIViewController {
    
    // MARK: Propeties
    var artist: String
    var image: UIImage
    
    // MARK: ViewController's lifecycle
    init(artist: String, image: UIImage) {
        self.artist = artist
        self.image = image
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

// MARK: - Private functions
private extension TrackDetailViewController {
    func configureView() {
        backgroundConfigure()
        addSubviews()
    }
    
    func backgroundConfigure() {
        view.backgroundColor = .orange
    }
    
    func addSubviews() {
        setupConstraints()
    }
    
    func setupConstraints() {
        
    }
}

