import UIKit

class StopwatchView: AppView {

  var ctrl: StopwatchViewController!

  init(_ ctrl: StopwatchViewController) {
    super.init(frame: .zero)

    self.ctrl = ctrl

    backgroundColor = ColorScheme.black
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

}
