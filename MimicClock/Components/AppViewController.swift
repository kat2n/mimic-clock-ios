import UIKit

class AppViewController: UIViewController {

  override var preferredStatusBarStyle: UIStatusBarStyle { return statusBarStyle }
  var statusBarStyleAnimation: TimeInterval = 0.2
  var statusBarStyle: UIStatusBarStyle = .lightContent { didSet { UIView.animate(withDuration: statusBarStyleAnimation) { self.setNeedsStatusBarAppearanceUpdate() } } }

  override var prefersStatusBarHidden: Bool { return statusBarHidden }
  var statusBarHiddenAnimation: TimeInterval = 0.2
  var statusBarHidden: Bool = false { didSet { UIView.animate(withDuration: statusBarStyleAnimation) { self.setNeedsStatusBarAppearanceUpdate() } } }

}
