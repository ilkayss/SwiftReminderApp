//
//  AddViewController.swift
//  ReminderApp
//
//  Created by ahmet on 2.01.2024.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var lblBody: UITextField!
    @IBOutlet weak var lblTitle: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    public var completion : ((String,String,Date)-> Void )?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem  = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(btnSave))
    }
    @objc func btnSave(){
        if let titletext = lblTitle.text, !titletext.isEmpty,
           let bodytext = lblBody.text, !bodytext.isEmpty {
            let targetDate = datePicker.date
            
            completion?(titletext,bodytext,targetDate)
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
