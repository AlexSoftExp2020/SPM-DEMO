//
//  File.swift
//  OnboardingKit
//
//  Created by Oleksii on 16.11.2024.
//

import UIKit

class AnimatedBarView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
