//
//  ViewController.swift
//
//
//  Created by admin on 2018/02/11.
//  Copyright © 2018年 sekibotbot. All rights reserved.
//

import Cocoa
import AVKit
import AVFoundation

class ViewController: NSViewController,NSTableViewDataSource,NSTableViewDelegate{

    @IBOutlet weak var search_textfield: NSSearchField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
        
    }
    
    @IBAction func SearchButton(_ sender: Any) {
        var hoge = "http://ecs.amazonaws.jp/onca/xml"
        hoge = self.search_textfield.stringValue
        print(hoge)
        
    }
    
    let programs = ["Swift", "C", "Java", "JavaScript", "PHP", "Python"]

    func numberOfRows(in tableView: NSTableView) -> Int {
        return programs.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return programs[row]
    }

    //クリックイベントの代用
    //クリックした時の動作をここにかく
    func tableView(_ tableView: NSTableView, shouldSelectRow row: Int) -> Bool {
        print(row)
        return true
    }
    
    
    @IBOutlet weak var av_player: AVPlayerView!
    var videoPlayer:AVPlayer!
    
}

