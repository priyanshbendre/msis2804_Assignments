import UIKit


var mainframe = UIView(frame: CGRect(x:0, y:0, width: 375, height: 620)) //Main screen size definition
let container = mainframe
mainframe.backgroundColor = UIColor.darkGray


let subviewresult = UIView(frame: CGRect(x:20, y:30, width: 335, height: 100)) //Calculator result view
subviewresult.backgroundColor = UIColor.systemGray3
let subviewbutton = UIView(frame: CGRect(x:20, y:150, width: 335, height: 450)) //Calc buttons background view
subviewbutton.backgroundColor = UIColor.systemGray3
container.addSubview(subviewresult)
container.addSubview(subviewbutton) //view output after this step to see the frame of calculator


let result = mainframe
let textLabel = UILabel(frame: CGRect(x:20, y:25, width: 335, height: 100))
textLabel.text = "0123" //printing static value in the calculator display
textLabel.font = textLabel.font.withSize(50)
textLabel.textAlignment = .right
result.addSubview(textLabel)


// Button creation function
func printCalc(col: Int, row: Int, titleText: String, color: Int = 0){
    var horizontalDist = 30 //initialize coordinate where we want to start printing butttons
    if col != 0{ //if not the first column, then add space to form 2nd column of the grid
        horizontalDist = horizontalDist + (110*col)
    }
    
    var verticalDist = 160 //similar to horizontal distance calculation
    if row != 0 {
        verticalDist = verticalDist + (110*row)
    }
    
    let butt = UIButton(type: .system)
    let size = CGRect(x: horizontalDist, y: verticalDist, width: 100, height: 100) //button size and coordinate
    butt.frame = size
    butt.titleLabel?.font = UIFont.systemFont(ofSize: 45)
    butt.setTitle(titleText, for: .normal) //title passed from function
    butt.setTitleColor(UIColor.white, for: .normal)
    
    var buttonColor = UIColor.systemGray
    if color != 0{ //for special buttons, override the current color and make the button orange
        buttonColor = UIColor.orange
    }
    butt.backgroundColor = buttonColor
    container.addSubview(butt)
}


// Print button with row, col number, title label and optional color
// can be printed using loops but for readability
// Acceptable values only between 0-3 for cols and 0-2 for rows
printCalc(col:0, row: 0, titleText: "7")
printCalc(col:0, row: 1, titleText: "4")
printCalc(col:0, row: 2, titleText: "1")
printCalc(col:1, row: 0, titleText: "8")
printCalc(col:1, row: 1, titleText: "5")
printCalc(col:1, row: 2, titleText: "2")
printCalc(col:2, row: 0, titleText: "9")
printCalc(col:2, row: 1, titleText: "6")
printCalc(col:2, row: 2, titleText: "3")
printCalc(col: 2, row: 3, titleText: "C", color: 1)
printCalc(col: 0, row: 3, titleText: "+", color: 1)
printCalc(col: 1, row: 3, titleText: "0")
