#------------------RUN-AZURE-SYNC--------------------#

#Start-adsyncsynccycle -policytype delta
Write-Host "Run The Azure Sync Script"

CLS

#TIMER (5 Min)
$delay = 300
$Counter_Form = New-Object System.Windows.Forms.Form
$Counter_Form.Text = "Waiting For Azure..."
$Counter_Form.Width = 450
$Counter_Form.Height = 200
$Counter_Label = New-Object System.Windows.Forms.Label
$Counter_Label.AutoSize = $true 
$Counter_Form.Controls.Add($Counter_Label)
while ($delay -ge 0)
{
  $Counter_Form.Show()
  $Counter_Label.Text = "Seconds Remaining: $($delay)"
  start-sleep 1
  $delay -= 1
}
$Counter_Form.Close() 
Write-Host "...Azure Finished Syncing!" -foreground green
Pause
