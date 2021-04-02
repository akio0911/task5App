//
//  ViewController.swift
//  task5App
//
//  Created by yasudamasato on 2021/03/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var dividendField: UITextField!
    @IBOutlet private weak var divisorField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    private var alertController: UIAlertController!

    private func alert(title:String, message:String) {
        alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true)
    }

    @IBAction func didTapButton(_ sender: Any) {
        let dividend: Double? = Double(dividendField.text!) ?? nil
        let divisor: Double? = Double(divisorField.text!) ?? nil
        let result: Double

        guard dividend != nil else {
            alert(title: "課題5", message: "割られる数を入力してください")
            return
        }

        guard divisor != nil else {
            alert(title: "課題5", message: "割る数を入力してください")
            return
        }

        guard divisor != 0 else {
            alert(title: "課題5", message: "割る数には0を入力しないでください")
            return
        }

        result = dividend! / divisor!

        resultLabel.text = "\(result)"
    }
}

