import UIKit

class TabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let main = MainViewController()
    main.tabBarItem.title = "Main"
//    main.tabBarItem.image = UIImage(named: image)

    viewControllers = [
      main,
    ]
  }

}
