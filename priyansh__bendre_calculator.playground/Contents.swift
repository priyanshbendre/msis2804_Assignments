import UIKit


var mainframe = UIView(frame: CGRect(x:0, y:0, width: 375, height: 620))
let container = mainframe
mainframe.backgroundColor = UIColor.darkGray


let subviewresult = UIView(frame: CGRect(x:20, y:30, width: 335, height: 100))
subviewresult.backgroundColor = UIColor.systemGray3


let subviewbutton = UIView(frame: CGRect(x:20, y:150, width: 335, height: 450))
subviewbutton.backgroundColor = UIColor.systemGray3


container.addSubview(subviewresult)
container.addSubview(subviewbutton)


let result = mainframe
let textLabel = UILabel(frame: CGRect(x:20, y:25, width: 335, height: 100))
textLabel.text = "0123"
textLabel.font = textLabel.font.withSize(50)
textLabel.textAlignment = .right
//insert alignment
//insert font size and font type
result.addSubview(textLabel)


// BUTTONS----------------------------------------------------
let button7 = UIButton(type: .system)
button7.frame = CGRect(x: 25, y: 160, width: 100, height: 100)
button7.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button7.setTitle("7", for: .normal)
button7.setTitleColor(UIColor.white, for: .normal)
button7.backgroundColor = UIColor.systemGray
container.insertSubview(button7, at: 10)


let button8 = UIButton(type: .system)
button8.frame = CGRect(x: 135, y: 160, width: 100, height: 100)
button8.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button8.setTitle("8", for: .normal)
button8.setTitleColor(UIColor.white, for: .normal)
button8.backgroundColor = UIColor.systemGray
container.insertSubview(button8, at: 10)


let button9 = UIButton(type: .system)
button9.frame = CGRect(x: 245, y: 160, width: 100, height: 100)
button9.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button9.setTitle("9", for: .normal)
button9.setTitleColor(UIColor.white, for: .normal)
button9.backgroundColor = UIColor.systemGray
container.insertSubview(button9, at: 12)


let button4 = UIButton(type: .system)
button4.frame = CGRect(x: 25, y: 270, width: 100, height: 100)
button4.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button4.setTitle("4", for: .normal)
button4.setTitleColor(UIColor.white, for: .normal)
button4.backgroundColor = UIColor.systemGray
container.insertSubview(button4, at: 12)


let button5 = UIButton(type: .system)
button5.frame = CGRect(x: 135, y: 270, width: 100, height: 100)
button5.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button5.setTitle("5", for: .normal)
button5.setTitleColor(UIColor.white, for: .normal)
button5.backgroundColor = UIColor.systemGray
container.insertSubview(button5, at: 12)


let button6 = UIButton(type: .system)
button6.frame = CGRect(x: 245, y: 270, width: 100, height: 100)
button6.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button6.setTitle("6", for: .normal)
button6.setTitleColor(UIColor.white, for: .normal)
button6.backgroundColor = UIColor.systemGray
container.insertSubview(button6, at: 12)


let button1 = UIButton(type: .system)
button1.frame = CGRect(x: 25, y: 380, width: 100, height: 100)
button1.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button1.setTitle("1", for: .normal)
button1.setTitleColor(UIColor.white, for: .normal)
button1.backgroundColor = UIColor.systemGray
container.insertSubview(button1, at: 12)

let button2 = UIButton(type: .system)
button2.frame = CGRect(x: 135, y: 380, width: 100, height: 100)
button2.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button2.setTitle("2", for: .normal)
button2.setTitleColor(UIColor.white, for: .normal)
button2.backgroundColor = UIColor.systemGray
container.insertSubview(button2, at: 12)


let button3 = UIButton(type: .system)
button3.frame = CGRect(x: 245, y: 380, width: 100, height: 100)
button3.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button3.setTitle("3", for: .normal)
button3.setTitleColor(UIColor.white, for: .normal)
button3.backgroundColor = UIColor.systemGray
container.insertSubview(button3, at: 12)


let buttonplus = UIButton(type: .system)
buttonplus.frame = CGRect(x: 25, y: 490, width: 100, height: 100)
buttonplus.titleLabel?.font = UIFont.systemFont(ofSize: 45)
buttonplus.setTitle("+", for: .normal)
buttonplus.setTitleColor(UIColor.white, for: .normal)
buttonplus.backgroundColor = UIColor.orange
container.insertSubview(buttonplus, at: 12)


let buttonclear = UIButton(type: .system)
buttonclear.frame = CGRect(x: 245, y: 490, width: 100, height: 100)
buttonclear.titleLabel?.font = UIFont.systemFont(ofSize: 45)
buttonclear.setTitle("C", for: .normal)
buttonclear.setTitleColor(UIColor.white, for: .normal)
buttonclear.backgroundColor = UIColor.orange
container.insertSubview(buttonclear, at: 12)


let button0 = UIButton(type: .system)
button0.frame = CGRect(x: 135, y: 490, width: 100, height: 100)
button0.titleLabel?.font = UIFont.systemFont(ofSize: 45)
button0.setTitle("0", for: .normal)
button0.setTitleColor(UIColor.white, for: .normal)
button0.backgroundColor = UIColor.systemGray
container.insertSubview(button0, at: 12)
