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
        
        canvas.fillColor = Color.black
        canvas.drawShapesWithFill = true
        
        // Create an instances of the Agent structure
        // Starts on a random part of the canvas
        let anotherAgent = Agent(centre: Point(x: Double.random(in: 0...700), y: Double.random(in: 0...700)),
                                     radius: 30,
                                     velocity: Vector(x: Double.random(in: 1...1),
                                                      y: Double.random(in: 1...1)),
                                     drawsUpon: canvas)
            
            agents.append(anotherAgent)
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Clear the canvas
        clearCanvas()
        
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
