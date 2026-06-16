import UIKit

class ViewController: UIViewController {
    let checkLabel: UILabel = {
        let label = UILabel()
        label.text = "반별 취업 현황 확인하기"
        label.textColor = . gray
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let jobisView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "191919")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let jobisWhiteLabel: UILabel = {
        let label = UILabel()
        label.text = "취업 현황"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let jobisLabel: UILabel = {
        let label = UILabel()
        label.text = "취업현황"
        label.textColor = UIColor(hexCode: "2F53FF")
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let jobis2024Label: UILabel = {
        let label = UILabel()
        label.text = "2024 취업률"
        label.textColor = .gray
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sliderButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "slider.horizontal.3"), for: .normal)
        
        button.tintColor = UIColor(hexCode: "2F53FF")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
   
    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        button.tintColor = UIColor(hexCode: "FFFFFF")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let chartImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dashboard_card")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let firstView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "191919")
        view.layer.cornerRadius = 10
        return view
    }()
    
    let secondView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "191919")
        view.layer.cornerRadius = 10
        return view
    }()
    
    let thirdView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "191919")
        view.layer.cornerRadius = 10
        return view
    }()
    
    let fourthView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "191919")
        view.layer.cornerRadius = 10
        return view
    }()
    
    let circle1View: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 40
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let circle2View: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 40
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let circle3View: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 40
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let circle4View: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 40
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let imoge1Label: UILabel = {
        let label = UILabel()
        label.text = "💻"
        label.font = UIFont.systemFont(ofSize: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imoge2Label: UILabel = {
        let label = UILabel()
        label.text = "💻"
        label.font = UIFont.systemFont(ofSize: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    let imoge3Label: UILabel = {
        let label = UILabel()
        label.text = "🔧"
        label.font = UIFont.systemFont(ofSize: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imoge4Label: UILabel = {
        let label = UILabel()
        label.text = "🤖"
        label.font = UIFont.systemFont(ofSize: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
     
    let class1View: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "333333")
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let class2View: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "333333")
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let class3View: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "333333")
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let class4View: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "333333")
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let class1Label: UILabel = {
        let label = UILabel()
        label.text = "1반"
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let class2Label: UILabel = {
        let label = UILabel()
        label.text = "2반"
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let class3Label: UILabel = {
        let label = UILabel()
        label.text = "3반"
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let class4Label: UILabel = {
        let label = UILabel()
        label.text = "4반"
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        
        let topStackView = UIStackView(arrangedSubviews: [firstView, secondView])
        topStackView.spacing = 17
        topStackView.distribution = .fillEqually
        
        let bottomStackView = UIStackView(arrangedSubviews: [thirdView, fourthView])
        bottomStackView.spacing = 17
        bottomStackView.distribution = .fillEqually
        
        let mainStackView = UIStackView(arrangedSubviews: [topStackView, bottomStackView])
        mainStackView.axis = .vertical
        mainStackView.spacing = 17
        mainStackView.distribution = .fillEqually
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(checkLabel)
        view.addSubview(jobisView)
        jobisView.addSubview(jobisLabel)
        jobisView.addSubview(jobis2024Label)
        view.addSubview(sliderButton)
        view.addSubview(backButton)
        view.addSubview(jobisWhiteLabel)
        jobisView.addSubview(chartImage)
        view.addSubview(mainStackView)
        firstView.addSubview(circle1View)
        secondView.addSubview(circle2View)
        thirdView.addSubview(circle3View)
        fourthView.addSubview(circle4View)
        circle1View.addSubview(imoge1Label)
        circle2View.addSubview(imoge2Label)
        circle3View.addSubview(imoge3Label)
        circle4View.addSubview(imoge4Label)
        firstView.addSubview(class1View)
        secondView.addSubview(class2View)
        thirdView.addSubview(class3View)
        fourthView.addSubview(class4View)
        class1View.addSubview(class1Label)
        class2View.addSubview(class2Label)
        class3View.addSubview(class3Label)
        class4View.addSubview(class4Label)
        
        
    
        NSLayoutConstraint.activate([
            checkLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 340),
            checkLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            
            jobisView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 56),
            jobisView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            jobisView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            jobisView.widthAnchor.constraint(equalToConstant: 345),
            jobisView.heightAnchor.constraint(equalToConstant: 264),
            
            jobis2024Label.bottomAnchor.constraint(equalTo: jobisView.bottomAnchor, constant: -16),
            jobis2024Label.leadingAnchor.constraint(equalTo: jobisView.leadingAnchor, constant: 119),
            
            jobisLabel.topAnchor.constraint(equalTo: jobisView.topAnchor, constant: 20),
            jobisLabel.leadingAnchor.constraint(equalTo: jobisView.leadingAnchor, constant: 16),
            
            sliderButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            sliderButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            sliderButton.widthAnchor.constraint(equalToConstant: 28),
            sliderButton.heightAnchor.constraint(equalToConstant: 28),
            
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            backButton.widthAnchor.constraint(equalToConstant: 28),
            backButton.heightAnchor.constraint(equalToConstant: 28),
            
            jobisWhiteLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12.5),
            jobisWhiteLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 167),
            
            chartImage.topAnchor.constraint(equalTo: jobisView.topAnchor, constant: 72),
            chartImage.leadingAnchor.constraint(equalTo: jobisView.leadingAnchor, constant: 65),
       
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            mainStackView.heightAnchor.constraint(equalToConstant: 376),
            
            
            circle1View.topAnchor.constraint(equalTo: firstView.safeAreaLayoutGuide.topAnchor, constant: 30),
            circle1View.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 42),
            circle1View.widthAnchor.constraint(equalToConstant: 80),
            circle1View.heightAnchor.constraint(equalToConstant: 80),
            
            circle2View.topAnchor.constraint(equalTo: secondView.safeAreaLayoutGuide.topAnchor, constant: 30),
            circle2View.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 42),
            circle2View.widthAnchor.constraint(equalToConstant: 80),
            circle2View.heightAnchor.constraint(equalToConstant: 80),
            
            circle3View.topAnchor.constraint(equalTo: thirdView.safeAreaLayoutGuide.topAnchor, constant: 30),
            circle3View.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 42),
            circle3View.widthAnchor.constraint(equalToConstant: 80),
            circle3View.heightAnchor.constraint(equalToConstant: 80),
            
            circle4View.topAnchor.constraint(equalTo: fourthView.safeAreaLayoutGuide.topAnchor, constant: 30),
            circle4View.leadingAnchor.constraint(equalTo: fourthView.leadingAnchor, constant: 42),
            circle4View.widthAnchor.constraint(equalToConstant: 80),
            circle4View.heightAnchor.constraint(equalToConstant: 80),
            
            imoge1Label.centerXAnchor.constraint(equalTo: circle1View.centerXAnchor),
            imoge1Label.centerYAnchor.constraint(equalTo: circle1View.centerYAnchor),
            
            imoge2Label.centerXAnchor.constraint(equalTo: circle2View.centerXAnchor),
            imoge2Label.centerYAnchor.constraint(equalTo: circle2View.centerYAnchor),
            
            imoge3Label.centerXAnchor.constraint(equalTo: circle3View.centerXAnchor),
            imoge3Label.centerYAnchor.constraint(equalTo: circle3View.centerYAnchor),
            
            imoge4Label.centerXAnchor.constraint(equalTo: circle4View.centerXAnchor),
            imoge4Label.centerYAnchor.constraint(equalTo: circle4View.centerYAnchor),
            
            class1View.bottomAnchor.constraint(equalTo: firstView.bottomAnchor, constant: -16),
            class1View.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 16),
            class1View.widthAnchor.constraint(equalToConstant: 48),
            class1View.heightAnchor.constraint(equalToConstant: 34),
            
            class2View.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: -16),
            class2View.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 16),
            class2View.widthAnchor.constraint(equalToConstant: 48),
            class2View.heightAnchor.constraint(equalToConstant: 34),
            
            class3View.bottomAnchor.constraint(equalTo: thirdView.bottomAnchor, constant: -16),
            class3View.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 16),
            class3View.widthAnchor.constraint(equalToConstant: 48),
            class3View.heightAnchor.constraint(equalToConstant: 34),
            
            class4View.bottomAnchor.constraint(equalTo: fourthView.bottomAnchor, constant: -16),
            class4View.leadingAnchor.constraint(equalTo: fourthView.leadingAnchor, constant: 16),
            class4View.widthAnchor.constraint(equalToConstant: 48),
            class4View.heightAnchor.constraint(equalToConstant: 34),
            
            class1Label.centerXAnchor.constraint(equalTo: class1View.centerXAnchor),
            class1Label.centerYAnchor.constraint(equalTo: class1View.centerYAnchor),
            
            class2Label.centerXAnchor.constraint(equalTo: class2View.centerXAnchor),
            class2Label.centerYAnchor.constraint(equalTo: class2View.centerYAnchor),
            
            class3Label.centerXAnchor.constraint(equalTo: class3View.centerXAnchor),
            class3Label.centerYAnchor.constraint(equalTo: class3View.centerYAnchor),
            
            class4Label.centerXAnchor.constraint(equalTo: class4View.centerXAnchor),
            class4Label.centerYAnchor.constraint(equalTo: class4View.centerYAnchor),
            
            
        ])
    }
}


extension UIColor {
    
    convenience init(hexCode: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hexCode.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invali2d hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
}


