import UIKit

class AppTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let worldClock = AppNavigationController(rootViewController: WorldClockViewController())
    let alarm = AppNavigationController(rootViewController: AlarmViewController())
    let bedtime = AppNavigationController(rootViewController: BedtimeViewController())
    let stopwatch = AppNavigationController(rootViewController: StopwatchViewController())
    let timer = AppNavigationController(rootViewController: TimerViewController())

    viewControllers = [
      worldClock,
      alarm,
      bedtime,
      stopwatch,
      timer,
    ]
  }

}

