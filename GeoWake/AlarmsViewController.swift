//
//  AlarmsViewController.swift
//  GeoWake
//
//  Created by Faculty on 1/29/15.
//  Copyright (c) 2015 Freed-Hardeman University. All rights reserved.
//

import UIKit

class AlarmsViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var alarmSwitch: UISwitch!
    
    var alarm : Alarm?
    
    @IBAction func alarmSwitchChanged(sender: UISwitch) {
        
        println("The switch is changed")
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
        let hour = components.hour
        let minutes = components.minute
        
        timeLabel.text = hour.description + ":" + minutes.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        println("We're in the AlarmsVC")
        
        timeLabel.text = "5:43 pm"
    }
    
    
    override func viewDidAppear(animated: Bool) {
        // update view for alarm object
        
        timeLabel.text = alarm?.Time?.description
        placeLabel.text = alarm?.Location?.description
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
