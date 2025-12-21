-- Load the necessary libraries
local love = require("love")

-- Variables to hold the sound and image
local horrorSound
local horrorImage

function love.load()
    -- Load the horror sound effect
    horrorSound = love.audio.newSource("horror_sound.mp3", "static")
    
    -- Load the horror image
    horrorImage = love.graphics.newImage("horror_image.png")
end

function love.keypressed(key)
    -- Play the horror sound when the space key is pressed
    if key == "space" then
        horrorSound:play()
    end
end

function love.draw()
    -- Draw the horror image on the screen
    love.graphics.draw(horrorImage, 100, 100)
end
