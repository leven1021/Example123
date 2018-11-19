//
//  ViewController.swift
//  Example123
//
//  Created by ChunChang Tang on 2018/11/7.
//  Copyright © 2018年 ChunChang Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.navigationBar.isTranslucent = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Click123(_ sender: Any) {
        print(123)
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let oCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        oCell.textLabel?.text = "aaaa: \(indexPath.row)"
        return oCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let oVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        show(oVC, sender: self)
    }
    
}

