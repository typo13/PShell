$computers = Get-Content -path C:\ServerList.txt
$user = "Administrator"
$password = "Stonemor1!"
Foreach($computer in $computers)
{
 $user = [adsi]"WinNT://$computer/$user,user"
 $user.SetPassword($Password)
 $user.SetInfo()
}