//
//  ViewController.swift
//  Nasam
//
//  Created by İlyas Abiyev on 12/10/19.
//  Copyright © 2019 İlyas Abiyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let loginView = UIImageView(image: #imageLiteral(resourceName: "loginview"))
    
    //loginField
    let loginField : UITextField = {
        
        let login = UITextField()
        
      let image = UIImage(named: "loginicon")
        login.loginIcon(image!)

        login.attributedPlaceholder = NSAttributedString(string: "Email Adress",attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        login.backgroundColor = .lightText
        
        login.textColor = UIColor.black
        
        login.tintColor = UIColor.black
        
        
        login.borderStyle = .roundedRect
        login.layer.borderWidth = 1
        login.layer.borderColor = UIColor.white.cgColor

        login.adjustsFontSizeToFitWidth = true
        login.minimumFontSize = 10
    
        login.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        return login
    }()
    
    //passwordField
    let passwordField : UITextField = {
       let password = UITextField()
       
        let image = UIImage(named: "passwordicon")
        password.loginIcon(image!)
        
        password.attributedPlaceholder = NSAttributedString(string: "Password",attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        password.backgroundColor = .lightText
        
        password.textColor = UIColor.black
        
        password.tintColor = UIColor.black
        
        
        password.borderStyle = .roundedRect
        password.layer.borderWidth = 1
        password.layer.borderColor = UIColor.white.cgColor
        
        password.adjustsFontSizeToFitWidth = true
        password.minimumFontSize = 10
        
        password.isSecureTextEntry = true
        
        password.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return password
    }()
    
    let loginButton : UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.white.cgColor
        button.setTitle("LOGIN", for: .normal)
        button.addTarget(self, action: #selector(loginButtonAction), for: .touchUpInside)
        return button
    }()
    
    let passwordButton : UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.white.cgColor
        button.setTitle("CREATE AN ACCOUNT", for: .normal)
        button.addTarget(self, action: #selector(passwordButtonAction), for: .touchUpInside)
        return button
    }()
    
    let forgotPasswordButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitle("Forgot Password?", for: .normal)
        button.addTarget(self, action: #selector(forgotButtonAction), for: .touchUpInside)
        return button
    }()
    
    
    let orLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "OR"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    let logoImage : UIImageView = {
       let logo = UIImageView(image: #imageLiteral(resourceName: "logo"))
        logo.contentMode = .scaleAspectFill

        return logo
    }()
   
    
//    let hat1Label : UIView = {
//        let hat1 = UIView()
//        hat1.backgroundColor = .black
//        return hat1
//
//    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        view.addSubview(loginView)
        view.addSubview(loginButton)
        view.addSubview(passwordButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(orLabel)
        view.addSubview(logoImage)
        //view.addSubview(hat1Label)
        
        
        
        _ = loginView.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor)
        
        let registationView = UIStackView(arrangedSubviews: [
            loginField,
            passwordField
        ])
        
        view.addSubview(registationView)
        
        registationView.axis = .vertical
        
        registationView.spacing = 10
        
        _ = registationView.anchor(top: nil, bottom: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor,padding: .init(top: 0, left: 30, bottom: 0, right: 30))
        
        _ = loginButton.anchor(top: registationView.bottomAnchor, bottom: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 50, left: 30, bottom: 0, right: 30), boyut: .init(width: 0, height: 50))
        
        _ = passwordButton.anchor(top: loginButton.bottomAnchor, bottom: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 80, left: 30, bottom: 0, right: 30), boyut: .init(width: 0, height: 50))
        
        _ = forgotPasswordButton.anchor(top: registationView.bottomAnchor, bottom: nil, leading: nil, trailing: view.trailingAnchor, padding: .init(top: 5, left: 0, bottom: 0, right: 30), boyut: .init(width: 0, height: 10))
        
        _ = orLabel.anchor(top: loginButton.bottomAnchor, bottom: passwordButton.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 25, left: 0, bottom: 25, right: 0), boyut: .init(width: 0, height: 20))
        
        _ = logoImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: registationView.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 50, left: 70, bottom: 50, right:70), boyut: .zero)
        
//        _ = hat1Label.anchor(top: , bottom: passwordButton.topAnchor, leading: nil, trailing: orLabel.leadingAnchor, padding: .init(top: 5, left: 0, bottom: 5, right: 5), boyut: .init(width: 150, height: 150))
        
        
        
        registationView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    @objc func loginButtonAction() {
        print("Login Tapped")
    }
    
    @objc func passwordButtonAction() {
        let vc = UIViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func forgotButtonAction() {
        print("Forgot Tapped")
    }
    
    
    
}


