//
//  MainView.swift
//  CustomMenuNav
//
//  Created by Brendon Cecilio on 2/22/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    public lazy var mainButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        button.frame = CGRect(x: 0, y: 0, width: button.frame.width / 3, height: 100)
        button.layer.cornerRadius = 41.2
//        button.clipsToBounds = true
        return button
    }()

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
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
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
        setUpMainButton()
    }
    
    private func setUpMainButton() {
        addSubview(mainButton)
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainButton.heightAnchor.constraint(equalToConstant: 80),
            mainButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 250),
            mainButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
            mainButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
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
