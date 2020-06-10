import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas: Canvas
    
    // Create an array of many agents
    var agents: [Agent] = []
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 700, height: 700)
        
        // Our funky brick color and flower colors
        let brick = Color(hue: 9, saturation: 60, brightness: 50, alpha: 100)
        let pink = Color(hue: 324, saturation: 50, brightness: 75, alpha: 100)
        
        // Test if it's the right color
        canvas.fillColor = pink
        canvas.drawShapesWithFill = true
        
        // Draws the fun flower pot
        
        // Create many instances of the Agent structure
        for _ in 1...20 {
            
            let anotherAgent = Agent(centre: Point(x: canvas.width / 2, y: canvas.height / 2),
                                     radius: 20,
                                     velocity: Vector(x: Double.random(in: -2...2),
                                                      y: Double.random(in: -2...2)),
                                     drawsUpon: canvas)
            
            agents.append(anotherAgent)
            
        }
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
       
        // Update the position of the agent
        for agent in agents {
            agent.update()
        }
        
    }
    
    // Clear the canvas
    func clearCanvas() {
        
        // "Clear" the canvas after each draw
        canvas.drawShapesWithBorders = false
        canvas.drawShapesWithFill = true
        canvas.fillColor = .white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)
        canvas.drawShapesWithFill = false
        canvas.drawShapesWithBorders = true
        
    }
   
}
