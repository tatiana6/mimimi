Pet=
Gui, Add, Text,, Анкета
Gui, Add, Text,, Как тебя зовут?
Gui, Add, Edit, vMainEdit

Gui, Add, Text,, Сколько тебе лет?
Gui, Add, Edit, vEdit
Gui, Add, UpDown

Gui, Add, Text,, Кто ты по знаку зодиака?
Gui, Add, DropDownList, vDropDownList, овен|телец|близнецы|рак|лев|дева|весы|скорпион|стрелец|козерог|водолей|рыбы

Gui, Add, Text,, Есть ли у тебя домашнее животное?
Gui, Add, Checkbox, vCheckbox

Gui, Add, Button, Default, Сохранить

Gui, Show,  w250 h300 


return

ButtonСохранить:
Gui, Submit
if Checkbox=1 
{
	Pet=есть
}
if Checkbox=0 
{
	Pet=нет
}
FileAppend, Имя: %MainEdit%`nПолных лет: %Edit%`nЗнак зодиака: %DropDownList%`nДомашнее животное: %Pet%, C:\Users\lapkabig\Desktop\%MainEdit%.txt
