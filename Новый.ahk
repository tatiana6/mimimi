Pet=
Gui, Add, Text,, ������
Gui, Add, Text,, ��� ���� �����?
Gui, Add, Edit, vMainEdit

Gui, Add, Text,, ������� ���� ���?
Gui, Add, Edit, vEdit
Gui, Add, UpDown

Gui, Add, Text,, ��� �� �� ����� �������?
Gui, Add, DropDownList, vDropDownList, ����|�����|��������|���|���|����|����|��������|�������|�������|�������|����

Gui, Add, Text,, ���� �� � ���� �������� ��������?
Gui, Add, Checkbox, vCheckbox

Gui, Add, Button, Default, ���������

Gui, Show,  w250 h300 


return

Button���������:
Gui, Submit
if Checkbox=1 
{
	Pet=����
}
if Checkbox=0 
{
	Pet=���
}
FileAppend, ���: %MainEdit%`n������ ���: %Edit%`n���� �������: %DropDownList%`n�������� ��������: %Pet%, C:\Users\lapkabig\Desktop\%MainEdit%.txt
