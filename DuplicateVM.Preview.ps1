#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-DuplicateVM_psf {

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
	$formDuplicateVM = New-Object 'System.Windows.Forms.Form'
	$panel3 = New-Object 'System.Windows.Forms.Panel'
	$textboxDNS2Dup = New-Object 'System.Windows.Forms.TextBox'
	$labelSecondaryDNSDup = New-Object 'System.Windows.Forms.Label'
	$textboxDNS1Dup = New-Object 'System.Windows.Forms.TextBox'
	$labelDNS1Dup = New-Object 'System.Windows.Forms.Label'
	$checkboxStaticIPDup = New-Object 'System.Windows.Forms.CheckBox'
	$textboxDefaultGatewayDup = New-Object 'System.Windows.Forms.TextBox'
	$labelDefaultGatewayDup = New-Object 'System.Windows.Forms.Label'
	$textboxSubnetMaskDup = New-Object 'System.Windows.Forms.TextBox'
	$labelSubnetMaskDup = New-Object 'System.Windows.Forms.Label'
	$textboxIPAddressDup = New-Object 'System.Windows.Forms.TextBox'
	$comboboxVSwitchDup = New-Object 'System.Windows.Forms.ComboBox'
	$labelIPAddressDup = New-Object 'System.Windows.Forms.Label'
	$labelVirtualSwitchDup = New-Object 'System.Windows.Forms.Label'
	$labelNetworkingDup = New-Object 'System.Windows.Forms.Label'
	$textboxVMNameDup = New-Object 'System.Windows.Forms.TextBox'
	$labelNewVMName = New-Object 'System.Windows.Forms.Label'
	$buttonOK = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formDuplicateVM.SuspendLayout()
	$panel3.SuspendLayout()
	#
	# formDuplicateVM
	#
	$formDuplicateVM.Controls.Add($panel3)
	$formDuplicateVM.Controls.Add($textboxVMNameDup)
	$formDuplicateVM.Controls.Add($labelNewVMName)
	$formDuplicateVM.Controls.Add($buttonOK)
	$formDuplicateVM.AcceptButton = $buttonOK
	$formDuplicateVM.AutoScaleDimensions = '6, 13'
	$formDuplicateVM.AutoScaleMode = 'Font'
	$formDuplicateVM.ClientSize = '261, 405'
	$formDuplicateVM.FormBorderStyle = 'FixedDialog'
	$formDuplicateVM.MaximizeBox = $False
	$formDuplicateVM.MinimizeBox = $False
	$formDuplicateVM.Name = 'formDuplicateVM'
	$formDuplicateVM.StartPosition = 'CenterScreen'
	$formDuplicateVM.Text = 'Duplicate VM'
	$formDuplicateVM.add_Load($formDuplicateVM_Load)
	#
	# panel3
	#
	$panel3.Controls.Add($textboxDNS2Dup)
	$panel3.Controls.Add($labelSecondaryDNSDup)
	$panel3.Controls.Add($textboxDNS1Dup)
	$panel3.Controls.Add($labelDNS1Dup)
	$panel3.Controls.Add($checkboxStaticIPDup)
	$panel3.Controls.Add($textboxDefaultGatewayDup)
	$panel3.Controls.Add($labelDefaultGatewayDup)
	$panel3.Controls.Add($textboxSubnetMaskDup)
	$panel3.Controls.Add($labelSubnetMaskDup)
	$panel3.Controls.Add($textboxIPAddressDup)
	$panel3.Controls.Add($comboboxVSwitchDup)
	$panel3.Controls.Add($labelIPAddressDup)
	$panel3.Controls.Add($labelVirtualSwitchDup)
	$panel3.Controls.Add($labelNetworkingDup)
	$panel3.BorderStyle = 'Fixed3D'
	$panel3.Location = '18, 97'
	$panel3.Name = 'panel3'
	$panel3.Size = '230, 249'
	$panel3.TabIndex = 6
	#
	# textboxDNS2Dup
	#
	$textboxDNS2Dup.Enabled = $False
	$textboxDNS2Dup.Location = '124, 206'
	$textboxDNS2Dup.Name = 'textboxDNS2Dup'
	$textboxDNS2Dup.Size = '92, 20'
	$textboxDNS2Dup.TabIndex = 26
	#
	# labelSecondaryDNSDup
	#
	$labelSecondaryDNSDup.AutoSize = $True
	$labelSecondaryDNSDup.Location = '10, 206'
	$labelSecondaryDNSDup.Name = 'labelSecondaryDNSDup'
	$labelSecondaryDNSDup.Size = '88, 17'
	$labelSecondaryDNSDup.TabIndex = 27
	$labelSecondaryDNSDup.Text = 'Secondary DNS:'
	$labelSecondaryDNSDup.UseCompatibleTextRendering = $True
	#
	# textboxDNS1Dup
	#
	$textboxDNS1Dup.Enabled = $False
	$textboxDNS1Dup.Location = '124, 174'
	$textboxDNS1Dup.Name = 'textboxDNS1Dup'
	$textboxDNS1Dup.Size = '92, 20'
	$textboxDNS1Dup.TabIndex = 23
	#
	# labelDNS1Dup
	#
	$labelDNS1Dup.AutoSize = $True
	$labelDNS1Dup.Location = '10, 174'
	$labelDNS1Dup.Name = 'labelDNS1Dup'
	$labelDNS1Dup.Size = '73, 17'
	$labelDNS1Dup.TabIndex = 25
	$labelDNS1Dup.Text = 'Primary DNS:'
	$labelDNS1Dup.UseCompatibleTextRendering = $True
	#
	# checkboxStaticIPDup
	#
	$checkboxStaticIPDup.Location = '10, 52'
	$checkboxStaticIPDup.Name = 'checkboxStaticIPDup'
	$checkboxStaticIPDup.Size = '137, 24'
	$checkboxStaticIPDup.TabIndex = 19
	$checkboxStaticIPDup.Text = 'Use Static IP Settings'
	$checkboxStaticIPDup.UseCompatibleTextRendering = $True
	$checkboxStaticIPDup.UseVisualStyleBackColor = $True
	$checkboxStaticIPDup.add_CheckedChanged($checkboxStaticIPDup_CheckedChanged)
	#
	# textboxDefaultGatewayDup
	#
	$textboxDefaultGatewayDup.Enabled = $False
	$textboxDefaultGatewayDup.Location = '124, 145'
	$textboxDefaultGatewayDup.Name = 'textboxDefaultGatewayDup'
	$textboxDefaultGatewayDup.Size = '92, 20'
	$textboxDefaultGatewayDup.TabIndex = 22
	#
	# labelDefaultGatewayDup
	#
	$labelDefaultGatewayDup.AutoSize = $True
	$labelDefaultGatewayDup.Location = '10, 145'
	$labelDefaultGatewayDup.Name = 'labelDefaultGatewayDup'
	$labelDefaultGatewayDup.Size = '91, 17'
	$labelDefaultGatewayDup.TabIndex = 22
	$labelDefaultGatewayDup.Text = 'Default Gateway:'
	$labelDefaultGatewayDup.UseCompatibleTextRendering = $True
	#
	# textboxSubnetMaskDup
	#
	$textboxSubnetMaskDup.Enabled = $False
	$textboxSubnetMaskDup.Location = '124, 115'
	$textboxSubnetMaskDup.Name = 'textboxSubnetMaskDup'
	$textboxSubnetMaskDup.Size = '92, 20'
	$textboxSubnetMaskDup.TabIndex = 21
	#
	# labelSubnetMaskDup
	#
	$labelSubnetMaskDup.AutoSize = $True
	$labelSubnetMaskDup.Location = '10, 115'
	$labelSubnetMaskDup.Name = 'labelSubnetMaskDup'
	$labelSubnetMaskDup.Size = '73, 17'
	$labelSubnetMaskDup.TabIndex = 20
	$labelSubnetMaskDup.Text = 'Subnet Mask:'
	$labelSubnetMaskDup.UseCompatibleTextRendering = $True
	#
	# textboxIPAddressDup
	#
	$textboxIPAddressDup.Enabled = $False
	$textboxIPAddressDup.Location = '124, 83'
	$textboxIPAddressDup.Name = 'textboxIPAddressDup'
	$textboxIPAddressDup.Size = '92, 20'
	$textboxIPAddressDup.TabIndex = 20
	#
	# comboboxVSwitchDup
	#
	$comboboxVSwitchDup.DropDownStyle = 'DropDownList'
	$comboboxVSwitchDup.Enabled = $False
	$comboboxVSwitchDup.FormattingEnabled = $True
	$comboboxVSwitchDup.Location = '92, 29'
	$comboboxVSwitchDup.Name = 'comboboxVSwitchDup'
	$comboboxVSwitchDup.Size = '121, 21'
	$comboboxVSwitchDup.TabIndex = 18
	#
	# labelIPAddressDup
	#
	$labelIPAddressDup.AutoSize = $True
	$labelIPAddressDup.Location = '10, 86'
	$labelIPAddressDup.Name = 'labelIPAddressDup'
	$labelIPAddressDup.Size = '63, 17'
	$labelIPAddressDup.TabIndex = 0
	$labelIPAddressDup.Text = 'IP Address:'
	$labelIPAddressDup.UseCompatibleTextRendering = $True
	#
	# labelVirtualSwitchDup
	#
	$labelVirtualSwitchDup.AutoSize = $True
	$labelVirtualSwitchDup.Location = '10, 31'
	$labelVirtualSwitchDup.Name = 'labelVirtualSwitchDup'
	$labelVirtualSwitchDup.Size = '76, 17'
	$labelVirtualSwitchDup.TabIndex = 0
	$labelVirtualSwitchDup.Text = 'Virtual Switch:'
	$labelVirtualSwitchDup.UseCompatibleTextRendering = $True
	#
	# labelNetworkingDup
	#
	$labelNetworkingDup.AutoSize = $True
	$labelNetworkingDup.Font = 'Microsoft Sans Serif, 8.25pt, style=Bold'
	$labelNetworkingDup.Location = '3, 10'
	$labelNetworkingDup.Name = 'labelNetworkingDup'
	$labelNetworkingDup.Size = '137, 17'
	$labelNetworkingDup.TabIndex = 0
	$labelNetworkingDup.Text = 'Networking Configuration'
	$labelNetworkingDup.UseCompatibleTextRendering = $True
	#
	# textboxVMNameDup
	#
	$textboxVMNameDup.Location = '101, 59'
	$textboxVMNameDup.Name = 'textboxVMNameDup'
	$textboxVMNameDup.Size = '147, 20'
	$textboxVMNameDup.TabIndex = 2
	#
	# labelNewVMName
	#
	$labelNewVMName.AutoSize = $True
	$labelNewVMName.Location = '12, 62'
	$labelNewVMName.Name = 'labelNewVMName'
	$labelNewVMName.Size = '83, 17'
	$labelNewVMName.TabIndex = 1
	$labelNewVMName.Text = 'New VM Name:'
	$labelNewVMName.UseCompatibleTextRendering = $True
	#
	# buttonOK
	#
	$buttonOK.Anchor = 'Bottom, Right'
	$buttonOK.DialogResult = 'OK'
	$buttonOK.Location = '174, 370'
	$buttonOK.Name = 'buttonOK'
	$buttonOK.Size = '75, 23'
	$buttonOK.TabIndex = 0
	$buttonOK.Text = '&OK'
	$buttonOK.UseCompatibleTextRendering = $True
	$buttonOK.UseVisualStyleBackColor = $True
	$buttonOK.add_Click($buttonOK_Click)
	$panel3.ResumeLayout()
	$formDuplicateVM.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formDuplicateVM.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formDuplicateVM.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formDuplicateVM.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formDuplicateVM.ShowDialog()

} #End Function

#Call the form
Show-DuplicateVM_psf | Out-Null
