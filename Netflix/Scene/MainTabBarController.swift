//
//  MainTabBarController.swift
//  Netflix
//
//  Created by Fatih Oğuz on 8.10.2024.
//

import UIKit

// MARK: UICompanents
private let addView: UIView = {
    let view = UIView()
    view.backgroundColor = .systemRed
    view.translatesAutoresizingMaskIntoConstraints = false
    view.layer.cornerRadius = 20
    return view
}()

class MainTabBarController: UITabBarController {
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        createTabBar()
    }
    // MARK: AddTabBar
    private func createTabBar() {
        let home = UINavigationController(rootViewController: HomeViewController())
        let coming = UINavigationController(rootViewController: UpComingViewController())
        let search = UINavigationController(rootViewController: SearchViewController())
        let download = UINavigationController(rootViewController: DownloadViewController())
        
        home.tabBarItem.image = UIImage(systemName: "house.circle.fill")
        coming.tabBarItem.image = UIImage(systemName: "play.square.stack.fill")
        search.tabBarItem.image = UIImage(systemName: "magnifyingglass.circle.fill")
        download.tabBarItem.image = UIImage(systemName: "arrow.down.to.line.circle.fill")
        
        home.title = "Home"
        coming.title = "Coming Soon"
        search.title = "Search"
        download.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([home,coming,search,download], animated: true)
    }
    // MARK: SetupUI
    private func setupUI() {
     view.addSubview(addView)
    }
    
    //MARK: Constraints
    private func constraints() {
        NSLayoutConstraint.activate([
        
            addView.leadingAnchor.constraint(equalTo: tabBar.leadingAnchor, constant: -5),
            addView.trailingAnchor.constraint(equalTo: tabBar.trailingAnchor, constant: 5),
            addView.topAnchor.constraint(equalTo: tabBar.topAnchor, constant: -5),
            addView.bottomAnchor.constraint(equalTo: tabBar.bottomAnchor, constant: 5)
        ])
    }
    
}
