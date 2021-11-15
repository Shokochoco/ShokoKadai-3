import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var number1TextField1: UITextField!
    @IBOutlet private weak var number2TextField2: UITextField!
    @IBOutlet private weak var signedNumber1Label: UILabel!
    @IBOutlet private weak var signedNumber2Label: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!

    @IBAction private func button(_ sender: Any) {
        let num1 = Int(number1TextField1.text ?? "") ?? 0
        let num2 = Int(number2TextField2.text ?? "") ?? 0

        let signedNumber1: Int // 定数用意
        if switch1.isOn { // マイナスの時
            signedNumber1 = -num1
        } else {
            signedNumber1 = num1
        }

        let signedNumber2: Int
        if switch2.isOn {
            signedNumber2 = -num2
        } else {
            signedNumber2 = num2
        }
        signedNumber1Label.text = String(signedNumber1)
        signedNumber2Label.text = String(signedNumber2)
        resultLabel.text = String(signedNumber1 + signedNumber2)
    }
}
