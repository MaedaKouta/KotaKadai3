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
        let leftAfterNum = changeValue(num1: leftBeforeNum, simbolJudge: leftSwitch.isOn)
        let rightAfterNum = changeValue(num1: rightBeforeNum, simbolJudge: rightSwitch.isOn)

        leftTextLabel.text = String(leftAfterNum)
        rightTextLabel.text = String(rightAfterNum)
        resultTextLabel.text = String(leftAfterNum + rightAfterNum)
    }

    // UISwitchにあわせて符号を変換する
    func changeValue(num1: Int, simbolJudge: Bool) -> Int {
        if simbolJudge == true {
            return -1*num1
        } else {
            return num1
        }
    }

}
