//
//  FirstViewController.swift
//  31th IN_SOPT_First_Seminar
//
//  Created by Joon Baek on 2022/10/02.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let resultLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 80, y: 200, width: 300, height: 30))
        label.text = "당신의 선택은 이거였군요!"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    private let backButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 150, y: 260, width: 80, height: 30))
        button.setTitle("뒤로가기", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .medium)
        button.addTarget(self, action: #selector(touchupBackButton), for: .touchUpInside)
        return button
    }()
    
    var result: String?
    
    //MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components:[Any] = [resultLabel, backButton]
        components.forEach {
            view.addSubview($0 as! UIView)
        }
    }
    
    //MARK: - Action Helpers
    
//    func dataBind() {
//        guard let result = self.result else {return}
//        resultLabel.text = "당신의 선택은 \(result)였군요!"
//    }
    
    func dataBind(result:String) {
        resultLabel.text = "당신의 선택은 \(result)였군요!"
    }
    
    @objc
    private func touchupBackButton() {
        if self.navigationController == nil {
            self.dismiss(animated: true)
        }
        else {
            self.navigationController?.popViewController(animated: true)
        }
    }
}
