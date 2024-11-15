import UIKit

public class OnboardingKit {
    
    private let slides: [Slide]
    private let tintColor: UIColor
    
    @MainActor
    private lazy var onboardingViewController: OnboardingViewController = {
        let controller = OnboardingViewController(slides: slides, tintColor: tintColor)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        return controller
    }()
    
    public init(slides: [Slide], tintColor: UIColor) {
        self.slides = slides
        self.tintColor = tintColor
    }
    
    @MainActor
    public func launchOnboarding(rootVC: UIViewController) {
        rootVC.present(onboardingViewController, animated: true)
    }
    public func dismissOnboarding() {}
}
