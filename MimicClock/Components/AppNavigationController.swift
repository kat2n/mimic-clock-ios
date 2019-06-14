import UIKit

class AppNavigationController: UINavigationController {

  override var childForStatusBarStyle: UIViewController? { return visibleViewController }

  override var childForStatusBarHidden: UIViewController? { return visibleViewController }

}
