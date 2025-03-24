# Author: Gary Phillips
# Date: 2025-03-23

#>

# Clear the terminal window
Clear-Host

# Write the terminal window 
Write-Output ""
Write-Output "----------------------"
Write-Output "Starting Case df-mod2-forensic-copy CREATE Evidence script"
Write-Output "----------------------"
Write-Output "In a PowerShell terminal, run:"
Write-Output ".\evidence.ps1"
Write-Output "----------------------"
Write-Output ""
Write-Output "First, we'll clean up old evidence"
Write-Output ""
Write-Output "----------------------"
Write-Output "      Start Case df-mod2forensic-copy UNDO script     "
Write-Output "----------------------"
Write-output "      Deleted directory './evidence-copy' and any child files.    "
Write-Output "      Done cleaning up old evidence.       "
Write-Output "----------------------"
Write-Output "Done creating evidence. See new .\evidence-copy subfolder"
Write-Output "----------------------"

# Original evidence files
Write-Output "Calculating hashes for original evidence files:"
Write-Output "----------------------"
Write-Output "Hash for Who_Done_It.png:"
Get-FileHash -Path .\evidence\Who_Done_It.png -Algorithm SHA256
Write-Output "Hash for Darkwing_Duck.jpg:"
Get-FileHash -Path .\evidence\Darkwing_Duck.jpg -Algorithm SHA256
Write-Output "Hash for doc1.txt:"
Get-FileHash -Path .\evidence\doc1.txt -Algorithm SHA256
Write-Output "Hash for doc2.txt:"
Get-FileHash -Path .\evidence\doc2.txt -Algorithm SHA256
Write-Output "Hash for Mr.Green.png:"
Get-FileHash -Path .\evidence\Mr.Green.png -Algorithm SHA256

# Copied evidence files
Write-Output "----------------------"
Write-Output "Calculating hashes for copied evidence files:"
Write-Output "----------------------"
Write-Output "Hash for Who_Done_It.png (copy):"
Get-FileHash -Path .\evidence-copy\Who_Done_It.png -Algorithm SHA256
Write-Output "Hash for Darkwing_Duck.jpg (copy):"
Get-FileHash -Path .\evidence-copy\Darkwing_Duck.jpg -Algorithm SHA256
Write-Output "Hash for doc1.txt (copy):"
Get-FileHash -Path .\evidence-copy\doc1.txt -Algorithm SHA256
Write-Output "Hash for doc2.txt (copy):"
Get-FileHash -Path .\evidence-copy\doc2.txt -Algorithm SHA256
Write-Output "Hash for Mr.Green.png (copy):"
Get-FileHash -Path .\evidence-copy\Mr.Green.png -Algorithm SHA256