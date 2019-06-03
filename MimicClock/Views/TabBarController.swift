import UIKit

class TabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

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

