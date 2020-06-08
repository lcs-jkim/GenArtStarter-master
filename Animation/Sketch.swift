import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas: Canvas
    
    // The left one will decrease making circle go left and right increase so circle go right
    var right = 350
    var left = 350
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 700, height: 700)
        
        // no borders,shapes with fill
        canvas.drawShapesWithBorders = false
        canvas.drawShapesWithFill = true
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
        left -= 2
        right += 2
        
        // Make the line purple
        canvas.fillColor = Color.purple
        
        // The first circle that moves to the right
        canvas.drawEllipse(at: Point(x: right, y: 580), width: 60, height: 60)
    
        // Make the next one orange
        canvas.fillColor = Color.orange
        
        // And another circle but to the left now
        canvas.drawEllipse(at: Point(x: left, y: 460), width: 60, height: 60)
        
        // Now a flouresent green line
        canvas.fillColor = Color.green
        
        // And another one to the right
        canvas.drawEllipse(at: Point(x: right, y: 340), width: 60, height: 60)
        
        // Now a blue line
        canvas.fillColor = Color.blue
           
        // And another one to the left
        canvas.drawEllipse(at: Point(x: left, y: 220), width: 60, height: 60)
        
        // Now a black line
        canvas.fillColor = Color.black
                  
        // And another one to the right
        canvas.drawEllipse(at: Point(x: right, y: 100), width: 60, height: 60)
        
    }

}
