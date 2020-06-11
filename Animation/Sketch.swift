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
        
        // Our funky brick color and flower colors
        let brick = Color(hue: 9, saturation: 60, brightness: 50, alpha: 100)
        let green = Color(hue: 107, saturation: 50, brightness: 38, alpha: 100)
        
        // Draws the fun flower pot, starting with bottom
        // Make the lines
        canvas.drawShapesWithFill = false
        canvas.drawShapesWithBorders = true
        canvas.borderColor = brick
        canvas.defaultBorderWidth = 7
        
        // The bottom of the pot
        canvas.drawEllipse(at: Point(x: 350, y: 100), width: 260, height: 100)
        
        // White rectangle to cover up the top part of the ellipse
        canvas.fillColor = .white
        canvas.drawShapesWithFill = true
        canvas.drawShapesWithBorders = false
        canvas.drawRectangle(at: Point(x: 215, y: 100), width: 270, height: 80)
        
        // Make the sides of the pot
        canvas.defaultLineWidth = 7
        canvas.lineColor = brick
        canvas.drawLine(from: Point(x: 220, y: 100), to: Point(x: 200, y: 240))
        canvas.drawLine(from: Point(x: 480, y: 100), to: Point(x: 500, y: 240))
        
        // Now for the top part
        canvas.fillColor = brick
        canvas.drawShapesWithFill = false
        canvas.drawShapesWithBorders = true
        canvas.drawEllipse(at: Point(x: 350, y: 240), width: 300, height: 80)
        
        // Setting the line color to green
        canvas.lineColor = green
        
    }
    
    var grass = 240.0
    var grass1 = 240.0
    var grass2 = 240.0
    var grass3 = 240.0
    var grass4 = 240.0
    var grass5 = 240.0
    var a = Double.random(in: 240...600)
    var b = Double.random(in: 240...600)
    var c = Double.random(in: 240...600)
    var d = Double.random(in: 240...600)
    var e = Double.random(in: 240...600)
    var f = Double.random(in: 240...600)
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Draws grass that's a random height
        canvas.drawLine(from: Point(x: 200, y: 240), to: Point(x: 200, y: grass))
        
        // Makes the grass grow and stop once it reaches the predetermined random number
        if grass < a {
            grass += 1
        }
        
        canvas.drawLine(from: Point(x: 220, y: 225), to: Point(x: 220, y: grass1))
        
        if grass1 < b {
            grass1 += 1
        }
        
        canvas.drawLine(from: Point(x: 240, y: 215), to: Point(x: 240, y: grass2))
        
        if grass2 < c {
            grass2 += 1
        }
        
        canvas.drawLine(from: Point(x: 260, y: 210), to: Point(x: 260, y: grass3))
        
        if grass3 < d {
            grass3 += 1
        }
        
        canvas.drawLine(from: Point(x: 280, y: 207), to: Point(x: 280, y: grass4))
        
        if grass4 < e {
            grass4 += 1
        }
        
        canvas.drawLine(from: Point(x: 300, y: 205), to: Point(x: 300, y: grass5))
        
        if grass5 < f {
            grass5 += 1
        }
        
    }
    
   
}
