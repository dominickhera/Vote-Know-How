//
//  ViewController.swift
//  Vote Know How
//
//  Created by Dominick Hera on 11/6/21.
//

import UIKit
import Alamofire
import Keys

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let keys = VoteKnowHowKeys()
        print("apiKEY: \(keys.congressAPIKey)")
        // Do any additional setup after loading the view.
    }


}

