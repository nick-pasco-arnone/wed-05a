
// Created on: October 3
// Created by: Nick Pasco-Arnone
// Created for: ICS3U
// This programme can rotate between 3 Scenes

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import SpriteKit

class SplashScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let SplashSceneBackground = SKSpriteNode(imageNamed: "IMG_0819.PNG")
    let moveToNextSceneDelay = SKAction.wait(forDuration: 3.0)
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 0.15, green:0.15, blue:0.3, alpha: 1.0)
        
        SplashSceneBackground.name = "Splash scene background"
        SplashSceneBackground.position = CGPoint(x: frame.size.width/2, y: frame.size.height / 2)
        SplashSceneBackground.size = CGSize(width: frame.size.width, height: frame.size.height)
        self.addChild(SplashSceneBackground) 
        
        SplashSceneBackground.run(moveToNextSceneDelay) {
            let mainMenuScene = MainMenuScene(size: self.size)
            self.view!.presentScene(mainMenuScene)
        }
        
        
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
}

class MainMenuScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let SplashSceneBackground = SKSpriteNode(imageNamed: "IMG_0820.PNG")
    let moveToNextSceneDelay = SKAction.wait(forDuration: 3.0)
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 5, green:3, blue:3, alpha: 1.0)
        
        let spaceship2 = SKSpriteNode(imageNamed: "IMG_0820.PNG")
        spaceship2.position = CGPoint(x: 300, y: 100)
        self.addChild(spaceship2)
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        let mainMenuScene = GameScene(size: self.size)
        self.view!.presentScene(mainMenuScene)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
}


class GameScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let spaceship3 = SKSpriteNode(imageNamed: "IMG_0821.PNG")
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 0.15, green:0.15, blue:0.3, alpha: 1.0)
        spaceship3.position = CGPoint(x: (frame.size.width / 2), y: 100)
        spaceship3.name = "ship 3"
        self.addChild(spaceship3)
        spaceship3.setScale(0.65)
        
        spaceship3.run(SKAction.playSoundFileNamed("bomb-06.wav", waitForCompletion: false))
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        let mainMenuScene = SplashScene(size: self.size)
        self.view!.presentScene(mainMenuScene)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
    }
}
// this will be commented out when code moved to Xcode

// set the frame to be the size for your iPad
let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height
let frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)

let scene = SplashScene(size: frame.size)
scene.scaleMode = SKSceneScaleMode.resizeFill

let skView = SKView(frame: frame)
skView.showsFPS = true
skView.showsNodeCount = true
skView.presentScene(scene)

PlaygroundPage.current.liveView = skView

