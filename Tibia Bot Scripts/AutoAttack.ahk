#Persistent ; Keeps the script running
SetTimer, PressSpace, 50 ; Checks the condition every 50 ms to keep the script responsive
return

PressSpace:
IfWinActive, Tibia ; Checks if the specified window is active
{
    Random, rand, 250, 300 ; Generates a random number between 250 and 300
    Sleep, rand ; Waits for the generated duration
    Send, {Space} ; Presses the space bar
}
return
