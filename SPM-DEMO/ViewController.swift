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
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onboardingKit = OnboardingKit(slides: [
            .init(image: UIImage(named: "imSlide1")!, title: "Personalised offers at 40,000+ places"),
            .init(image: UIImage(named: "imSlide2")!, title: "Stack your rewards every time you pay"),
            .init(image: UIImage(named: "imSlide3")!, title: "Enjoy now, FavePay Later"),
            .init(image: UIImage(named: "imSlide4")!, title: "Earn cashback with your physical card"),
            .init(image: UIImage(named: "imSlide5")!, title: "Save and earn cashback with Deals or eCards")
        ],
                                      tintColor: UIColor(red: 220/255, green: 20/255, blue: 60/255, alpha: 1.0))
        onboardingKit?.launchOnboarding(rootVC: self)
    }
    
    
}

