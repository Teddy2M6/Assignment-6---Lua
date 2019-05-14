local userNumberTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 600, 110 )
userNumberTextField.id = "n textField"

local numberTextField = display.newText( "Enter a Number", display.contentCenterX, display.contentCenterY - 90, native.systemFont, 90 )
numberTextField.id = "number textField"
numberTextField:setFillColor( 0, 0, 255 )

local calculateButton = display.newImageRect( "./calculate.png", 300, 300 )
calculateButton.x = 550
calculateButton.y = 1500
calculateButton.id = "calculate button"

local valueOfPiTextField = display.newText( "Pi", display.contentCenterX, display.contentCenterY - 330, native.systemFont, 90 )
valueOfPiTextField.id = "pi textField"
valueOfPiTextField:setFillColor( 0, 0, 255 )

display.setDefault("background", 0, 255, 0)

local function calculateButtonTouch ( event )

local ittereations
local mathNumbers
local answer

answer = 0
ittereations = tonumber( userNumberTextField.text )
mathNumbers = -1 

for math = 1, ittereations, 1 do
	mathNumbers = mathNumbers*-1
	answer = answer + 4/(2*math-1)*mathNumbers
	valueOfPiTextField.text = ("Pi is "..answer)

end 

if tonumber(userNumberTextField.text) < 0 then
	valueOfPiTextField.text = ("Enter a positive number")
end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )