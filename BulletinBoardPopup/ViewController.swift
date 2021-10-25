//
//  ViewController.swift
//  BulletinBoardPopup
//
//  Created by Toshiyana on 2021/10/26.
//

import UIKit
import BLTNBoard

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
    private lazy var boardManager: BLTNItemManager = {
        
        let item = BLTNPageItem(title: "Push Notifications")
        item.actionButtonTitle = "Continue"
        item.alternativeButtonTitle = "Maybe Later"
        item.descriptionText = "Would you like to stay in the loop and get notifications?"
        
        // closure
        item.actionHandler = { _ in
            self.didTapBoardContinue()
        }
        
        item.alternativeHandler = { _ in
            self.didTapBoardSkip()
        }
        
        item.appearance.actionButtonColor = .systemGreen
        item.appearance.alternativeButtonTitleColor = .systemGreen
        
        return BLTNItemManager(rootItem: item)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
    }

    @IBAction func didTapButton() {
        //boardManager.showBulletin(above: self)
        boardManager.showBulletin(above: self)
    }
    
    func didTapBoardContinue() {
        print("Did tap continue")
    }
    
    func didTapBoardSkip() {
        print("Did tap skip")
    }

}

