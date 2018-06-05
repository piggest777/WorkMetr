//
//  pickDateVC.swift
//  WorkMetr
//
//  Created by Denis Rakitin on 01/06/2018.
//  Copyright © 2018 Denis Rakitin. All rights reserved.
//

import UIKit

class PickDateVC: UIViewController {

    //Outlets
    
    @IBOutlet weak var dataPickerWeel: UIDatePicker!
    
    var date: Date = Date()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func dateWasChosen(_ sender: Any) {
    
    let date = dataPickerWeel.date
        let localTime = DateFormatter()
        localTime.timeZone = TimeZone.current
        
        
        self.date = date
       
        
        print("now date is\(date)")
        
        extractDateFromStamp(date: date)
    
    }
    
    func extractDateFromStamp(date:Date?) {

        var convertedDate = ""
        
        guard var isoDate: String = date?.description else {return}
        
        
       let dateFormater = DateFormatter()
        dateFormater.dateFormat = "yyyy-MM-dd"
        dateFormater.timeZone = TimeZone.autoupdatingCurrent
        let newDateFormater = DateFormatter()
        newDateFormater.locale = Locale(identifier: "ru_RU")
        newDateFormater.timeZone = TimeZone.current
        newDateFormater.dateFormat = "dd MMM yyyy"
        
        
        let end = isoDate.index(isoDate.endIndex, offsetBy: -15)
        isoDate = String(isoDate[..<end])

        print("\(isoDate)")
        
        if let date = dateFormater.date(from: isoDate){
            convertedDate = newDateFormater.string(from: date)
            
        }
        
        print(convertedDate)
//
//        let isoFormater = ISO8601DateFormatter()
//        let chatDate = isoFormater.date(from: isoDate)
//        print("chatDate is \(String(describing: chatDate?.description))")
//
//        let newFormatter = DateFormatter()
//        newFormatter.dateFormat = "MMM d"
//
//        if let finalDate = chatDate{
//            let finalDate = newFormatter.string(from: finalDate)
//             print("finalDate is \(finalDate)")
//        }
//

        
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .medium
//        dateFormatter.timeStyle = .none
//
//        let date = Date(timeIntervalSinceReferenceDate: 118800)
//
//        // US English Locale (en_US)
//        dateFormatter.locale = Locale(identifier: "en_US")
//        print(dateFormatter.string(from: date)) // Jan 2, 2001
//
//        // French Locale (fr_FR)
//        dateFormatter.locale = Locale(identifier: "fr_FR")
//        print(dateFormatter.string(from: date)) // 2 janv. 2001
//
//        // Japanese Locale (ja_JP)
//        dateFormatter.locale = Locale(identifier: "ja_JP")
//        print(dateFormatter.string(from: date)) // 2001/01/02
        
//            //            timeStampLbl.text = finalDate
//    }
    }
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func pickButtonWasPressed(_ sender: Any) {
    extractDateFromStamp(date: date)
    }
    
    @IBOutlet weak var nextBtnWasPressed: UIButton!
}
