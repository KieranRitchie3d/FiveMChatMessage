local messages = {
    "Server Restart Schedule: 08:00, 13:00, 20:00.",
    "Join the official Discord: URLHERE",
    "Check out our forum: URLHERE",
    "Check out our store! URLHERE",
--    "Add another message!", -- Add as many as you want.
}

Citizen.CreateThread(function()
    local messageIndex = 1
    while true do
        -- Send the current message
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0}, -- RGB of message announcer
            multiline = true,
            args = {'Server', messages[messageIndex]} -- Change 'Server' to the name of your message announcer, example 'Server Announcement' 'My Server Name' 
        })

        -- Move to the next message (cycle back to the first message if at the end) // DONT TOUCH
        messageIndex = (messageIndex % #messages) + 1

        Citizen.Wait(600000) -- Wait for 10 minutes (in milliseconds) before sending the next message
    end
end)
