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

/// Music list
class PlayerViewController: UIViewController, PlayerViewControllerProtocol {

    // MARK: Propeties
    var presenter: PlayerPresenterProtocol
    
    // TODO: Remove after
    let imageArray: [Track] = [
        Track(artist: "Артист0", url: UIImage(resource: .image0)),
        Track(artist: "Артист1", url: UIImage(resource: .image1)),
        Track(artist: "Артист2", url: UIImage(resource: .image2)),
        Track(artist: "Артист3", url: UIImage(resource: .image3)),
        Track(artist: "Артист4", url: UIImage(resource: .image4)),
        Track(artist: "Артист5", url: UIImage(resource: .image5)),
        Track(artist: "Артист6", url: UIImage(resource: .image6)),
        Track(artist: "Артист7", url: UIImage(resource: .image7)),
        Track(artist: "Артист8", url: UIImage(resource: .image8)),
        Track(artist: "Артист9", url: UIImage(resource: .image9))
    ]
    
    // MARK: Controller's lifecycle
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
    
    // MARK: UIElements
    private lazy var table: UITableView = {
        let table = UITableView()
        table.separatorStyle = .singleLine
        table.dataSource = self
        table.delegate = self
        table.register(
            UITableViewCell.self,
            forCellReuseIdentifier: "cell"
        )
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
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
        view.addSubview(table)
        setupConstraints()
    }
    
    func setupConstraints() {
        table.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        table.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        table.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -14).isActive = true
    }
}

// MARK: - Actions
private extension PlayerViewController {
    @objc private func toTrackDetail() {
        
    }
}

extension PlayerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = imageArray[indexPath.row].artist
        
        
        let image = UIImageView()
        image.image = imageArray[indexPath.row].url
        return cell
    }
}

extension PlayerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.toTrackDetail(artist: imageArray[indexPath.row].artist, image: imageArray[indexPath.row].url)
    }
}
