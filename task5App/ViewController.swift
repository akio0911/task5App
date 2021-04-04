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

    private func alert(title:String, message:String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true)
    }

    @IBAction func didTapButton(_ sender: Any) {

        guard let dividend = Double(dividendField.text!) else {
            alert(title: "課題5", message: "割られる数を入力してください")
            return
        }

        guard let divisor = Double(divisorField.text!) else {
            alert(title: "課題5", message: "割る数を入力してください")
            return
        }

        guard divisor != 0 else {
            alert(title: "課題5", message: "割る数には0を入力しないでください")
            return
        }

        let result = dividend / divisor

        resultLabel.text = String(format: "%.5f", result)
    }
}

