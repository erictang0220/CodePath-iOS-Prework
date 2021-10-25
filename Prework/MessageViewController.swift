//
//  MessageViewController.swift
//  Prework
//
//  Created by Eric Tang on 10/25/21.
//

import UIKit

extension CGFloat {
	static func random() -> CGFloat {
		return CGFloat(arc4random()) / CGFloat(UInt32.max)
	}
}

extension UIColor {
	static func random() -> UIColor {
		return UIColor(
			red:   .random(),
			green: .random(),
			blue:  .random(),
			alpha: 1.0
		)
	}
}


class MessageViewController: UIViewController {
	var timer: Timer!
	
	@IBOutlet weak var good: UILabel!
	@IBOutlet weak var Comment: UITextField!
	
	@objc func setColors() {
		self.view.backgroundColor = .random();
		self.good.alpha = 0;
		UIView.animate(withDuration:1, animations: {
			self.good.alpha = 1;
			// self.good.textColor = UIColor.red;
			self.good.font = self.good.font.withSize(15);
		})
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
		timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setColors), userInfo: nil, repeats: true)
		self.setColors();
        // Do any additional setup after loading the view.
    }
	
	
    
//	@IBAction func aniMessage(_ sender: Any) {
//		self.Comment.alpha = 0;
//		self.Comment.textColor = UIColor.blue;
//		UIView.animate(withDuration:0.8, animations: {
//			self.Comment.alpha = 1;
//			self.Comment.textColor = UIColor.red;
//		})
//	}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
