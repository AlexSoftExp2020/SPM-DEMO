import UIKit

public class OnboardingKit {
    
    @MainActor
    private lazy var onboardingViewController: OnboardingViewController = {
        let controller = OnboardingViewController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        return controller
    }()
    
    public init() {}
    
    @MainActor
    public func launchOnboarding(rootVC: UIViewController) {
        rootVC.present(onboardingViewController, animated: true)
    }
    public func dismissOnboarding() {}
}
