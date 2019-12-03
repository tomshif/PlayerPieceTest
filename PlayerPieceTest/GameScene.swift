//
//  GameScene.swift
//  PlayerPieceTest
//
//  Created by Tom Shiflet on 12/3/19.
//  Copyright © 2019 Tom Shiflet. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    

    let body=SKSpriteNode(imageNamed: "body")
    let head=SKSpriteNode(imageNamed: "head")
    let arms=SKSpriteNode(imageNamed: "arms")
    
    var bScale:CGFloat=2.0
    
    
    override func didMove(to view: SKView) {
    
        body.setScale(bScale)
        addChild(body)
        body.addChild(arms)
        body.addChild(head)
        head.zPosition=1
        arms.zPosition=1
        body.colorBlendFactor=1.0
        arms.colorBlendFactor=1.0
        head.colorBlendFactor=1.0

        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func mouseDown(with event: NSEvent) {
        self.touchDown(atPoint: event.location(in: self))
    }
    
    override func mouseDragged(with event: NSEvent) {
        self.touchMoved(toPoint: event.location(in: self))
    }
    
    override func mouseUp(with event: NSEvent) {
        self.touchUp(atPoint: event.location(in: self))
    }
    
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {

        case 27:
            if bScale > 1.0
            {
                bScale -= 0.5
                body.setScale(bScale)
            }
            
        case 24:
            if bScale < 16
            {
                bScale += 0.5
                body.setScale(bScale)
            }
        case 49:
            body.color=NSColor(calibratedRed: random(min: 0, max: 1), green: random(min: 0, max: 1), blue: random(min: 0, max: 1), alpha: 1.0)
            arms.color=NSColor(calibratedRed: random(min: 0, max: 1), green: random(min: 0, max: 1), blue: random(min: 0, max: 1), alpha: 1.0)
            head.color=NSColor(calibratedRed: random(min: 0, max: 1), green: random(min: 0, max: 1), blue: random(min: 0, max: 1), alpha: 1.0)
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
