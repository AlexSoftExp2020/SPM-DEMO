//
//  Transi.swift
//  OnboardingKit
//
//  Created by Oleksii on 12.11.2024.
//

import UIKit

class TransitionView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        backgroundColor = .blue
    }
    
}
