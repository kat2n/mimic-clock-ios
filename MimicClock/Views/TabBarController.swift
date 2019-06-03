import UIKit

class TabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let worldClock = WorldClockViewController()

    let alarm = AlarmViewController()

    let bedtime = BedtimeViewController()

    let stopwatch = StopwatchViewController()

    let timer = TimerViewController()

    viewControllers = [
      worldClock,
      alarm,
      bedtime,
      stopwatch,
      timer,
    ]
  }

}

