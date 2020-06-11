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
        let pink = Color(hue: 324, saturation: 50, brightness: 75, alpha: 100)
        let red = Color(hue: 360, saturation: 60, brightness: 52, alpha: 100)
        let darkPurple = Color(hue: 298, saturation: 50, brightness: 30, alpha: 100)
        let lightPurple = Color(hue: 279, saturation: 50, brightness: 85, alpha: 100)
        let lightBlue = Color(hue: 225, saturation: 50, brightness: 80, alpha: 100)
        let orange = Color(hue: 35, saturation: 90, brightness: 80, alpha: 100)
        let green = Color(hue: 107, saturation: 50, brightness: 38, alpha: 100)
        let randomNumber = Int.random(in: 2...6)
        var color = Color.black
        
        switch randomNumber {
        case 2:
            color = red
        case 3:
            color = darkPurple
        case 4:
            color = lightPurple
        case 5:
            color = lightBlue
        case 6:
            color = orange
        default:
            color = pink
        }
        
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
        
        canvas.drawShapesWithFill = true
        canvas.drawShapesWithBorders = false
        canvas.fillColor = color
        
        let numberOfFlowers = Int.random(in: 5...25)
        var counter = 0
        
        while counter < numberOfFlowers {
            canvas.drawEllipse(at: Point(x: Double.random(in: 200...500), y: Double.random(in: 250...400)), width: 20, height: 20)
            counter += 1
        }
        
        // Setting the line color to green
        canvas.lineColor = green
        
        
        
    }
    
    var grass = 240.0
    var grass1 = 240.0
    var grass2 = 240.0
    var grass3 = 240.0
    var grass4 = 240.0
    var grass5 = 240.0
    var grass6 = 240.0
    var grass7 = 240.0
    var grass8 = 240.0
    var grass9 = 240.0
    var grass10 = 240.0
    var grass11 = 240.0
    var grass12 = 240.0
    var grass13 = 240.0
    var grass14 = 240.0
    var grass15 = 240.0
    let a = Double.random(in: 240...600)
    let b = Double.random(in: 240...600)
    let c = Double.random(in: 240...600)
    let d = Double.random(in: 240...600)
    let e = Double.random(in: 240...600)
    let f = Double.random(in: 240...600)
    let g = Double.random(in: 240...600)
    let h = Double.random(in: 240...600)
    let i = Double.random(in: 240...600)
    let j = Double.random(in: 240...600)
    let k = Double.random(in: 240...600)
    let l = Double.random(in: 240...600)
    let m = Double.random(in: 240...600)
    let n = Double.random(in: 240...600)
    let o = Double.random(in: 240...600)
    let p = Double.random(in: 240...600)
    
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
        
        canvas.drawLine(from: Point(x: 320, y: 205), to: Point(x: 320, y: grass6))
        
        if grass6 < g {
            grass6 += 1
        }
        
        canvas.drawLine(from: Point(x:  340, y: 205), to: Point(x: 340, y: grass7))
        
        if grass7 < h {
            grass7 += 1
        }
        
        canvas.drawLine(from: Point(x: 360, y: 205), to: Point(x: 360, y: grass8))
        
        if grass8 < i {
            grass8 += 1
        }
        
        canvas.drawLine(from: Point(x: 380, y: 205), to: Point(x: 380, y: grass9))
        
        if grass9 < j {
            grass9 += 1
        }
        
        canvas.drawLine(from: Point(x: 400, y: 205), to: Point(x: 400, y: grass10))
        
        if grass10 < k {
            grass10 += 1
        }
        
        canvas.drawLine(from: Point(x: 420, y: 208), to: Point(x: 420, y: grass11))
        
        if grass11 < l {
            grass11 += 1
        }
        
        canvas.drawLine(from: Point(x: 440, y: 210), to: Point(x: 440, y: grass12))
        
        if grass12 < m {
            grass12 += 1
        }
        
        canvas.drawLine(from: Point(x: 460, y: 215), to: Point(x: 460, y: grass13))
        
        if grass13 < n {
            grass13 += 1
        }
        
        canvas.drawLine(from: Point(x: 480, y: 225), to: Point(x: 480, y: grass14))
        
        if grass14 < o {
            grass14 += 1
        }
        
        canvas.drawLine(from: Point(x: 500, y: 240), to: Point(x: 500, y: grass15))
        
        if grass15 < p {
            grass15 += 1
        }
        
    }
    
}
