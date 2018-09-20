//
//  GameViewController.swift
//  flappyDragon
//
//  Created by Vinicius Strauss on 20/08/2018.
//  Copyright © 2018 Vinicius Strauss. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

var stage: SKView!

class GameViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        stage = view as! SKView
        stage.ignoresSiblingOrder = true
        
        presentScene()
      
    }

    func presentScene(){
        let scene = GameScene(size: CGSize(width:320, height:568))
        scene.gameViewController = self
        scene.scaleMode = .aspectFill
        stage.presentScene(scene)
    } 
   
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
