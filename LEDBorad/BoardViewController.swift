//
//  ViewController.swift
//  LEDBorad
//
//  Created by MIN SEONG KIM on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroundColor")
        
        setUserTextField()
        setSendButton()
    }
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        resultLabel.text = userTextField.text
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        topView.isHidden = !topView.isHidden
        view.endEditing(true)
    }
    
    @IBAction func didEndOnExitTextField(_ sender: Any) {
        print("완료")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func setUserTextField() {
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.borderStyle = .none
        userTextField.textColor = .blue
    }
    
    func setSendButton() {
        sendButton.setTitle("전송", for: .normal)
        sendButton.setTitle("빨리보내!", for: .highlighted)
        sendButton.backgroundColor = .yellow
        sendButton.layer.cornerRadius = 8
        sendButton.layer.borderColor = UIColor.black.cgColor
        sendButton.layer.borderWidth = 3
        sendButton.setTitleColor(.red, for: .normal)
        sendButton.setTitleColor(.blue, for: .highlighted)
    }
}

