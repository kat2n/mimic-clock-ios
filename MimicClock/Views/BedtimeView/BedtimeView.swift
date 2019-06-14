import UIKit

class BedtimeView: AppView {

  var ctrl: BedtimeViewController!

  init(_ ctrl: BedtimeViewController) {
    super.init(frame: .zero)

    self.ctrl = ctrl

    backgroundColor = ColorScheme.black
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

}
