#Persistent
SetTimer, PressPeriod, 100  ; inital start wait
return

PressPeriod:
IfWinActive, Tibia  ; Check if any window containing "Tibia" is active
{
    Send, {.}  ; Send the period key press
    Random, randPeriodDelay, 122000, 126000  ; Randomize the delay between 122 and 126 seconds
    SetTimer, PressPeriod, -%randPeriodDelay%  ; Reset the timer with the new random delay
}
return
