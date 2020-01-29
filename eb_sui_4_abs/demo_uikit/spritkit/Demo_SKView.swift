//
//  Demo_SpriteKit.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/23/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI
import SpriteKit

struct Demo_SKView: View {
    
    var body: some View {
        NavigationView {
            GameView().navigationBarTitle("Game Scene")
        }
        
    }
}

struct Demo_SKView_Previews: PreviewProvider {
    static var previews: some View {
        Demo_SKView()
    }
}


/*
 SKView is the area where SpriteKit content is drawn
 
a scene - that is , a collection of sprites - insdie a SKView.
When a scene is added to an SKView, it receives the didMoveToView msg
This is your oppotunity to prepare what contetn to dispaly

*/
struct GameView : UIViewRepresentable {
    
    class Coordinator: NSObject {
        var scene: GameScene?
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    func makeUIView(context: Context) -> SKView {
        let skv = SKView(frame: .zero)
        skv.showsDrawCount = true
        skv.showsFPS = true
        skv.showsNodeCount = true
        //skv.showsPhysics = true
        
        context.coordinator.scene = GameScene()
        return skv
    }
    
    func updateUIView(_ uiView: SKView, context: Context) {
        uiView.presentScene(context.coordinator.scene)
    }
    
}


class GameScene : SKScene {
    
    var contentCreated = false
    
    override func didMove(to view: SKView) {
        if self.contentCreated == false {
            self.createSceneContents()
            self.contentCreated = true
        }
    }
    
    private func createSceneContents() {
        self.backgroundColor = SKColor.gray
        self.scaleMode = SKSceneScaleMode.aspectFit
        let sprite = SKSpriteNode(color: SKColor.red, size: CGSize(width: 0.5, height: 0.5))
        sprite.position = CGPoint(x: 1, y: 1)
        //sprite.physicsBody = SKPhysicsBody(rectangleOf:sprite.size)
        
        let staticSprite = SKSpriteNode(color:SKColor.yellow,
                                        size:CGSize(width: 1, height: 0.5))

        staticSprite.position = CGPoint(x: 1, y: 0)
        //staticSprite.physicsBody = SKPhysicsBody(rectangleOf:staticSprite.size)
        staticSprite.physicsBody?.isDynamic = false
        
        
        self.addChild(sprite)
        self.addChild(staticSprite)
        
    }
    
}
