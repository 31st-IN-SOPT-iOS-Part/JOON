//
//  SignInViewController.swift
//  31th IN_SOPT_First_Seminar
//
//  Created by Joon Baek on 2022/10/03.
//

import UIKit

class SignInViewController: UIViewController {
    
    //MARK: - UIComponents
    
    private let startLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 110, y: 100, width: 300, height: 30))
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.text = "카카오톡을 시작합니다"
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 50, y: 130, width: 300, height: 50))
        label.font = .systemFont(ofSize: 13, weight: .medium)
        label.text = "사용하시던 카카오계정이 있다면 \n이메일 또는 전화번호로 로그인해 주세요."
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private let emailTextField: UITextField = {
        
        let textField = UITextField(frame: CGRect(x: 50, y: 210, width: 300, height: 40))
        textField.borderStyle = .roundedRect
        textField.font = .systemFont(ofSize: 15, weight: .medium)
        textField.text = "이메일 또는 전화번호"
        return textField
    }()
    
    //    private let emailUnderLineView: UIView = {
    //        let view = UIView(frame: CGRect(x: 50, y: 240, width: 300, height: 1))
    //        view.backgroundColor = .black
    //        return view
    //    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 50, y: 260, width: 300, height: 40))
        textField.font = .systemFont(ofSize: 15, weight: .medium)
        textField.borderStyle = .roundedRect
        textField.text = "비밀번호"
        return textField
    }()
    
    //    private let passwordUnderLineView: UIView = {
    //        let view = UIView(frame: CGRect(x: 130, y: 250, width: 300, height: 1))
    //        view.backgroundColor = .black
    //        return view
    //    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: 340, width: 300, height: 40))
        button.setTitle("카카오계정 로그인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.addTarget(self, action: #selector(presentToWelcomeVC), for: .touchUpInside)
        return button
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: 390, width: 300, height: 40))
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        button.addTarget(self, action: #selector(pushTopSignUpVC), for: .touchUpInside)
        return button
    }()
    
    private let findButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: 440, width: 300, height: 40))
        button.setTitle("카카오계정 또는 비밀번호 찾기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray6
        return button
    }()
    
    
    //MARK: - Life cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components:[Any] = [startLabel,descriptionLabel,emailTextField,passwordTextField,passwordTextField,loginButton,signInButton,findButton]
        components.forEach{
            view.addSubview($0 as! UIView)
        }
    }
    
    
    @objc
    private func presentToWelcomeVC() {
        
        let welcomeVC = WelcomeViewController()
        
        if let email = emailTextField.text {
            welcomeVC.dataBind(userName: email)
            
        }
        self.present(welcomeVC,animated: true, completion: nil)
        
    }
    
    @objc
    private func pushTopSignUpVC() {
        let signUpVC = SignUpViewController()
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
}

