import UIKit

public protocol OnboardingKitDelegate: AnyObject {
    func nextButtonDidTap(atIndex index: Int)
    func getStartedButtonDidTap()
}

public class OnboardingKit {
    
    private let slides: [Slide]
    private let tintColor: UIColor
    
    public weak var delegate: OnboardingKitDelegate?
    
    @MainActor
    private lazy var onboardingViewController: OnboardingViewController = {
        let controller = OnboardingViewController(slides: slides, tintColor: tintColor)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        controller.nextButtonDidTap = { [weak self] index in
            self?.delegate?.nextButtonDidTap(atIndex: index)
        }
        controller.getStartedButtonDidTap = { [weak self] in
            self?.delegate?.getStartedButtonDidTap()
        }
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
