//
//  ViewController.swift
//  KotaKadai3
//
//  Created by 前田航汰 on 2022/01/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var leftTextLabel: UILabel!
    @IBOutlet private weak var rightTextLabel: UILabel!
    @IBOutlet private weak var resultTextLabel: UILabel!

    @IBAction private func didTapButton(_ sender: Any) {
        let leftBeforeNum = Int(leftTextField.text ?? "") ?? 0
        let rightBeforeNum = Int(rightTextField.text ?? "") ?? 0
        let leftAfterNum = leftSwitch.isOn ? -leftBeforeNum : leftBeforeNum
        let rightAfterNum = rightSwitch.isOn ? -rightBeforeNum : rightBeforeNum

        leftTextLabel.text = String(leftAfterNum)
        rightTextLabel.text = String(rightAfterNum)
        resultTextLabel.text = String(leftAfterNum + rightAfterNum)
    }
}
