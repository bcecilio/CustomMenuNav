//
//  MainView.swift
//  CustomMenuNav
//
//  Created by Brendon Cecilio on 2/22/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class MainView: UIView {

    public lazy var stackView: UIStackView = {
        let SV = UIStackView(arrangedSubviews: [button1, button2, button3, button4])
        SV.axis = .vertical
        SV.distribution = .equalSpacing
        SV.backgroundColor = .lightGray
        SV.spacing = 40
        return SV
    }()
    
    public lazy var button1: UIButton = {
        let button = UIButton()
//        button.backgroundColor = .white
        button.setImage(UIImage(named: "icons8-camcorder_pro"), for: .normal)
        return button
    }()
    
    public lazy var button2: UIButton = {
        let button = UIButton()
//        button.backgroundColor = .white
        button.setImage(UIImage(named: "icons8-cup"), for: .normal)
        return button
    }()
    
    public lazy var button3: UIButton = {
        let button = UIButton()
//        button.backgroundColor = .white
        button.setImage(UIImage(named: "icons8-search"), for: .normal)
        return button
    }()
    
    public lazy var button4: UIButton = {
        let button = UIButton()
//        button.backgroundColor = .white
        button.setImage(UIImage(named: "icons8-umbrella"), for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setUpStackView()
    }
    
    private func setUpStackView() {
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
    }
}
