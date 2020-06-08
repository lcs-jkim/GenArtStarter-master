import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas: Canvas
    
        var right = 350
        var left = 350
        var up = 350
        var down = 350
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 700, height: 700)
        
        // Draw shapes with fill and no border
        canvas.drawShapesWithFill = true
        canvas.drawShapesWithBorders = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        right += 1
        left -= 1
        up += 1
        down -= 1
        
        // Starting with the red line going right and up
        canvas.fillColor = Color.red
        
        // We now start with a circle in the middle of the canvas
        canvas.drawEllipse(at: Point(x: right, y: up), width: 60, height: 60)
        
        // Now we're doing the blue down right line
        canvas.fillColor = Color.blue
        canvas.drawEllipse(at: Point(x: right, y: down), width: 60, height: 60)
        
        // The yellow left down line now
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(at: Point(x: left, y: down), width: 60, height: 60)
        
        // The final green left up line
        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: left, y: up), width: 60, height: 60)
    }
   
}
