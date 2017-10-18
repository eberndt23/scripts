$Path = "$env:SystemDrive\Office_365\Microsoft_Office_2016"
echo $Path\
New-Item -ItemType Directory -Path "$Path\old\$((Get-Date).ToString('MM-dd-yyyy'))