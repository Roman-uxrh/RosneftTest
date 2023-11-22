//
//  ViewController.swift
//  RosneftTest
//
//  Created by admin on 22.11.2023.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    // MARK: - Outlets
    
    // MARK: Label
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Расчет эффективности \n системы очистки"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var oneParametrLabel: UILabel = {
        let label = UILabel()
        label.text = "Vнач                           м^3"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var twoParametrLabel: UILabel = {
        let label = UILabel()
        label.text = "Ркон                           г/см^3"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var threeParametrLabel: UILabel = {
        let label = UILabel()
        label.text = "Рнач                           г/см^3"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var fourParametrLabel: UILabel = {
        let label = UILabel()
        label.text = "Рдоб                           г/см^3"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var fiveParametrLabel: UILabel = {
        let label = UILabel()
        label.text = "Vсв                              м^3"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var sixParametrLabel: UILabel = {
        let label = UILabel()
        label.text = "dcp                              мм"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var sevenParametrLabel: UILabel = {
        let label = UILabel()
        label.text = "H                                   м"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var eightParametsLabel: UILabel = {
        let label = UILabel()
        label.text = "Ккв                               %"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var finalIndicatorLabel: UILabel = {
        let label = UILabel()
        label.text = "Введите данные и \n нажмите «рассчитать»"
        label.textColor = .black
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        label.numberOfLines = 2
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.systemGray4.cgColor
        return label
    }()
    
    // MARK: TextField
    
    private lazy var oneTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .center
        textField.placeholder = "0,00"
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var twoTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .center
        textField.placeholder = "0,00"
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var threeTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .center
        textField.placeholder = "0,00"
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var fourTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .center
        textField.placeholder = "0,00"
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var fiveTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .center
        textField.placeholder = "0,00"
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var sixTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .center
        textField.placeholder = "0,00"
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var sevenTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .center
        textField.placeholder = "0,00"
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var eightTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .center
        textField.placeholder = "0,00"
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    // MARK: Buttons
    
    private lazy var calculateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Рассчитать", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1
        button.backgroundColor = .cyan
        return button
    }()
    
    private lazy var oneButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        return button
    }()
    
    private lazy var twoButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        return button
    }()
    
    private lazy var threeButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        return button
    }()
    
    private lazy var fourButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        return button
    }()
    
    private lazy var fiveButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        return button
    }()
    
    private lazy var sixButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        return button
    }()
    
    private lazy var sevenButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        return button
    }()
    
    private lazy var eightButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .yellow
    }
    
    private func setupHierarchy() {
        
        [titleLabel, oneParametrLabel, twoParametrLabel,
         threeParametrLabel, fourParametrLabel, fiveParametrLabel,
         sixParametrLabel, sevenParametrLabel, eightParametsLabel,
         oneTextField, twoTextField, threeTextField,
         fourTextField, fiveTextField, sixTextField,
         sevenTextField, eightTextField, finalIndicatorLabel,
         calculateButton, oneButton, twoButton,
         threeButton, fourButton, fiveButton,
         sixButton, sevenButton, eightButton].forEach { view.addSubview($0) }
    }
    
    private func setupLayout() {
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(50)
        }
        
        oneParametrLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(30)
            make.left.equalTo(view).offset(30)
        }
        
        twoParametrLabel.snp.makeConstraints { make in
            make.top.equalTo(oneParametrLabel.snp.bottom).offset(25)
            make.left.equalTo(view).offset(30)
        }
        
        threeParametrLabel.snp.makeConstraints { make in
            make.top.equalTo(twoParametrLabel.snp.bottom).offset(25)
            make.left.equalTo(view).offset(30)
        }
        
        fourParametrLabel.snp.makeConstraints { make in
            make.top.equalTo(threeParametrLabel.snp.bottom).offset(25)
            make.left.equalTo(view).offset(30)
        }
        
        fiveParametrLabel.snp.makeConstraints { make in
            make.top.equalTo(fourParametrLabel.snp.bottom).offset(25)
            make.left.equalTo(view).offset(30)
        }
        
        sixParametrLabel.snp.makeConstraints { make in
            make.top.equalTo(fiveParametrLabel.snp.bottom).offset(25)
            make.left.equalTo(view).offset(30)
        }
        
        sevenParametrLabel.snp.makeConstraints { make in
            make.top.equalTo(sixParametrLabel.snp.bottom).offset(25)
            make.left.equalTo(view).offset(30)
        }
        
        eightParametsLabel.snp.makeConstraints { make in
            make.top.equalTo(sevenParametrLabel.snp.bottom).offset(25)
            make.left.equalTo(view).offset(30)
        }
        
        oneTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(30)
            make.left.equalTo(oneParametrLabel.snp.left).offset(67)
            make.width.equalTo(120)
            make.height.equalTo(33)
        }
        
        twoTextField.snp.makeConstraints { make in
            make.top.equalTo(oneTextField.snp.bottom).offset(21)
            make.left.equalTo(oneParametrLabel.snp.left).offset(67)
            make.width.equalTo(120)
            make.height.equalTo(33)
        }

        threeTextField.snp.makeConstraints { make in
            make.top.equalTo(twoTextField.snp.bottom).offset(21)
            make.left.equalTo(oneParametrLabel.snp.left).offset(67)
            make.width.equalTo(120)
            make.height.equalTo(33)
        }

        fourTextField.snp.makeConstraints { make in
            make.top.equalTo(threeTextField.snp.bottom).offset(21)
            make.left.equalTo(oneParametrLabel.snp.left).offset(67)
            make.width.equalTo(120)
            make.height.equalTo(33)
        }

        fiveTextField.snp.makeConstraints { make in
            make.top.equalTo(fourTextField.snp.bottom).offset(21)
            make.left.equalTo(oneParametrLabel.snp.left).offset(67)
            make.width.equalTo(120)
            make.height.equalTo(33)
        }

        sixTextField.snp.makeConstraints { make in
            make.top.equalTo(fiveTextField.snp.bottom).offset(21)
            make.left.equalTo(oneParametrLabel.snp.left).offset(67)
            make.width.equalTo(120)
            make.height.equalTo(33)
        }

        sevenTextField.snp.makeConstraints { make in
            make.top.equalTo(sixTextField.snp.bottom).offset(21)
            make.left.equalTo(oneParametrLabel.snp.left).offset(67)
            make.width.equalTo(120)
            make.height.equalTo(33)
        }

        eightTextField.snp.makeConstraints { make in
            make.top.equalTo(sevenTextField.snp.bottom).offset(21)
            make.left.equalTo(oneParametrLabel.snp.left).offset(67)
            make.width.equalTo(120)
            make.height.equalTo(33)
        }
        
        finalIndicatorLabel.snp.makeConstraints { make in
            make.top.equalTo(eightTextField.snp.bottom).offset(20)
            make.centerX.equalTo(view)
            make.height.equalTo(80)
            make.left.equalTo(view).offset(30)
            make.right.equalTo(view).offset(-30)
        }
        
        calculateButton.snp.makeConstraints { make in
            make.top.equalTo(finalIndicatorLabel.snp.bottom).offset(20)
            make.centerX.equalTo(view)
            make.height.equalTo(60)
            make.left.equalTo(view).offset(70)
            make.right.equalTo(view).offset(-70)
        }
        
        oneButton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(28)
            make.right.equalTo(view).offset(-45)
            make.height.width.equalTo(30)
        }
        
        twoButton.snp.makeConstraints { make in
            make.top.equalTo(oneButton.snp.bottom).offset(25)
            make.right.equalTo(view).offset(-45)
            make.height.width.equalTo(30)
        }
        
        threeButton.snp.makeConstraints { make in
            make.top.equalTo(twoButton.snp.bottom).offset(25)
            make.right.equalTo(view).offset(-45)
            make.height.width.equalTo(30)
        }
        
        fourButton.snp.makeConstraints { make in
            make.top.equalTo(threeButton.snp.bottom).offset(24)
            make.right.equalTo(view).offset(-45)
            make.height.width.equalTo(30)
        }
        
        fiveButton.snp.makeConstraints { make in
            make.top.equalTo(fourButton.snp.bottom).offset(24)
            make.right.equalTo(view).offset(-45)
            make.height.width.equalTo(30)
        }
        
        sixButton.snp.makeConstraints { make in
            make.top.equalTo(fiveButton.snp.bottom).offset(24)
            make.right.equalTo(view).offset(-45)
            make.height.width.equalTo(30)
        }
        
        sevenButton.snp.makeConstraints { make in
            make.top.equalTo(sixButton.snp.bottom).offset(24)
            make.right.equalTo(view).offset(-45)
            make.height.width.equalTo(30)
        }
        
        eightButton.snp.makeConstraints { make in
            make.top.equalTo(sevenButton.snp.bottom).offset(25)
            make.right.equalTo(view).offset(-45)
            make.height.width.equalTo(30)
        }
    }
    
    // MARK: - Actions
}
