//
//  ViewController.swift
//  UIsider Tableview03
//
//  Created by D7703_22 on 2018. 5. 15..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var myslider: UISlider!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var tbv: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
    }
    @IBAction func slider(_ sender: Any) {
        tbv.dataSource = self
        tbv.delegate = self
    
        
        let val = Int(myslider.value)
        print(val)
        print("슬라이드 움직임")
        lbl.text = String(val)
    }
    //필수적인 delegate 함수 구현
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = tbv.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = String(Int(myslider.value) + indexPath.row)
        return cell
    }
            
            
}
    




