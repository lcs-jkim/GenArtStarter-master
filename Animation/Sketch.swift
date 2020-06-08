import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas: Canvas
    
    var x = 350
    
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
        
        // The first circle that moves to the right
        canvas.drawEllipse(at: Point(x: x, y: 580), width: 60, height: 60)
        
        x += 2
}

}
