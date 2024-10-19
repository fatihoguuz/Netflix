//
//  SearchViewController.swift
//  Netflix
//
//  Created by Fatih Oğuz on 7.10.2024.
//

import UIKit

    // MARK: UICompanents
private let searchView : UIView = {
   let view = UIView()
    view.backgroundColor = .systemBackground
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

class SearchViewController: UIViewController {
   // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        constraints()
    }
   // MARK: SetupUI
    private func setupUI() {
        view.addSubview(searchView)
    }
    // MARK: Constraints
    private func constraints() {
        
        NSLayoutConstraint.activate([
        
        ])
        
    }
}
