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
        onboardingKit = OnboardingKit()
        onboardingKit?.launchOnboarding(rootVC: self)
    }


}

