//
//  ViewController.swift
//  PiCK_HomeWork2
//
//  Created by 장태균 on 5/25/26.
//

import UIKit

class ViewController: UIViewController {


    private let navigationBarView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let backButton: UIButton = {
        let button = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 18, weight: .medium)
        button.setImage(UIImage(systemName: "chevron.left", withConfiguration: config), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let navTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "취업 현황"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let filterButton: UIButton = {
        let button = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 18, weight: .medium)
        button.setImage(UIImage(systemName: "slider.horizontal.3", withConfiguration: config), for: .normal)
        button.tintColor = UIColor(red: 0.25, green: 0.45, blue: 1.0, alpha: 1.0)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let dashboardCardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dashboard_card")
        imageView.backgroundColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "반별 취업 현황 확인하기"
        label.textColor = UIColor(red: 0.65, green: 0.65, blue: 0.65, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let gridStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16 // 버튼 줄 사이 간격 16
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTheme()
        setupSubviews()
        setupLayout()
    }
    
    // MARK: - Setup Methods
    private func setupTheme() {
        view.backgroundColor = .black
    }
    
    private func setupSubviews() {
        view.addSubview(navigationBarView)
        navigationBarView.addSubview(backButton)
        navigationBarView.addSubview(navTitleLabel)
        navigationBarView.addSubview(filterButton)
        
        view.addSubview(dashboardCardImageView)
        view.addSubview(titleLabel)
        
        let class1Button = createClassButton(className: "1반", emoji: "💻")
        let class2Button = createClassButton(className: "2반", emoji: "💻")
        let class3Button = createClassButton(className: "3반", emoji: "🔧")
        let class4Button = createClassButton(className: "4반", emoji: "🤖")
        
        // 각 버튼의 크기를 피그마 명세(164x180)대로 명확하게 고정 (찌그러짐 방지 핵심)
        NSLayoutConstraint.activate([
            class1Button.widthAnchor.constraint(equalToConstant: 164),
            class1Button.heightAnchor.constraint(equalToConstant: 180),
            class2Button.widthAnchor.constraint(equalToConstant: 164),
            class2Button.heightAnchor.constraint(equalToConstant: 180),
            class3Button.widthAnchor.constraint(equalToConstant: 164),
            class3Button.heightAnchor.constraint(equalToConstant: 180),
            class4Button.widthAnchor.constraint(equalToConstant: 164),
            class4Button.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        let row1Stack = UIStackView(arrangedSubviews: [class1Button, class2Button])
        row1Stack.axis = .horizontal
        row1Stack.spacing = 16
        row1Stack.distribution = .fillEqually
        
        let row2Stack = UIStackView(arrangedSubviews: [class3Button, class4Button])
        row2Stack.axis = .horizontal
        row2Stack.spacing = 16
        row2Stack.distribution = .fillEqually
        
        gridStackView.addArrangedSubview(row1Stack)
        gridStackView.addArrangedSubview(row2Stack)
        
        view.addSubview(gridStackView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            // 네비게이션 바 레이아웃
            navigationBarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navigationBarView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navigationBarView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navigationBarView.heightAnchor.constraint(equalToConstant: 44),
            
            backButton.leadingAnchor.constraint(equalTo: navigationBarView.leadingAnchor, constant: 24),
            backButton.centerYAnchor.constraint(equalTo: navigationBarView.centerYAnchor),
            
            navTitleLabel.centerXAnchor.constraint(equalTo: navigationBarView.centerXAnchor),
            navTitleLabel.centerYAnchor.constraint(equalTo: navigationBarView.centerYAnchor),
            
            filterButton.trailingAnchor.constraint(equalTo: navigationBarView.trailingAnchor, constant: -24),
            filterButton.centerYAnchor.constraint(equalTo: navigationBarView.centerYAnchor),
            
            // 🚨 [하단 탑다운(Top-Down) 레이아웃 정밀 수정]
            // 대시보드 카드 크기 고정 (345 x 264)
            dashboardCardImageView.topAnchor.constraint(equalTo: navigationBarView.bottomAnchor, constant: 12),
            dashboardCardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dashboardCardImageView.widthAnchor.constraint(equalToConstant: 345),
            dashboardCardImageView.heightAnchor.constraint(equalToConstant: 264),
            
            // 카드 아래로 간격 20 띄우고 타이틀 배치
            titleLabel.topAnchor.constraint(equalTo: dashboardCardImageView.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: dashboardCardImageView.leadingAnchor),
            
            // 타이틀 아래로 간격 8 띄우고 버튼 스택뷰 배치
            gridStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            gridStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gridStackView.widthAnchor.constraint(equalToConstant: 344) // 164 + 16 + 164
            
            // 이제 바닥 고정(-54)을 제거하여 화면 크기에 따라 유연하게 대처하되,
            // 버튼 자체의 크기가 고정되어 절대 아래쪽이 잘리지 않습니다!
        ])
    }
    
    private func createClassButton(className: String, emoji: String) -> UIButton {
        let button = UIButton(type: .custom)
        
        button.backgroundColor = UIColor(red: 0.10, green: 0.10, blue: 0.10, alpha: 1.0) // #191919
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // 아이콘 내부 검은색 원형 뷰 배경
        let iconBackgroundView = UIView()
        iconBackgroundView.backgroundColor = .black
        iconBackgroundView.layer.cornerRadius = 40
        iconBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        iconBackgroundView.isUserInteractionEnabled = false
        
        let iconLabel = UILabel()
        iconLabel.text = emoji
        iconLabel.font = UIFont.systemFont(ofSize: 36)
        iconLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 하단 반 이름 표시 태그 레이어 (48 x 34)
        let classNameBackgroundView = UIView()
        classNameBackgroundView.backgroundColor = UIColor(red: 0.18, green: 0.18, blue: 0.18, alpha: 1.0) // #2E2E2E
        classNameBackgroundView.layer.cornerRadius = 8
        classNameBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        classNameBackgroundView.isUserInteractionEnabled = false
        
        let classNameLabel = UILabel()
        classNameLabel.text = className
        classNameLabel.textColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        classNameLabel.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        classNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        iconBackgroundView.addSubview(iconLabel)
        button.addSubview(iconBackgroundView)
        classNameBackgroundView.addSubview(classNameLabel)
        button.addSubview(classNameBackgroundView)
        
        NSLayoutConstraint.activate([
            // 내부 아이콘 배치
            iconBackgroundView.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            iconBackgroundView.centerYAnchor.constraint(equalTo: button.centerYAnchor, constant: -12),
            iconBackgroundView.widthAnchor.constraint(equalToConstant: 80),
            iconBackgroundView.heightAnchor.constraint(equalToConstant: 80),
            
            iconLabel.centerXAnchor.constraint(equalTo: iconBackgroundView.centerXAnchor),
            iconLabel.centerYAnchor.constraint(equalTo: iconBackgroundView.centerYAnchor),
            
            // 반 이름 컴포넌트 크기 고정 (48 x 34) 및 여백 설정
            classNameBackgroundView.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 14),
            classNameBackgroundView.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: -14),
            classNameBackgroundView.widthAnchor.constraint(equalToConstant: 48),
            classNameBackgroundView.heightAnchor.constraint(equalToConstant: 34),
            
            classNameLabel.centerXAnchor.constraint(equalTo: classNameBackgroundView.centerXAnchor),
            classNameLabel.centerYAnchor.constraint(equalTo: classNameBackgroundView.centerYAnchor)
        ])
        
        return button
    }
}
