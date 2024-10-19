//
//  HomeViewController.swift
//  Netflix
//
//  Created by Fatih Oğuz on 7.10.2024.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
    }
    func setupUI() {
       
        tableView.delegate = self
        tableView.dataSource = self
        let hero = MainHeroHeaderView(frame: CGRect(x: 0, y: 50, width: screenWidht, height: screenHeight * 0.25))
        tableView.tableHeaderView = hero
        tableView.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}
