#Requires AutoHotkey v2.0

CoordX := 1143
CoordY := 13
TargetColor := 0x2C2C2C  ; Make sure the color is in BGR format
ButtonToPress := "{2}"

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
