//
//  ViewController.swift
//  CodeBase_Practice
//
//  Created by 윤여진 on 2022/08/17.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let backgroundImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "background_image")
        return view
    }()
    
    let cancelButton: UIButton = {
        let view = UIButton()
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        view.setImage(UIImage(systemName: "x.square"), for: .normal)
        return view
    }()
    
    let settingButton: UIButton = {
        let view = UIButton()
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        view.setImage(UIImage(systemName: "gear"), for: .normal)
        return view
    }()
    
    let hexagonButton: UIButton = {
        let view = UIButton()
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        view.setImage(UIImage(systemName: "circle.hexagongrid.circle"), for: .normal)
        return view
    }()
    
    let giftButton: UIButton = {
        let view = UIButton()
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        view.setImage(UIImage(systemName: "gift.circle"), for: .normal)
        return view
    }()
    
    let profileImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleToFill
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.image = UIImage(named: "macaroon")
        return view
    }()
    
    let profileLabel: UILabel = {
        let view = UILabel()
        view.text = "개발하는 윤기사"
        view.font = .boldSystemFont(ofSize: 18)
        view.textAlignment = .center
        view.textColor = .white
        return view
    }()
    
    let underlineView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let chatButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "bubble.left.fill"), for: .normal)
        return view
    }()
    
    let chatLabel: UILabel = {
        let view = UILabel()
        view.text = "나와의 채팅"
        view.font = .boldSystemFont(ofSize: 13)
        view.textAlignment = .center
        view.textColor = .white
        return view
    }()
    
    let editButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "pencil"), for: .normal)
        return view
    }()
    
    let editLabel: UILabel = {
        let view = UILabel()
        view.text = "프로필 편집"
        view.font = .boldSystemFont(ofSize: 13)
        view.textAlignment = .center
        view.textColor = .white
        return view
    }()
    
    let kakaostoryButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "quote.closing"), for: .normal)
        return view
    }()
    
    let kakaostoryLabel: UILabel = {
        let view = UILabel()
        view.text = "카카오스토리"
        view.font = .boldSystemFont(ofSize: 13)
        view.textAlignment = .center
        view.textColor = .white
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        configureUI()
    }
    
    func configureUI() {
        
        //photoImageView.translatesAutoresizingMaskIntoConstraints = false -> SnapKit에 들어있음
        [backgroundImageView, cancelButton, settingButton, hexagonButton, giftButton, profileImageView, profileLabel, underlineView, chatButton, chatLabel, editLabel, editButton, kakaostoryButton, kakaostoryLabel].forEach {
            view.tintColor = .white
            view.addSubview($0)
        }
        backgroundImageView.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.leadingMargin.equalTo(0)
            make.trailingMargin.equalTo(0)
            make.bottom.equalTo(0)
        }
        
        cancelButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.leading.equalTo(20)
            make.width.equalTo(24)
            make.height.equalTo(24)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.trailing.equalTo(-20)
            make.width.equalTo(24)
            make.height.equalTo(24)
        }
        
        hexagonButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.trailing.equalTo(settingButton).offset(-44)
            make.width.equalTo(24)
            make.height.equalTo(24)
        }
        giftButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.trailing.equalTo(hexagonButton).offset(-44)
            make.width.equalTo(24)
            make.height.equalTo(24)
        }
        profileImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view).offset(100)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        profileLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(profileImageView.snp_bottomMargin).offset(30)
            make.width.equalTo(150)
            make.height.equalTo(44)
        }
        underlineView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.top.equalTo(profileLabel.snp_bottomMargin).offset(60)
            make.height.equalTo(1)
        }
        chatButton.snp.makeConstraints { make in
            make.leading.equalTo(80)
            make.top.equalTo(underlineView.snp_bottomMargin).offset(30)
            make.width.equalTo(44)
            make.height.equalTo(44)
        }
        chatLabel.snp.makeConstraints { make in
            make.top.equalTo(chatButton.snp_bottomMargin).offset(10)
            make.leading.equalTo(chatButton.snp_leadingMargin).offset(-22)
            make.width.equalTo(80)
            make.height.equalTo(50)
        }
        editButton.snp.makeConstraints { make in
            make.leading.equalTo(chatButton.snp_leadingMargin).offset(100)
            make.top.equalTo(underlineView.snp_bottomMargin).offset(30)
            make.width.equalTo(44)
            make.height.equalTo(44)
        }
        editLabel.snp.makeConstraints { make in
            make.top.equalTo(editButton.snp_bottomMargin).offset(10)
            make.leading.equalTo(editButton.snp_leadingMargin).offset(-22)
            make.width.equalTo(80)
            make.height.equalTo(50)
        }
        kakaostoryButton.snp.makeConstraints { make in
            make.leading.equalTo(editButton.snp_leadingMargin).offset(100)
            make.top.equalTo(underlineView.snp_bottomMargin).offset(30)
            make.width.equalTo(44)
            make.height.equalTo(44)
        }
        kakaostoryLabel.snp.makeConstraints { make in
            make.top.equalTo(kakaostoryButton.snp_bottomMargin).offset(10)
            make.leading.equalTo(kakaostoryButton.snp_leadingMargin).offset(-22)
            make.width.equalTo(80)
            make.height.equalTo(50)
        }
        
        
    }
    
    
    
    
}



