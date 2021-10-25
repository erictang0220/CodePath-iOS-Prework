//
//  ViewController.swift
//  Prework
//
//  Created by Eric Tang on 1/12/21.
//

import UIKit

//class Ani : UIView {
//	firstView.alpha = 0
//	secondView.alpha = 1
//	UIView.animate(withDuration:0.4, animations: {
//		// This causes first view to fade in and second view to fade out
//		self.firstView.alpha = 1
//		self.secondView.alpha = 0
//	})
//}

class ViewController: UIViewController {
	
	@IBOutlet weak var billAmountTextField: UITextField!
	@IBOutlet weak var tipAmountLabel: UILabel!
	@IBOutlet weak var totalLabel: UILabel!
	@IBOutlet weak var tipControl: UISegmentedControl!
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Tip Calculator"
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		print("view will appear")
		// UIColor *foreGround = [self.settings getForegroundColor];
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print("view did appear")
		
		// starts here
		self.tipControl.alpha = 0;
		UIView.animate(withDuration:0.8, animations: {
			self.tipControl.alpha = 1;
		})
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		print("view will disappear")
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print("view did disappear")
	}
	
//	func ani() {
//		UIView.animate(withDuration:0.8, delay: 0.0,
//					   // Autoreverse runs the animation backwards and Repeat cycles the animation indefinitely.
//					   options: [.autoreverse,.repeat], animations: { () -> Void in
//			self.bubbleImageView.transform = CGAffineTransform(translationX: 0, y: 10)
//		}, completion: nil)
//	}
	
	@IBAction func onTap(_ sender: Any) {
	}
	
	@IBAction func calculateTip(_ sender: Any) {
		let bill = Double(billAmountTextField.text!) ?? 0
		let tipPercentages = [0.15, 0.18, 0.2]
		
		let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
		let total = bill + tip
		
		tipAmountLabel.text = String(format: "$%.2f", tip)
		totalLabel.text = String(format: "$%.2f", total)
		
	}
	    
	
}


