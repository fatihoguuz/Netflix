//
//  MainHeroHeaderView.swift
//  Netflix
//
//  Created by Fatih Oğuz on 16.10.2024.
//

import UIKit

class MainHeroHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUI() {
        lazy var heroImageView = UIImageView()
        heroImageView.image = UIImage(named: "1")
        addSubview(heroImageView)
        heroImageView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.left.right.equalToSuperview()
            make.bottom.equalTo(screenHeight * 0.35)
        }
    }
}
