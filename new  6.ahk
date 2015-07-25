
TempRavno =
TempPlusRavno = 
MainEdit = 

Gui, Add, Edit, vMainEdit 
Gui, Add, Button, Default, +
Gui, Add, Button, Default, =


Gui, Show,, Untitled

return

ButtonPlus:
Gui, Submit
TempPlusRavno = %MainEdit%
;msgbox, %MainEdit%
MainEdit = ; типо очистили

GuiControl,, MainEdit, %MainEdit%  ; Put the text into the control.
Gui, Show,, Untitled
return

ButtonRavno:
Gui, Submit

TempRavno := TempPlusRavno+MainEdit


GuiControl,, MainEdit, %TempRavno%  ; Put the text into the control.
Gui, Show,, Untitled