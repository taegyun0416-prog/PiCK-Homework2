import UIKit
import SnapKit

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
        
        
        checkLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(340)
            $0.leading.equalToSuperview().offset(24)
        }
        
        jobisView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(56)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
            $0.width.equalTo(345)
            $0.height.equalTo(264)
        }
        
        jobis2024Label.snp.makeConstraints {
            $0.bottom.equalTo(jobisView).offset(-16)
            $0.leading.equalTo(jobisView).offset(119)
        }
        
        jobisLabel.snp.makeConstraints {
            $0.top.equalTo(jobisView).offset(20)
            $0.leading.equalToSuperview().offset(16)
        }
        
        sliderButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            $0.trailing.equalToSuperview().offset(-40)
            $0.width.height.equalTo(28)
            
        }
        
        backButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            $0.leading.equalToSuperview().offset(41)
            $0.width.height.equalTo(28)
            
        }
       
        jobisWhiteLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(12.5)
            $0.leading.equalToSuperview().offset(167)
            
        }
        
        chartImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(72)
            $0.leading.equalToSuperview().offset(65)
        }
        
        mainStackView.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).offset(-16)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
            $0.height.equalTo(376)
            
        }
        circle1View.snp.makeConstraints {
            $0.top.equalTo(firstView.safeAreaLayoutGuide).offset(30)
            $0.leading.equalToSuperview().offset(42)
            $0.width.height.equalTo(80)
        }
        circle2View.snp.makeConstraints {
            $0.top.equalTo(secondView.safeAreaLayoutGuide)
                .offset(30)
            $0.leading.equalToSuperview().offset(42)
            $0.width.height.equalTo(80)
        }
        circle3View.snp.makeConstraints {
            $0.top.equalTo(thirdView.safeAreaLayoutGuide).offset(30)
            $0.leading.equalToSuperview().offset(42)
            $0.width.height.equalTo(80)
        }
        circle4View.snp.makeConstraints {
            $0.top.equalTo(fourthView.safeAreaLayoutGuide).offset(30)
            $0.leading.equalToSuperview().offset(42)
            $0.width.height.equalTo(80)
        }
        imoge1Label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        imoge2Label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        imoge3Label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        imoge4Label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        class1View.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-16)
            $0.leading.equalToSuperview().offset(16)
            $0.width.equalTo(48)
            $0.height.equalTo(34)
        }
        class2View.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-16)
            $0.leading.equalToSuperview().offset(16)
            $0.width.equalTo(48)
            $0.height.equalTo(34)
        }
        class3View.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-16)
            $0.leading.equalToSuperview().offset(16)
            $0.width.equalTo(48)
            $0.height.equalTo(34)
        }
        class4View.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-16)
            $0.leading.equalToSuperview().offset(16)
            $0.width.equalTo(48)
            $0.height.equalTo(34)
        }
        class1Label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        class2Label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        class3Label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        class4Label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
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


