import UIKit

class TabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: Color.white]
    UINavigationBar.appearance().tintColor = Color.orange
    UINavigationBar.appearance().barTintColor = Color.lightBlack
    UINavigationBar.appearance().isTranslucent = false
    UINavigationBar.appearance().shadowImage = {
      UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
      UIGraphicsGetCurrentContext()?.setFillColor(Color.darkGray.cgColor)
      UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
      let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
      UIGraphicsEndImageContext()
      return image
    }()

    UITabBar.appearance().selectedImageTintColor = Color.orange
    UITabBar.appearance().unselectedItemTintColor = Color.gray
    UITabBar.appearance().backgroundImage = {
      UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
      UIGraphicsGetCurrentContext()?.setFillColor(Color.lightBlack.cgColor)
      UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
      let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
      UIGraphicsEndImageContext()
      return image
    }()
    UITabBar.appearance().shadowImage = {
      UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
      UIGraphicsGetCurrentContext()?.setFillColor(Color.darkGray.cgColor)
      UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
      let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
      UIGraphicsEndImageContext()
      return image
    }()

    let worldClock = UINavigationController(rootViewController: WorldClockViewController())
    let alarm = UINavigationController(rootViewController: AlarmViewController())
    let bedtime = UINavigationController(rootViewController: BedtimeViewController())
    let stopwatch = UINavigationController(rootViewController: StopwatchViewController())
    let timer = UINavigationController(rootViewController: TimerViewController())

    viewControllers = [
      worldClock,
      alarm,
      bedtime,
      stopwatch,
      timer,
    ]
  }

}

