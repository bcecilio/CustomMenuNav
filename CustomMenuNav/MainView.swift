//
//  MainView.swift
//  CustomMenuNav
//
//  Created by Brendon Cecilio on 2/22/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    public var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "iphoneWallpaper")
        return image
    }()
    
    public lazy var mainButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        button.frame = CGRect(x: 0, y: 0, width: button.frame.width / 3, height: 100)
        button.layer.cornerRadius = 41.2
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 1
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 5
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.addTarget(self, action: #selector(animateButtons), for: .touchUpInside)
        return button
    }()
    
    public lazy var button1: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: button.frame.width / 4, height: 100)
        button.layer.cornerRadius = 41.2
        button.setImage(UIImage(named: "icons8-camcorder_pro"), for: .normal)
        button.backgroundColor = .white
        button.alpha = 0
        return button
    }()
    
    public lazy var button2: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: button.frame.width / 4, height: 100)
        button.layer.cornerRadius = 41.2
        button.backgroundColor = .white
        button.setImage(UIImage(named: "icons8-cup"), for: .normal)
        button.alpha = 0
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
    
    let visualEffectView = UIVisualEffectView(effect: nil)
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupBackground()
        blurEffect()
        setupButton2()
        setupButton()
        setUpMainButton()
    }
    
    private func setupBackground() {
        addSubview(backgroundImage)
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    fileprivate func blurEffect() {
        addSubview(visualEffectView)
        visualEffectView.frame = frame
    }
    
    private func setUpMainButton() {
        addSubview(mainButton)
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainButton.heightAnchor.constraint(equalToConstant: 80),
            mainButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 290),
            mainButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            mainButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40)
        ])
    }
    
    private func setupButton() {
        addSubview(button1)
        button1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 290),
            button1.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            button1.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40)
        ])
    }
    
    private func setupButton2() {
        addSubview(button2)
        button2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 290),
            button2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            button2.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40)
        ])
    }
    
    @objc private func animateButtons() {
        if button1.alpha == 0 && button2.alpha == 0 {
            button1.alpha = 1
            button2.alpha = 1
            UIView.animate(withDuration: 0.2, delay: 0.0, options: [.curveLinear], animations: {
                self.button1.transform = CGAffineTransform(translationX: 0, y: -100)
                self.button2.transform = CGAffineTransform(translationX: 0, y: -200)
                self.visualEffectView.effect = UIBlurEffect(style: .regular)
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.2, delay: 0.0, options: [.curveLinear], animations: {
                self.button1.transform = .identity
                self.button2.transform = .identity
                self.visualEffectView.effect = nil
            }, completion: nil)
            button1.alpha = 0
            button2.alpha = 0
        }
    }
}
