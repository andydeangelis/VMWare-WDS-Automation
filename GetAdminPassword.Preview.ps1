#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-GetAdminPassword_psf {

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
	$formSetAdminis6tratorPas = New-Object 'System.Windows.Forms.Form'
	$textboxAdminPassword = New-Object 'System.Windows.Forms.TextBox'
	$labelEnterPassword = New-Object 'System.Windows.Forms.Label'
	$buttonOK = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formSetAdminis6tratorPas.SuspendLayout()
	#
	# formSetAdminis6tratorPas
	#
	$formSetAdminis6tratorPas.Controls.Add($textboxAdminPassword)
	$formSetAdminis6tratorPas.Controls.Add($labelEnterPassword)
	$formSetAdminis6tratorPas.Controls.Add($buttonOK)
	$formSetAdminis6tratorPas.AcceptButton = $buttonOK
	$formSetAdminis6tratorPas.AutoScaleDimensions = '13, 26'
	$formSetAdminis6tratorPas.AutoScaleMode = 'Font'
	$formSetAdminis6tratorPas.ClientSize = '453, 258'
	$formSetAdminis6tratorPas.FormBorderStyle = 'FixedDialog'
	$formSetAdminis6tratorPas.Margin = '13, 12, 13, 12'
	$formSetAdminis6tratorPas.MaximizeBox = $False
	$formSetAdminis6tratorPas.MinimizeBox = $False
	$formSetAdminis6tratorPas.Name = 'formSetAdminis6tratorPas'
	$formSetAdminis6tratorPas.StartPosition = 'CenterScreen'
	$formSetAdminis6tratorPas.Text = 'Set Adminis6trator Password'
	$formSetAdminis6tratorPas.add_Load($formSetAdminis6tratorPas_Load)
	#
	# textboxAdminPassword
	#
	$textboxAdminPassword.Location = '15, 113'
	$textboxAdminPassword.Margin = '6, 6, 6, 6'
	$textboxAdminPassword.Name = 'textboxAdminPassword'
	$textboxAdminPassword.PasswordChar = '*'
	$textboxAdminPassword.Size = '402, 32'
	$textboxAdminPassword.TabIndex = 2
	$textboxAdminPassword.add_TextChanged($textboxAdminPassword_TextChanged)
	#
	# labelEnterPassword
	#
	$labelEnterPassword.AutoSize = $True
	$labelEnterPassword.Location = '15, 37'
	$labelEnterPassword.Margin = '6, 0, 6, 0'
	$labelEnterPassword.Name = 'labelEnterPassword'
	$labelEnterPassword.Size = '402, 31'
	$labelEnterPassword.TabIndex = 1
	$labelEnterPassword.Text = 'Local Administrator Account Password:'
	$labelEnterPassword.UseCompatibleTextRendering = $True
	#
	# buttonOK
	#
	$buttonOK.Anchor = 'Bottom, Right'
	$buttonOK.DialogResult = 'OK'
	$buttonOK.Enabled = $False
	$buttonOK.Location = '265, 188'
	$buttonOK.Margin = '6, 6, 6, 6'
	$buttonOK.Name = 'buttonOK'
	$buttonOK.Size = '162, 46'
	$buttonOK.TabIndex = 0
	$buttonOK.Text = '&OK'
	$buttonOK.UseCompatibleTextRendering = $True
	$buttonOK.UseVisualStyleBackColor = $True
	$buttonOK.add_Click($buttonOK_Click)
	$formSetAdminis6tratorPas.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formSetAdminis6tratorPas.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formSetAdminis6tratorPas.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formSetAdminis6tratorPas.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formSetAdminis6tratorPas.ShowDialog()

} #End Function

#Call the form
Show-GetAdminPassword_psf | Out-Null
