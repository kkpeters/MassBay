### Sort an output depending on a property
```
Get-Service | Sort-Object -Property Status
```


```
PS C:\Admin> Write-Output "hi"
hi
PS C:\Admin> Write-Output "hi" | Out-File C:\Admin\test.txt
PS C:\Admin> get-content .\test.txt
hi
```














