#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-EnterProductKey_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formEnterOSKey = New-Object 'System.Windows.Forms.Form'
	$maskedtextboxOSKey = New-Object 'System.Windows.Forms.MaskedTextBox'
	$labelOSProductKey = New-Object 'System.Windows.Forms.Label'
	$buttonOK = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formEnterOSKey.SuspendLayout()
	#
	# formEnterOSKey
	#
	$formEnterOSKey.Controls.Add($maskedtextboxOSKey)
	$formEnterOSKey.Controls.Add($labelOSProductKey)
	$formEnterOSKey.Controls.Add($buttonOK)
	$formEnterOSKey.AcceptButton = $buttonOK
	$formEnterOSKey.AutoScaleDimensions = '6, 13'
	$formEnterOSKey.AutoScaleMode = 'Font'
	$formEnterOSKey.ClientSize = '204, 128'
	$formEnterOSKey.FormBorderStyle = 'FixedSingle'
	$formEnterOSKey.MaximizeBox = $False
	$formEnterOSKey.MinimizeBox = $False
	$formEnterOSKey.Name = 'formEnterOSKey'
	$formEnterOSKey.StartPosition = 'CenterScreen'
	$formEnterOSKey.Text = 'Enter OS Product Key'
	$formEnterOSKey.add_Load($formEnterOSKey_Load)
	#
	# maskedtextboxOSKey
	#
	$maskedtextboxOSKey.Location = '12, 54'
	$maskedtextboxOSKey.Mask = 'AAAAA-AAAAA-AAAAA-AAAAA-AAAAA'
	$maskedtextboxOSKey.Name = 'maskedtextboxOSKey'
	$maskedtextboxOSKey.PromptChar = ' '
	$maskedtextboxOSKey.Size = '178, 20'
	$maskedtextboxOSKey.TabIndex = 2
	$maskedtextboxOSKey.add_Enter($maskedtextboxOSKey_Enter)
	#
	# labelOSProductKey
	#
	$labelOSProductKey.AutoSize = $True
	$labelOSProductKey.Location = '12, 24'
	$labelOSProductKey.Name = 'labelOSProductKey'
	$labelOSProductKey.Size = '88, 17'
	$labelOSProductKey.TabIndex = 1
	$labelOSProductKey.Text = 'OS Product Key:'
	$labelOSProductKey.UseCompatibleTextRendering = $True
	#
	# buttonOK
	#
	$buttonOK.Anchor = 'Bottom, Right'
	$buttonOK.DialogResult = 'OK'
	$buttonOK.Location = '117, 93'
	$buttonOK.Name = 'buttonOK'
	$buttonOK.Size = '75, 23'
	$buttonOK.TabIndex = 0
	$buttonOK.Text = '&OK'
	$buttonOK.UseCompatibleTextRendering = $True
	$buttonOK.UseVisualStyleBackColor = $True
	$buttonOK.add_Click($buttonOK_Click)
	$formEnterOSKey.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formEnterOSKey.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formEnterOSKey.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formEnterOSKey.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formEnterOSKey.ShowDialog()

} #End Function

#Call the form
Show-EnterProductKey_psf | Out-Null
