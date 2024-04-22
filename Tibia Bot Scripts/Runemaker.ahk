#Persistent  ; Keeps the script running
SetTimer, PressBracket, 100  ; Initial timer for pressing bracket
return

PressBracket:
IfWinActive, Tibia  ; Check if the specified window is active
{
    Send, {]}  ; Send the right bracket key press or change to desired key
    Random, randBracketDelay, 102000, 105000  ; Random delay between 102 and 105 seconds - set your own delay
    SetTimer, PressBracket, -%randBracketDelay%  ; Reset the timer with the new random delay
}
return
