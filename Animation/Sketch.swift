import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas: Canvas
    
    // This function runs once
    override init() {
        
        
        // Create canvas object – specify size
        canvas = Canvas(width: 700, height: 700)
        
        // No fill on canvas
        canvas.drawShapesWithFill = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // x will increase starting from 0 and y will be determined from x
        var x = 0.0
        
        canvas.drawEllipse(at: Point(x: x, y: pow(x, 2.0)), width: 30, height: 30)
        
        x += 1
        
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
