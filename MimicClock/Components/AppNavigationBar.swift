import UIKit

class AppNavigationBar: UINavigationBar {

  class func setUp() {
    let it = UINavigationBar.appearance()
    it.titleTextAttributes = [.foregroundColor: Color.white]
    it.tintColor = Color.orange
    it.barStyle = .black
    it.isTranslucent = true
    it.shadowImage = {
      UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
      UIGraphicsGetCurrentContext()?.setFillColor(Color.darkGray.cgColor)
      UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
      let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
      UIGraphicsEndImageContext()
      return image
    }()
  }

}
