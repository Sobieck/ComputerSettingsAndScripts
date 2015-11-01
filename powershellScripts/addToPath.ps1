$newPathItem = Read-Host "What is the path you want to add?"

Add-PathVariable $newPathItem -Target Machine
