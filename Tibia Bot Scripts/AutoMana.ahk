#Requires AutoHotkey v2.0

CoordX := 1134
CoordY := 8
TargetColor := 0x292929  ; Make sure the color is in BGR format
ButtonToPress := "{F1}"

CheckPixelColor() {
    Loop {
        If WinActive("Tibia") {
            PixelColor := PixelGetColor(CoordX, CoordY)
            If (PixelColor = TargetColor) {
                Send ButtonToPress
            }
        }
        Sleep 10  ; Wait for 10 milliseconds (1 second) before repeating the check
    }
}

CheckPixelColor()  ; Start the loop
