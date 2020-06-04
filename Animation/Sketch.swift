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
        
        // This will come in handy to keep track of how many loops it's been
              var counter = 0
        
        // no borders,shapes with fill
        canvas.drawShapesWithBorders = false
        canvas.drawShapesWithFill = true
        
        
        
        // Create many instances of the Agent structure
        for _ in 1...5 {
            
            // Sets up speed var that will change to make sure the lines goes in the right direction
            var speed = -1
            
            if counter == 0 {
                speed += 2
            } else if counter == 2 {
                speed += 2
            } else if counter == 4 {
                speed += 2
            } else {
                speed += 0
            }
            
            
            let anotherAgent = Agent(centre: Point(x: canvas.width / 2, y: 600 - (120 * counter)),
                                     radius: 30,
                                     velocity: Vector(x: speed,
                                                      y: 0 ),
                                     drawsUpon: canvas)
            
            // Makes the agent
            agents.append(anotherAgent)
            
            // Adds to counter
            counter += 1
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
