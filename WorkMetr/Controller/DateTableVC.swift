//
//  ViewController.swift
//  WorkMetr
//
//  Created by Denis Rakitin on 01/06/2018.
//  Copyright © 2018 Denis Rakitin. All rights reserved.
//

import UIKit

class DateTableVC: UIViewController {

    //Outlets
    
    @IBOutlet weak var hoursCountLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var monthLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    
    
    
    @IBAction func addTimeBtnWasPressed(_ sender: Any) {
        guard let pickDateVC = storyboard?.instantiateViewController(withIdentifier: "PickDateVC") else { return }
        presentDetail(pickDateVC)
    }
    
    @IBAction func monthPickerBtnWasPressed(_ sender: Any) {
    }
    
}

extension DateTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}


