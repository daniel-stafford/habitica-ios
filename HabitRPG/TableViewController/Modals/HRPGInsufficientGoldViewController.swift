//
//  HRPGInsufficientGoldViewController.swift
//  Habitica
//
//  Created by Elliot Schrock on 8/16/17.
//  Copyright © 2017 HabitRPG Inc. All rights reserved.
//

import UIKit

class HRPGInsufficientGoldViewController: HRPGSingleOptionModalViewController {

    @IBOutlet weak var infoView: HRPGSimpleShopItemView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoView.image = HabiticaIcons.imageOfGoldReward
    }
    
    override func populateText() {
        titleLabel.text = L10n.notEnoughGems
        actionButton?.setTitle(L10n.takeMeBack, for: .normal)
    }

    @IBAction func closePressed() {
        dismiss(animated: true, completion: nil)
    }
}
