//
//  ViewController.swift
//  SPM-DEMO
//
//  Created by Oleksii on 09.11.2024.
//

import UIKit
import OnboardingKit

class ViewController: UIViewController {
  
  private var onboardingKit: OnboardingKit?

  override func viewDidLoad() {
    super.viewDidLoad()
    DispatchQueue.main.async {
      self.onboardingKit = OnboardingKit(
        slides: [
          .init(image: UIImage(named: "imSlide1")!,
                title: "Personalised offers at 40,000+ places"),
          .init(image: UIImage(named: "imSlide2")!,
                title: "Stack your rewards every time you pay"),
          .init(image: UIImage(named: "imSlide3")!,
                title: "Enjoy now, FavePay Later"),
          .init(image: UIImage(named: "imSlide4")!,
                title: "Earn cashback with your physical card"),
          .init(image: UIImage(named: "imSlide5")!,
                title: "Save and earn cashback with Deals or eCards")
        ],
        tintColor: UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1.0))
      self.onboardingKit?.delegate = self
      self.onboardingKit?.launchOnboarding(rootVC: self)
    }
  }
}

extension ViewController: OnboardingKitDelegate {
  func nextButtonDidTap(atIndex index: Int) {
    print("next button is tapped at index: \(index)")
  }
  
  func getStartedButtonDidTap() {
    onboardingKit?.dismissOnboarding()
    onboardingKit = nil
    transit(viewController: MainViewController())
  }
  
  private func transit(viewController: UIViewController) {
    let foregroundScenes = UIApplication.shared.connectedScenes.filter({
      $0.activationState == .foregroundActive
    })
    
    let window = foregroundScenes
      .map({ $0 as? UIWindowScene })
      .compactMap({ $0 })
      .first?
      .windows
      .filter({ $0.isKeyWindow })
      .first
    
    guard let uWindow = window else { return }
    uWindow.rootViewController = viewController
    
    UIView.transition(
      with: uWindow,
      duration: 0.3,
      options: [.transitionCrossDissolve],
      animations: nil,
      completion: nil)
  }
}

class MainViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let label = UILabel()
    label.text = "Main View Controller"
    view.addSubview(label)
    label.snp.makeConstraints { make in
      make.center.equalTo(view)
    }
    view.backgroundColor = .gray
  }
  
}
