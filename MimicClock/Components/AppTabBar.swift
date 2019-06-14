import UIKit

class AppTabBar: UIView {

  class func setUp() {
    let it = UITabBar.appearance()
    it.selectedImageTintColor = ColorScheme.orange
    it.unselectedItemTintColor = ColorScheme.gray
    it.backgroundImage = {
      UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
      UIGraphicsGetCurrentContext()?.setFillColor(ColorScheme.lightBlack.cgColor)
      UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
      let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
      UIGraphicsEndImageContext()
      return image
    }()
    it.shadowImage = {
      UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
      UIGraphicsGetCurrentContext()?.setFillColor(ColorScheme.darkGray.cgColor)
      UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
      let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
      UIGraphicsEndImageContext()
      return image
    }()
  }

}
