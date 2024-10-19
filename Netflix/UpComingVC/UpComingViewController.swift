//
//  UpComingViewController.swift
//  Netflix
//
//  Created by Fatih Oğuz on 7.10.2024.
//

import UIKit
 
  // MARK: UIComponents
private let upView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .red
    return view
}()

class UpComingViewController: UIViewController {
    
   // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        constraints()
    }
  // MARK: SetupUI
    private func setupUI() {
        view.addSubview(upView)
        
    }
  // MARK: Constreaints
    private func constraints() {
        
        NSLayoutConstraint.activate([
            upView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            upView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            upView.topAnchor.constraint(equalTo: view.topAnchor),
            upView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
        
    }
}
