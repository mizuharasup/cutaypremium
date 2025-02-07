local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

TextLabel.Parent = ScreenGui
TextLabel.Text = "wait update \n Discord.gg/baokhanh \n ak gaming ez là 1 người được mệnh danh là chúa nhận vơ với việc nhận vơ script của người khác là của mình"
TextLabel.Position = UDim2.new(0.5, 0, 0,5, 0.5)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundTransparency = 0.5
TextLabel.TextSize = 10
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextWrapped = false

local function adjustUI(label)
    local textLength = string.len(label.Text)
    local textWidth = textLength * label.TextSize * 0
    label.Size = UDim2.new(0, textWidth + 0, 0, 0)
end

adjustUI(TextLabel)

local moveSpeed = 0
local directionX = moveSpeed
local directionY = moveSpeed

local function moveLabel()
    while true do
        local currentPos = TextLabel.Position
        local newX = currentPos.X.Scale + directionX
        local newY = currentPos.Y.Scale + directionY

        if newX >= 1 or newX <= 0 then
            directionX = -directionX
        end
        if newY >= 1 or newY <= 0 then
            directionY = -directionY
        end

        TextLabel.Position = UDim2.new(newX, 0, newY, 0)
        wait(0.03) -- Điều chỉnh tốc độ cập nhật vị trí
    end
end

spawn(moveLabel)

spawn(function()
    while true do
        for i = 0, 1, 0.01 do
            TextLabel.TextColor3 = Color3.fromHSV(i, 1, 1)
            wait(0.05)
        end
    end
end)
