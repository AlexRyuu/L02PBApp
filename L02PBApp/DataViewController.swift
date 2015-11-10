//
//  DataViewController.swift
//  L02PBApp
//
//  Created by liugang on 15/11/3.
//  Copyright © 2015年 liugang. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var tvContent: UITextView!
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: AnyObject?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //self.dataLabel!.text = dataObject
//        if let obj: AnyObject = dataObject {
//            self.dataLabel!.text = obj.objectForKey("title")
//        }else{
//            self.dataLabel!.text = ""
//        }
        if let obj: AnyObject = dataObject {
            self.dataLabel!.text = obj.objectForKey("title") as? String
            self.tvContent!.text = obj.objectForKey("content") as? String
        }else{
            self.dataLabel!.text = ""
            self.tvContent!.text = ""
        }
    }


}

