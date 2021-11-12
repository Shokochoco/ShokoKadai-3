import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textLabel1: UILabel!
    @IBOutlet private weak var textLabel2: UILabel!
    @IBOutlet private weak var textLabel3: UILabel!

    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!

    @IBAction private func button(_ sender: Any) {
        var num1 = Int(textField1.text ?? "") ?? 0
        var num2 = Int(textField2.text ?? "") ?? 0
        if switch1.isOn { // マイナスの時
            num1 *= -1
            textLabel1.text = String(num1)
        } else {
            textLabel1.text = String(num1)
        }

        if switch2.isOn {
            num2 *= -1
            textLabel2.text = String(num2)
        } else {
            textLabel2.text = String(num2)
        }
        textLabel3.text = String(num1 + num2)
    }
}
