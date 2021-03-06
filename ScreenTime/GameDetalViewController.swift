//
//  AdvancedGameDetalViewController.swift
//  ScreenTime
//
//  Created by BigOof on 11/11/19.
//  Copyright © 2019 Olivier Balazy. All rights reserved.
//

import UIKit
import WebKit

class GameDetalViewController: UIViewController {

    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var materialsInfo: UILabel!
    @IBOutlet weak var numberOfPlayers: UILabel!
    @IBOutlet weak var rulesInfo: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet var video: WKWebView!
    @IBOutlet weak var playButton: UIButton!
    
    //starts video
    @IBAction func playButtonPressed(_ sender: Any) {
        playButton.isHidden = true
        video.load(URLRequest(url: URL(string: overallCurrentGame.video)!))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Show Image
        if(overallCurrentGame.video == "" || overallCurrentGame.video == "https://apple.com"){
            
            playButton.isHidden = true
            video.isHidden = true
            imageView.isHidden = false
            imageView.image = UIImage(named: overallCurrentGame.image)
            print("Image: \(overallCurrentGame.image)")
        }
        //Show Video
        else{
            video.isHidden = false
            playButton.isHidden = false
            imageView.isHidden = true
        }
        
        
        
        //sets webview url to game object video variable
        gameTitle.text = overallCurrentGame.title
        
        materialsInfo.text = overallCurrentGame.materials
        
        numberOfPlayers.text = "Number of Players: \(overallCurrentGame.playerAmountString)"
        
        rulesInfo.text = overallCurrentGame.rules
    }

        
    
    
}
    

