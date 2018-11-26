$currFolder = (Get-Item -Path ".\").FullName + "\"
$destFolder = (Get-Item -Path ".\").parent.FullName  + "\.git\hooks\"
$pythonFile = "pre-commit.py"
$gitFile = "pre-commit"

pip --disable-pip-version-check install oletools

if(-Not(Test-Path ($destFolder + $pythonFile).ToString() -PathType Leaf)) {
    Copy-Item -Path ($currFolder + $pythonFile).ToString() -Destination $destFolder.ToString()
}

if(-Not(Test-Path ($destFolder + $gitFile).ToString() -PathType Leaf)) {
    Copy-Item -Path ($currFolder + $gitFile).ToString() -Destination $destFolder.ToString()
}
