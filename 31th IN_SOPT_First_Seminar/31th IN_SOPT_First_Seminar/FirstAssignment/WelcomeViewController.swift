//
//  WelcomeViewController.swift
//  31th IN_SOPT_First_Seminar
//
//  Created by Joon Baek on 2022/10/03.
//

import UIKit

//MARK: -

class WelcomeViewController: UIViewController {
    
    private let welcomeLabel:UILabel = {
        let label = UILabel(frame: CGRect(x: 90, y: 230, width: 200, height: 100))
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let confirmButton:UIButton = {
        let button = UIButton(frame: CGRect(x: 45, y: 400, width: 300 , height: 40))
        button.setTitleColor(.black, for: .normal)
        button.setTitle("확인", for: .normal)
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(touchupBackButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Variables
    
    var userName: String?
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components:[Any] = [welcomeLabel,confirmButton]
        components.forEach {
            view.addSubview($0 as! UIView)
        }
    }
    
    //    func dataBind() {
    //        guard let userName = self.userName else {return}
    //        welcomeLabel.text= "\(userName)님 환영합니다!"
    //    }
    //
    func dataBind(userName: String) {
        welcomeLabel.text = "\(userName)님 환영합니다!"
    }
    
    @objc
    private func touchupBackButton() {
        
        guard let presentingVC = self.presentingViewController as? UINavigationController else { return }
        dismiss(animated: true) {
            presentingVC.popToRootViewController(animated: false)
        }
        
        //    @objc
        //    private func touchupBackButton() {
        //        self.dismiss(animated: true, completion: nil)
        //        }
    }
}
