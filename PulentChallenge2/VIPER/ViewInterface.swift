import UIKit


protocol ViewInterface: class {
}

extension ViewInterface {
    func createAlert(with title: String?, message: String?) -> UIAlertController {
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(okAction)
        return alert
    }
}
