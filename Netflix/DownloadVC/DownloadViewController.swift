//
//  DownloadViewController.swift
//  Netflix
//
//  Created by Fatih Oğuz on 7.10.2024.
//

import UIKit
    // MARK: UICompanents
private let downView: UIView = {
   let view = UIView()
    view.backgroundColor = .systemBackground
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
    
}()

class DownloadViewController: UIViewController {
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        constraints()
        
    }
    // MARK: SetupUI
    private func setupUI(){
        view.addSubview(downView)
    }
    // MARK: Constraints
    private func constraints() {
        
        NSLayoutConstraint.activate([
        
        ])
    }
}
