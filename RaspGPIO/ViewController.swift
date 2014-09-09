//
//  ViewController.swift
//  RaspGPIO
//
//  Created by Mads Gadeberg Jensen on 14/08/14.
//  Copyright (c) 2014 Mads Gadeberg Jensen. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var address = "192.168.1.7"
    var port = 8888
    
    @IBOutlet var ConnectionLabel: UILabel?
    @IBOutlet var ipTextField: UITextField?
    
    @IBOutlet weak var Chnl0: UISwitch!
    @IBOutlet weak var Chnl1: UISwitch!
    @IBOutlet weak var Chnl2: UISwitch!
    @IBOutlet weak var Chnl3: UISwitch!
    @IBOutlet weak var Chnl4: UISwitch!
    @IBOutlet weak var Chnl5: UISwitch!
    @IBOutlet weak var Chnl6: UISwitch!
    @IBOutlet weak var Chnl7: UISwitch!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ConnectionLabel?.text = "Not Connected"
        ipTextField?.text = address
        
        ConnectToServer(address, port: port)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    @IBAction func ConnectToRasp(sender : AnyObject) {
        ConnectToServer(address, port: port)
    }
    

    
    @IBAction func Chnl0Changed(sender: AnyObject) {
        var msg: String
        if (Chnl0.on == true){
            msg = "0 1"
        } else{
            msg = "0 0"
        }
        sendMessage(msg)
    }
    
    @IBAction func Chnl1Changed(sender: AnyObject) {
        var msg: String
        if (Chnl1.on == true){
            msg = "1 1"
        } else{
            msg = "1 0"
        }
        sendMessage(msg)
    }
    
    @IBAction func Chnl2Changed(sender: AnyObject) {
        var msg: String
        if (Chnl2.on == true){
            msg = "2 1"
        } else{
            msg = "2 0"
        }
        sendMessage(msg)
    }
    
    @IBAction func Chnl3Changed(sender: AnyObject) {
        var msg: String
        if (Chnl3.on == true){
            msg = "3 1"
        } else{
            msg = "3 0"
        }
        sendMessage(msg)
    }
    
    @IBAction func Chnl4Changed(sender: AnyObject) {
        var msg: String
        if (Chnl4.on == true){
            msg = "4 1"
        } else{
            msg = "4 0"
        }
        sendMessage(msg)
    }
    
    @IBAction func Chnl5Changed(sender: AnyObject) {
        var msg: String
        if (Chnl5.on == true){
            msg = "5 1"
        } else{
            msg = "5 0"
        }
        sendMessage(msg)
    }
    
    @IBAction func Chnl6Changed(sender: AnyObject) {
        var msg: String
        if (Chnl6.on == true){
            msg = "6 1"
        } else{
            msg = "6 0"
        }
        sendMessage(msg)
    }
    
    @IBAction func Chnl7Changed(sender: AnyObject) {
        var msg: String
        if (Chnl7.on == true){
            msg = "7 1"
        } else{
            msg = "7 0"
        }
        sendMessage(msg)
    }
    
    
    
    // Method for connection to Server
    func ConnectToServer(var address: String, var port: Int){
        
        // Create socket
        if (initSocket() == -1){
            println("Could not create socket");
            exit(1);
        }
        else{
            println("Socket created");
        }
        
        // Connect
        if(connectToHost(address, CInt(self.port)) < 0)
        {
            ConnectionLabel?.text = "Error connecting!"
        }
        else{
            ConnectionLabel?.text = "Connected"
            //            ConnectionLabel?.textColor
        }
    }
}