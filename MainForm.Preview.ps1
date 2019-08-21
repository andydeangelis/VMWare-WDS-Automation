#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-MainForm_psf {

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
	$formVMAutomationTool = New-Object 'System.Windows.Forms.Form'
	$buttonCancel = New-Object 'System.Windows.Forms.Button'
	$buttonBack = New-Object 'System.Windows.Forms.Button'
	$buttonFinish = New-Object 'System.Windows.Forms.Button'
	$tabcontrolWizard = New-Object 'System.Windows.Forms.TabControl'
	$tabpageStep1 = New-Object 'System.Windows.Forms.TabPage'
	$pictureboxLoading = New-Object 'System.Windows.Forms.PictureBox'
	$labelStep1 = New-Object 'System.Windows.Forms.Label'
	$panel1 = New-Object 'System.Windows.Forms.Panel'
	$labelConnectionStatusNotC = New-Object 'System.Windows.Forms.Label'
	$labelUsernameNotConnected = New-Object 'System.Windows.Forms.Label'
	$labelVCenterServerNotConn = New-Object 'System.Windows.Forms.Label'
	$labelSetVSphereCredential = New-Object 'System.Windows.Forms.Label'
	$buttonEnterCredentials = New-Object 'System.Windows.Forms.Button'
	$vcenterTextbox = New-Object 'System.Windows.Forms.TextBox'
	$labelVCenterFQDNOrIPAddre = New-Object 'System.Windows.Forms.Label'
	$tabpageStep2 = New-Object 'System.Windows.Forms.TabPage'
	$labelStep2Network = New-Object 'System.Windows.Forms.Label'
	$labelStep2Memory = New-Object 'System.Windows.Forms.Label'
	$labelStep2CPU = New-Object 'System.Windows.Forms.Label'
	$labelStep2VMName = New-Object 'System.Windows.Forms.Label'
	$listviewVMsStep2 = New-Object 'System.Windows.Forms.ListView'
	$buttonDeleteVMFromQueue = New-Object 'System.Windows.Forms.Button'
	$buttonAddVirtualMachine = New-Object 'System.Windows.Forms.Button'
	$labelStep2 = New-Object 'System.Windows.Forms.Label'
	$tabpageStep3 = New-Object 'System.Windows.Forms.TabPage'
	$treeviewVMListStep3 = New-Object 'System.Windows.Forms.TreeView'
	$panel6 = New-Object 'System.Windows.Forms.Panel'
	$labelVMStep3 = New-Object 'System.Windows.Forms.Label'
	$buttonVNICAdd = New-Object 'System.Windows.Forms.Button'
	$labelVNICConfig = New-Object 'System.Windows.Forms.Label'
	$buttonVDiskAdd = New-Object 'System.Windows.Forms.Button'
	$labelVDiskConfig = New-Object 'System.Windows.Forms.Label'
	$labelOptionalConfig = New-Object 'System.Windows.Forms.Label'
	$tabpageStep4 = New-Object 'System.Windows.Forms.TabPage'
	$treeviewVMListStep4 = New-Object 'System.Windows.Forms.TreeView'
	$panel7 = New-Object 'System.Windows.Forms.Panel'
	$labelOK1 = New-Object 'System.Windows.Forms.Label'
	$buttonSetHostname = New-Object 'System.Windows.Forms.Button'
	$labelVMNameStep4 = New-Object 'System.Windows.Forms.Label'
	$labelOSConfig = New-Object 'System.Windows.Forms.Label'
	$comboboxTimezone = New-Object 'System.Windows.Forms.ComboBox'
	$labelTimezone = New-Object 'System.Windows.Forms.Label'
	$buttonOpenFeatureSelection = New-Object 'System.Windows.Forms.Button'
	$labelSelectRoles = New-Object 'System.Windows.Forms.Label'
	$labelSelectFeatures = New-Object 'System.Windows.Forms.Label'
	$buttonOpenRolesSelection = New-Object 'System.Windows.Forms.Button'
	$tabpageStep5 = New-Object 'System.Windows.Forms.TabPage'
	$labelAddLocalUsers = New-Object 'System.Windows.Forms.Label'
	$buttonAddLocalUsers = New-Object 'System.Windows.Forms.Button'
	$labelDomainWorkgroupRequi = New-Object 'System.Windows.Forms.Label'
	$labelOK3 = New-Object 'System.Windows.Forms.Label'
	$labelOK2 = New-Object 'System.Windows.Forms.Label'
	$buttonSet = New-Object 'System.Windows.Forms.Button'
	$labelAdministratorPasswor = New-Object 'System.Windows.Forms.Label'
	$button2 = New-Object 'System.Windows.Forms.Button'
	$tabpageStep6 = New-Object 'System.Windows.Forms.TabPage'
	$webbrowserVMBuildSummary = New-Object 'System.Windows.Forms.WebBrowser'
	$buttonCustomizeOS = New-Object 'System.Windows.Forms.Button'
	$buttonBuildVMs = New-Object 'System.Windows.Forms.Button'
	$buttonNext = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formVMAutomationTool.SuspendLayout()
	$tabcontrolWizard.SuspendLayout()
	$tabpageStep1.SuspendLayout()
	$panel1.SuspendLayout()
	$tabpageStep2.SuspendLayout()
	$tabpageStep3.SuspendLayout()
	$panel6.SuspendLayout()
	$tabpageStep4.SuspendLayout()
	$panel7.SuspendLayout()
	$tabpageStep5.SuspendLayout()
	$tabpageStep6.SuspendLayout()
	#
	# formVMAutomationTool
	#
	$formVMAutomationTool.Controls.Add($buttonCancel)
	$formVMAutomationTool.Controls.Add($buttonBack)
	$formVMAutomationTool.Controls.Add($buttonFinish)
	$formVMAutomationTool.Controls.Add($tabcontrolWizard)
	$formVMAutomationTool.Controls.Add($buttonNext)
	$formVMAutomationTool.AcceptButton = $buttonFinish
	$formVMAutomationTool.AutoScaleDimensions = '6, 13'
	$formVMAutomationTool.AutoScaleMode = 'Font'
	$formVMAutomationTool.CancelButton = $buttonCancel
	$formVMAutomationTool.ClientSize = '537, 329'
	$formVMAutomationTool.FormBorderStyle = 'FixedDialog'
	$formVMAutomationTool.Margin = '6, 6, 6, 6'
	$formVMAutomationTool.MaximizeBox = $False
	$formVMAutomationTool.Name = 'formVMAutomationTool'
	$formVMAutomationTool.StartPosition = 'CenterScreen'
	$formVMAutomationTool.Text = 'VM Automation Tool'
	$formVMAutomationTool.add_Load($formVMAutomationTool_Load)
	#
	# buttonCancel
	#
	$buttonCancel.Anchor = 'Bottom, Right'
	$buttonCancel.DialogResult = 'Cancel'
	$buttonCancel.Location = '369, 294'
	$buttonCancel.Name = 'buttonCancel'
	$buttonCancel.Size = '75, 23'
	$buttonCancel.TabIndex = 4
	$buttonCancel.Text = '&Cancel'
	$buttonCancel.UseCompatibleTextRendering = $True
	$buttonCancel.UseVisualStyleBackColor = $True
	#
	# buttonBack
	#
	$buttonBack.Anchor = 'Bottom, Left'
	$buttonBack.Location = '13, 294'
	$buttonBack.Name = 'buttonBack'
	$buttonBack.Size = '75, 23'
	$buttonBack.TabIndex = 1
	$buttonBack.Text = '< &Back'
	$buttonBack.UseCompatibleTextRendering = $True
	$buttonBack.UseVisualStyleBackColor = $True
	#
	# buttonFinish
	#
	$buttonFinish.Anchor = 'Bottom, Right'
	$buttonFinish.DialogResult = 'OK'
	$buttonFinish.Location = '450, 294'
	$buttonFinish.Name = 'buttonFinish'
	$buttonFinish.Size = '75, 23'
	$buttonFinish.TabIndex = 3
	$buttonFinish.Text = '&Finish'
	$buttonFinish.UseCompatibleTextRendering = $True
	$buttonFinish.UseVisualStyleBackColor = $True
	#
	# tabcontrolWizard
	#
	$tabcontrolWizard.Controls.Add($tabpageStep1)
	$tabcontrolWizard.Controls.Add($tabpageStep2)
	$tabcontrolWizard.Controls.Add($tabpageStep3)
	$tabcontrolWizard.Controls.Add($tabpageStep4)
	$tabcontrolWizard.Controls.Add($tabpageStep5)
	$tabcontrolWizard.Controls.Add($tabpageStep6)
	$tabcontrolWizard.AccessibleRole = 'Clock'
	$tabcontrolWizard.Anchor = 'Top, Bottom, Left, Right'
	$tabcontrolWizard.Location = '13, 12'
	$tabcontrolWizard.Name = 'tabcontrolWizard'
	$tabcontrolWizard.SelectedIndex = 0
	$tabcontrolWizard.Size = '512, 276'
	$tabcontrolWizard.TabIndex = 0
	$tabcontrolWizard.add_Selecting($tabcontrolWizard_Selecting)
	$tabcontrolWizard.add_Deselecting($tabcontrolWizard_Deselecting)
	#
	# tabpageStep1
	#
	$tabpageStep1.Controls.Add($pictureboxLoading)
	$tabpageStep1.Controls.Add($labelStep1)
	$tabpageStep1.Controls.Add($panel1)
	$tabpageStep1.Controls.Add($vcenterTextbox)
	$tabpageStep1.Controls.Add($labelVCenterFQDNOrIPAddre)
	$tabpageStep1.Location = '4, 22'
	$tabpageStep1.Name = 'tabpageStep1'
	$tabpageStep1.Padding = '3, 3, 3, 3'
	$tabpageStep1.Size = '504, 250'
	$tabpageStep1.TabIndex = 0
	$tabpageStep1.Text = 'Step 1 - vCenter Connection'
	$tabpageStep1.UseVisualStyleBackColor = $True
	#
	# pictureboxLoading
	#
	$pictureboxLoading.Anchor = 'Bottom, Right'
	#region Binary Data
	$pictureboxLoading.Image = [System.Convert]::FromBase64String('
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
Cwg1RAAAOwAAAAAAAAAAAA==')
	#endregion
	$pictureboxLoading.Location = '441, 206'
	$pictureboxLoading.Name = 'pictureboxLoading'
	$pictureboxLoading.Size = '68, 68'
	$pictureboxLoading.TabIndex = 4
	$pictureboxLoading.TabStop = $False
	$pictureboxLoading.Visible = $False
	#
	# labelStep1
	#
	$labelStep1.AutoSize = $True
	$labelStep1.Font = 'Microsoft Sans Serif, 12pt, style=Bold'
	$labelStep1.Location = '9, 12'
	$labelStep1.Name = 'labelStep1'
	$labelStep1.Size = '470, 24'
	$labelStep1.TabIndex = 3
	$labelStep1.Text = 'Step 1: Enter your vCenter server and credentials to proceed.'
	$labelStep1.UseCompatibleTextRendering = $True
	#
	# panel1
	#
	$panel1.Controls.Add($labelConnectionStatusNotC)
	$panel1.Controls.Add($labelUsernameNotConnected)
	$panel1.Controls.Add($labelVCenterServerNotConn)
	$panel1.Controls.Add($labelSetVSphereCredential)
	$panel1.Controls.Add($buttonEnterCredentials)
	$panel1.Location = '9, 85'
	$panel1.Name = 'panel1'
	$panel1.Size = '276, 159'
	$panel1.TabIndex = 2
	#
	# labelConnectionStatusNotC
	#
	$labelConnectionStatusNotC.AutoSize = $True
	$labelConnectionStatusNotC.Location = '13, 99'
	$labelConnectionStatusNotC.Name = 'labelConnectionStatusNotC'
	$labelConnectionStatusNotC.Size = '178, 17'
	$labelConnectionStatusNotC.TabIndex = 4
	$labelConnectionStatusNotC.Text = 'Connection Status: Not Connected'
	$labelConnectionStatusNotC.UseCompatibleTextRendering = $True
	#
	# labelUsernameNotConnected
	#
	$labelUsernameNotConnected.AutoSize = $True
	$labelUsernameNotConnected.Location = '13, 62'
	$labelUsernameNotConnected.Name = 'labelUsernameNotConnected'
	$labelUsernameNotConnected.Size = '138, 17'
	$labelUsernameNotConnected.TabIndex = 3
	$labelUsernameNotConnected.Text = 'Username: Not Connected'
	$labelUsernameNotConnected.UseCompatibleTextRendering = $True
	#
	# labelVCenterServerNotConn
	#
	$labelVCenterServerNotConn.AutoSize = $True
	$labelVCenterServerNotConn.Location = '13, 30'
	$labelVCenterServerNotConn.Name = 'labelVCenterServerNotConn'
	$labelVCenterServerNotConn.Size = '162, 17'
	$labelVCenterServerNotConn.TabIndex = 2
	$labelVCenterServerNotConn.Text = 'vCenter Server: Not Connected'
	$labelVCenterServerNotConn.UseCompatibleTextRendering = $True
	#
	# labelSetVSphereCredential
	#
	$labelSetVSphereCredential.AutoSize = $True
	$labelSetVSphereCredential.Dock = 'Fill'
	$labelSetVSphereCredential.Location = '0, 0'
	$labelSetVSphereCredential.Name = 'labelSetVSphereCredential'
	$labelSetVSphereCredential.Size = '127, 17'
	$labelSetVSphereCredential.TabIndex = 1
	$labelSetVSphereCredential.Text = 'Set vSphere Credentials'
	$labelSetVSphereCredential.UseCompatibleTextRendering = $True
	#
	# buttonEnterCredentials
	#
	$buttonEnterCredentials.Enabled = $False
	$buttonEnterCredentials.Location = '13, 130'
	$buttonEnterCredentials.Name = 'buttonEnterCredentials'
	$buttonEnterCredentials.Size = '114, 23'
	$buttonEnterCredentials.TabIndex = 0
	$buttonEnterCredentials.Text = 'Enter Credentials'
	$buttonEnterCredentials.UseCompatibleTextRendering = $True
	$buttonEnterCredentials.UseVisualStyleBackColor = $True
	$buttonEnterCredentials.add_Click($buttonEnterCredentials_Click)
	#
	# vcenterTextbox
	#
	$vcenterTextbox.Location = '169, 52'
	$vcenterTextbox.Name = 'vcenterTextbox'
	$vcenterTextbox.Size = '161, 20'
	$vcenterTextbox.TabIndex = 1
	$vcenterTextbox.add_TextChanged($vcenterTextbox_TextChanged)
	#
	# labelVCenterFQDNOrIPAddre
	#
	$labelVCenterFQDNOrIPAddre.AutoSize = $True
	$labelVCenterFQDNOrIPAddre.Location = '9, 55'
	$labelVCenterFQDNOrIPAddre.Name = 'labelVCenterFQDNOrIPAddre'
	$labelVCenterFQDNOrIPAddre.Size = '153, 17'
	$labelVCenterFQDNOrIPAddre.TabIndex = 0
	$labelVCenterFQDNOrIPAddre.Text = 'vCenter FQDN or IP Address:'
	$labelVCenterFQDNOrIPAddre.UseCompatibleTextRendering = $True
	#
	# tabpageStep2
	#
	$tabpageStep2.Controls.Add($labelStep2Network)
	$tabpageStep2.Controls.Add($labelStep2Memory)
	$tabpageStep2.Controls.Add($labelStep2CPU)
	$tabpageStep2.Controls.Add($labelStep2VMName)
	$tabpageStep2.Controls.Add($listviewVMsStep2)
	$tabpageStep2.Controls.Add($buttonDeleteVMFromQueue)
	$tabpageStep2.Controls.Add($buttonAddVirtualMachine)
	$tabpageStep2.Controls.Add($labelStep2)
	$tabpageStep2.Location = '4, 22'
	$tabpageStep2.Name = 'tabpageStep2'
	$tabpageStep2.Padding = '3, 3, 3, 3'
	$tabpageStep2.Size = '504, 250'
	$tabpageStep2.TabIndex = 1
	$tabpageStep2.Text = 'Step 2 - Congifure VMs'
	$tabpageStep2.UseVisualStyleBackColor = $True
	#
	# labelStep2Network
	#
	$labelStep2Network.AutoSize = $True
	$labelStep2Network.Location = '320, 118'
	$labelStep2Network.Name = 'labelStep2Network'
	$labelStep2Network.Size = '49, 17'
	$labelStep2Network.TabIndex = 15
	$labelStep2Network.Text = 'Network:'
	$labelStep2Network.UseCompatibleTextRendering = $True
	#
	# labelStep2Memory
	#
	$labelStep2Memory.AutoSize = $True
	$labelStep2Memory.Location = '320, 97'
	$labelStep2Memory.Name = 'labelStep2Memory'
	$labelStep2Memory.Size = '48, 17'
	$labelStep2Memory.TabIndex = 14
	$labelStep2Memory.Text = 'Memory:'
	$labelStep2Memory.UseCompatibleTextRendering = $True
	#
	# labelStep2CPU
	#
	$labelStep2CPU.AutoSize = $True
	$labelStep2CPU.Location = '320, 76'
	$labelStep2CPU.Name = 'labelStep2CPU'
	$labelStep2CPU.Size = '64, 17'
	$labelStep2CPU.TabIndex = 13
	$labelStep2CPU.Text = 'CPU Count:'
	$labelStep2CPU.UseCompatibleTextRendering = $True
	#
	# labelStep2VMName
	#
	$labelStep2VMName.AutoSize = $True
	$labelStep2VMName.Location = '320, 55'
	$labelStep2VMName.Name = 'labelStep2VMName'
	$labelStep2VMName.Size = '58, 17'
	$labelStep2VMName.TabIndex = 12
	$labelStep2VMName.Text = 'VM Name:'
	$labelStep2VMName.UseCompatibleTextRendering = $True
	#
	# listviewVMsStep2
	#
	$listviewVMsStep2.FullRowSelect = $True
	$listviewVMsStep2.Location = '156, 40'
	$listviewVMsStep2.MultiSelect = $False
	$listviewVMsStep2.Name = 'listviewVMsStep2'
	$listviewVMsStep2.Size = '145, 210'
	$listviewVMsStep2.TabIndex = 11
	$listviewVMsStep2.UseCompatibleStateImageBehavior = $False
	$listviewVMsStep2.View = 'List'
	$listviewVMsStep2.add_SelectedIndexChanged($listviewVMsStep2_SelectedIndexChanged)
	#
	# buttonDeleteVMFromQueue
	#
	$buttonDeleteVMFromQueue.Enabled = $False
	$buttonDeleteVMFromQueue.Location = '18, 122'
	$buttonDeleteVMFromQueue.Name = 'buttonDeleteVMFromQueue'
	$buttonDeleteVMFromQueue.Size = '123, 23'
	$buttonDeleteVMFromQueue.TabIndex = 10
	$buttonDeleteVMFromQueue.Text = 'Delete VM from Queue'
	$buttonDeleteVMFromQueue.UseCompatibleTextRendering = $True
	$buttonDeleteVMFromQueue.UseVisualStyleBackColor = $True
	$buttonDeleteVMFromQueue.add_Click($buttonDeleteVMFromQueue_Click)
	#
	# buttonAddVirtualMachine
	#
	$buttonAddVirtualMachine.Location = '18, 78'
	$buttonAddVirtualMachine.Name = 'buttonAddVirtualMachine'
	$buttonAddVirtualMachine.Size = '123, 23'
	$buttonAddVirtualMachine.TabIndex = 8
	$buttonAddVirtualMachine.Text = 'Add Virtual Machine'
	$buttonAddVirtualMachine.UseCompatibleTextRendering = $True
	$buttonAddVirtualMachine.UseVisualStyleBackColor = $True
	$buttonAddVirtualMachine.add_Click($buttonAddVirtualMachine_Click)
	#
	# labelStep2
	#
	$labelStep2.AutoSize = $True
	$labelStep2.Font = 'Microsoft Sans Serif, 12pt, style=Bold'
	$labelStep2.Location = '18, 13'
	$labelStep2.Name = 'labelStep2'
	$labelStep2.Size = '358, 24'
	$labelStep2.TabIndex = 4
	$labelStep2.Text = 'Step 2: Press the ''Add Virtual Machine'' button.'
	$labelStep2.UseCompatibleTextRendering = $True
	#
	# tabpageStep3
	#
	$tabpageStep3.Controls.Add($treeviewVMListStep3)
	$tabpageStep3.Controls.Add($panel6)
	$tabpageStep3.Location = '4, 22'
	$tabpageStep3.Name = 'tabpageStep3'
	$tabpageStep3.Size = '504, 250'
	$tabpageStep3.TabIndex = 4
	$tabpageStep3.Text = 'Step 3 - Optional VM Config'
	$tabpageStep3.UseVisualStyleBackColor = $True
	#
	# treeviewVMListStep3
	#
	$treeviewVMListStep3.Location = '3, 0'
	$treeviewVMListStep3.Name = 'treeviewVMListStep3'
	$treeviewVMListStep3.Size = '164, 247'
	$treeviewVMListStep3.TabIndex = 26
	$treeviewVMListStep3.add_AfterSelect($treeviewVMListStep3_AfterSelect)
	#
	# panel6
	#
	$panel6.Controls.Add($labelVMStep3)
	$panel6.Controls.Add($buttonVNICAdd)
	$panel6.Controls.Add($labelVNICConfig)
	$panel6.Controls.Add($buttonVDiskAdd)
	$panel6.Controls.Add($labelVDiskConfig)
	$panel6.Controls.Add($labelOptionalConfig)
	$panel6.BorderStyle = 'Fixed3D'
	$panel6.Location = '187, 3'
	$panel6.Name = 'panel6'
	$panel6.Size = '314, 244'
	$panel6.TabIndex = 25
	#
	# labelVMStep3
	#
	$labelVMStep3.AutoSize = $True
	$labelVMStep3.Font = 'Microsoft Sans Serif, 10pt, style=Bold'
	$labelVMStep3.Location = '10, 2'
	$labelVMStep3.Name = 'labelVMStep3'
	$labelVMStep3.Size = '30, 20'
	$labelVMStep3.TabIndex = 35
	$labelVMStep3.Text = 'VM:'
	$labelVMStep3.UseCompatibleTextRendering = $True
	#
	# buttonVNICAdd
	#
	$buttonVNICAdd.Location = '188, 102'
	$buttonVNICAdd.Name = 'buttonVNICAdd'
	$buttonVNICAdd.Size = '121, 23'
	$buttonVNICAdd.TabIndex = 4
	$buttonVNICAdd.Text = 'Network &Adapters'
	$buttonVNICAdd.UseCompatibleTextRendering = $True
	$buttonVNICAdd.UseVisualStyleBackColor = $True
	$buttonVNICAdd.add_Click($buttonVNICAdd_Click)
	#
	# labelVNICConfig
	#
	$labelVNICConfig.AutoSize = $True
	$labelVNICConfig.Location = '10, 108'
	$labelVNICConfig.Name = 'labelVNICConfig'
	$labelVNICConfig.Size = '166, 17'
	$labelVNICConfig.TabIndex = 3
	$labelVNICConfig.Text = 'Add/Remove Network Adapters:'
	$labelVNICConfig.UseCompatibleTextRendering = $True
	#
	# buttonVDiskAdd
	#
	$buttonVDiskAdd.Location = '188, 69'
	$buttonVDiskAdd.Name = 'buttonVDiskAdd'
	$buttonVDiskAdd.Size = '121, 23'
	$buttonVDiskAdd.TabIndex = 2
	$buttonVDiskAdd.Text = '&Virtual Disks'
	$buttonVDiskAdd.UseCompatibleTextRendering = $True
	$buttonVDiskAdd.UseVisualStyleBackColor = $True
	$buttonVDiskAdd.add_Click($buttonVDiskAdd_Click)
	#
	# labelVDiskConfig
	#
	$labelVDiskConfig.AutoSize = $True
	$labelVDiskConfig.Location = '10, 74'
	$labelVDiskConfig.Name = 'labelVDiskConfig'
	$labelVDiskConfig.Size = '133, 17'
	$labelVDiskConfig.TabIndex = 1
	$labelVDiskConfig.Text = 'Add/Remove Virtual Disk:'
	$labelVDiskConfig.UseCompatibleTextRendering = $True
	#
	# labelOptionalConfig
	#
	$labelOptionalConfig.AutoSize = $True
	$labelOptionalConfig.Font = 'Microsoft Sans Serif, 8.25pt, style=Bold'
	$labelOptionalConfig.Location = '10, 40'
	$labelOptionalConfig.Name = 'labelOptionalConfig'
	$labelOptionalConfig.Size = '142, 17'
	$labelOptionalConfig.TabIndex = 0
	$labelOptionalConfig.Text = 'Optional VM Configuration'
	$labelOptionalConfig.UseCompatibleTextRendering = $True
	#
	# tabpageStep4
	#
	$tabpageStep4.Controls.Add($treeviewVMListStep4)
	$tabpageStep4.Controls.Add($panel7)
	$tabpageStep4.Location = '4, 22'
	$tabpageStep4.Name = 'tabpageStep4'
	$tabpageStep4.Size = '504, 250'
	$tabpageStep4.TabIndex = 2
	$tabpageStep4.Text = 'Step 4 - Customize OS'
	$tabpageStep4.UseVisualStyleBackColor = $True
	#
	# treeviewVMListStep4
	#
	$treeviewVMListStep4.Location = '0, 0'
	$treeviewVMListStep4.Name = 'treeviewVMListStep4'
	$treeviewVMListStep4.Size = '164, 250'
	$treeviewVMListStep4.TabIndex = 27
	$treeviewVMListStep4.add_AfterSelect($treeviewVMListStep4_AfterSelect)
	#
	# panel7
	#
	$panel7.Controls.Add($labelOK1)
	$panel7.Controls.Add($buttonSetHostname)
	$panel7.Controls.Add($labelVMNameStep4)
	$panel7.Controls.Add($labelOSConfig)
	$panel7.Controls.Add($comboboxTimezone)
	$panel7.Controls.Add($labelTimezone)
	$panel7.Controls.Add($buttonOpenFeatureSelection)
	$panel7.Controls.Add($labelSelectRoles)
	$panel7.Controls.Add($labelSelectFeatures)
	$panel7.Controls.Add($buttonOpenRolesSelection)
	$panel7.BorderStyle = 'Fixed3D'
	$panel7.Location = '185, 0'
	$panel7.Name = 'panel7'
	$panel7.Size = '319, 250'
	$panel7.TabIndex = 0
	#
	# labelOK1
	#
	$labelOK1.AutoSize = $True
	$labelOK1.Font = 'Comic Sans MS, 10.125pt, style=Bold'
	$labelOK1.ForeColor = 'Green'
	$labelOK1.Location = '118, 71'
	$labelOK1.Name = 'labelOK1'
	$labelOK1.Size = '28, 24'
	$labelOK1.TabIndex = 37
	$labelOK1.Text = 'OK!'
	$labelOK1.UseCompatibleTextRendering = $True
	$labelOK1.Visible = $False
	#
	# buttonSetHostname
	#
	$buttonSetHostname.Location = '16, 70'
	$buttonSetHostname.Name = 'buttonSetHostname'
	$buttonSetHostname.Size = '87, 23'
	$buttonSetHostname.TabIndex = 35
	$buttonSetHostname.Text = 'Set Hostname'
	$buttonSetHostname.UseCompatibleTextRendering = $True
	$buttonSetHostname.UseVisualStyleBackColor = $True
	$buttonSetHostname.add_Click($buttonSetHostname_Click)
	#
	# labelVMNameStep4
	#
	$labelVMNameStep4.AutoSize = $True
	$labelVMNameStep4.Font = 'Microsoft Sans Serif, 10pt, style=Bold'
	$labelVMNameStep4.Location = '12, 4'
	$labelVMNameStep4.Name = 'labelVMNameStep4'
	$labelVMNameStep4.Size = '30, 20'
	$labelVMNameStep4.TabIndex = 34
	$labelVMNameStep4.Text = 'VM:'
	$labelVMNameStep4.UseCompatibleTextRendering = $True
	#
	# labelOSConfig
	#
	$labelOSConfig.AutoSize = $True
	$labelOSConfig.Font = 'Microsoft Sans Serif, 8.25pt, style=Bold'
	$labelOSConfig.Location = '12, 34'
	$labelOSConfig.Name = 'labelOSConfig'
	$labelOSConfig.Size = '172, 17'
	$labelOSConfig.TabIndex = 33
	$labelOSConfig.Text = 'Operating System Configuration'
	$labelOSConfig.UseCompatibleTextRendering = $True
	#
	# comboboxTimezone
	#
	$comboboxTimezone.DropDownStyle = 'DropDownList'
	$comboboxTimezone.FormattingEnabled = $True
	$comboboxTimezone.Location = '83, 171'
	$comboboxTimezone.Name = 'comboboxTimezone'
	$comboboxTimezone.Size = '208, 21'
	$comboboxTimezone.TabIndex = 31
	#
	# labelTimezone
	#
	$labelTimezone.AutoSize = $True
	$labelTimezone.Location = '16, 176'
	$labelTimezone.Name = 'labelTimezone'
	$labelTimezone.Size = '61, 17'
	$labelTimezone.TabIndex = 30
	$labelTimezone.Text = 'Time Zone:'
	$labelTimezone.UseCompatibleTextRendering = $True
	#
	# buttonOpenFeatureSelection
	#
	$buttonOpenFeatureSelection.Enabled = $False
	$buttonOpenFeatureSelection.Location = '202, 122'
	$buttonOpenFeatureSelection.Name = 'buttonOpenFeatureSelection'
	$buttonOpenFeatureSelection.Size = '57, 23'
	$buttonOpenFeatureSelection.TabIndex = 24
	$buttonOpenFeatureSelection.Text = 'Open...'
	$buttonOpenFeatureSelection.UseCompatibleTextRendering = $True
	$buttonOpenFeatureSelection.UseVisualStyleBackColor = $True
	#
	# labelSelectRoles
	#
	$labelSelectRoles.AutoSize = $True
	$labelSelectRoles.Location = '144, 126'
	$labelSelectRoles.Name = 'labelSelectRoles'
	$labelSelectRoles.Size = '52, 17'
	$labelSelectRoles.TabIndex = 23
	$labelSelectRoles.Text = 'Features:'
	$labelSelectRoles.UseCompatibleTextRendering = $True
	#
	# labelSelectFeatures
	#
	$labelSelectFeatures.AutoSize = $True
	$labelSelectFeatures.Location = '16, 128'
	$labelSelectFeatures.Name = 'labelSelectFeatures'
	$labelSelectFeatures.Size = '36, 17'
	$labelSelectFeatures.TabIndex = 21
	$labelSelectFeatures.Text = 'Roles:'
	$labelSelectFeatures.UseCompatibleTextRendering = $True
	#
	# buttonOpenRolesSelection
	#
	$buttonOpenRolesSelection.Location = '62, 123'
	$buttonOpenRolesSelection.Name = 'buttonOpenRolesSelection'
	$buttonOpenRolesSelection.Size = '57, 23'
	$buttonOpenRolesSelection.TabIndex = 22
	$buttonOpenRolesSelection.Text = 'Open...'
	$buttonOpenRolesSelection.UseCompatibleTextRendering = $True
	$buttonOpenRolesSelection.UseVisualStyleBackColor = $True
	$buttonOpenRolesSelection.add_Click($buttonOpenRolesSelection_Click)
	#
	# tabpageStep5
	#
	$tabpageStep5.Controls.Add($labelAddLocalUsers)
	$tabpageStep5.Controls.Add($buttonAddLocalUsers)
	$tabpageStep5.Controls.Add($labelDomainWorkgroupRequi)
	$tabpageStep5.Controls.Add($labelOK3)
	$tabpageStep5.Controls.Add($labelOK2)
	$tabpageStep5.Controls.Add($buttonSet)
	$tabpageStep5.Controls.Add($labelAdministratorPasswor)
	$tabpageStep5.Controls.Add($button2)
	$tabpageStep5.Location = '4, 22'
	$tabpageStep5.Name = 'tabpageStep5'
	$tabpageStep5.Padding = '3, 3, 3, 3'
	$tabpageStep5.Size = '504, 250'
	$tabpageStep5.TabIndex = 5
	$tabpageStep5.Text = 'Step 5 - Global Settings'
	$tabpageStep5.UseVisualStyleBackColor = $True
	#
	# labelAddLocalUsers
	#
	$labelAddLocalUsers.AutoSize = $True
	$labelAddLocalUsers.Location = '95, 148'
	$labelAddLocalUsers.Name = 'labelAddLocalUsers'
	$labelAddLocalUsers.Size = '90, 17'
	$labelAddLocalUsers.TabIndex = 40
	$labelAddLocalUsers.Text = 'Add Local Users:'
	$labelAddLocalUsers.UseCompatibleTextRendering = $True
	#
	# buttonAddLocalUsers
	#
	$buttonAddLocalUsers.Location = '280, 148'
	$buttonAddLocalUsers.Name = 'buttonAddLocalUsers'
	$buttonAddLocalUsers.Size = '119, 23'
	$buttonAddLocalUsers.TabIndex = 39
	$buttonAddLocalUsers.Text = 'Add Local Users'
	$buttonAddLocalUsers.UseCompatibleTextRendering = $True
	$buttonAddLocalUsers.UseVisualStyleBackColor = $True
	$buttonAddLocalUsers.add_Click($buttonAddLocalUsers_Click)
	#
	# labelDomainWorkgroupRequi
	#
	$labelDomainWorkgroupRequi.AutoSize = $True
	$labelDomainWorkgroupRequi.Location = '95, 111'
	$labelDomainWorkgroupRequi.Name = 'labelDomainWorkgroupRequi'
	$labelDomainWorkgroupRequi.Size = '162, 17'
	$labelDomainWorkgroupRequi.TabIndex = 38
	$labelDomainWorkgroupRequi.Text = 'Domain/Workgroup (Required):'
	$labelDomainWorkgroupRequi.UseCompatibleTextRendering = $True
	#
	# labelOK3
	#
	$labelOK3.AutoSize = $True
	$labelOK3.Font = 'Comic Sans MS, 10.125pt, style=Bold'
	$labelOK3.ForeColor = 'Green'
	$labelOK3.Location = '361, 105'
	$labelOK3.Name = 'labelOK3'
	$labelOK3.Size = '28, 24'
	$labelOK3.TabIndex = 37
	$labelOK3.Text = 'OK!'
	$labelOK3.UseCompatibleTextRendering = $True
	$labelOK3.Visible = $False
	#
	# labelOK2
	#
	$labelOK2.AutoSize = $True
	$labelOK2.Font = 'Comic Sans MS, 10.125pt, style=Bold'
	$labelOK2.ForeColor = 'Green'
	$labelOK2.Location = '361, 69'
	$labelOK2.Name = 'labelOK2'
	$labelOK2.Size = '28, 24'
	$labelOK2.TabIndex = 36
	$labelOK2.Text = 'OK!'
	$labelOK2.UseCompatibleTextRendering = $True
	$labelOK2.Visible = $False
	#
	# buttonSet
	#
	$buttonSet.Location = '280, 69'
	$buttonSet.Name = 'buttonSet'
	$buttonSet.Size = '75, 23'
	$buttonSet.TabIndex = 35
	$buttonSet.Text = 'Set'
	$buttonSet.UseCompatibleTextRendering = $True
	$buttonSet.UseVisualStyleBackColor = $True
	$buttonSet.add_Click($buttonSet_Click)
	#
	# labelAdministratorPasswor
	#
	$labelAdministratorPasswor.AutoSize = $True
	$labelAdministratorPasswor.Location = '95, 76'
	$labelAdministratorPasswor.Name = 'labelAdministratorPasswor'
	$labelAdministratorPasswor.Size = '184, 17'
	$labelAdministratorPasswor.TabIndex = 34
	$labelAdministratorPasswor.Text = 'Administrator Password (Required):'
	$labelAdministratorPasswor.UseCompatibleTextRendering = $True
	#
	# button2
	#
	$button2.Location = '280, 106'
	$button2.Name = 'button2'
	$button2.Size = '75, 23'
	$button2.TabIndex = 33
	$button2.Text = 'Set'
	$button2.UseCompatibleTextRendering = $True
	$button2.UseVisualStyleBackColor = $True
	$button2.add_Click($button2_Click)
	#
	# tabpageStep6
	#
	$tabpageStep6.Controls.Add($webbrowserVMBuildSummary)
	$tabpageStep6.Controls.Add($buttonCustomizeOS)
	$tabpageStep6.Controls.Add($buttonBuildVMs)
	$tabpageStep6.Location = '4, 22'
	$tabpageStep6.Name = 'tabpageStep6'
	$tabpageStep6.Padding = '3, 3, 3, 3'
	$tabpageStep6.Size = '504, 250'
	$tabpageStep6.TabIndex = 3
	$tabpageStep6.Text = 'Step 6 - Execute'
	$tabpageStep6.UseVisualStyleBackColor = $True
	#
	# webbrowserVMBuildSummary
	#
	$webbrowserVMBuildSummary.Location = '0, 0'
	$webbrowserVMBuildSummary.MinimumSize = '20, 20'
	$webbrowserVMBuildSummary.Name = 'webbrowserVMBuildSummary'
	$webbrowserVMBuildSummary.Size = '399, 250'
	$webbrowserVMBuildSummary.TabIndex = 7
	#
	# buttonCustomizeOS
	#
	$buttonCustomizeOS.Location = '405, 150'
	$buttonCustomizeOS.Name = 'buttonCustomizeOS'
	$buttonCustomizeOS.Size = '75, 23'
	$buttonCustomizeOS.TabIndex = 6
	$buttonCustomizeOS.Text = 'Customize'
	$buttonCustomizeOS.UseCompatibleTextRendering = $True
	$buttonCustomizeOS.UseVisualStyleBackColor = $True
	$buttonCustomizeOS.add_Click($buttonCustomizeOS_Click)
	#
	# buttonBuildVMs
	#
	$buttonBuildVMs.Location = '405, 105'
	$buttonBuildVMs.Name = 'buttonBuildVMs'
	$buttonBuildVMs.Size = '75, 23'
	$buttonBuildVMs.TabIndex = 5
	$buttonBuildVMs.Text = 'Build VMs'
	$buttonBuildVMs.UseCompatibleTextRendering = $True
	$buttonBuildVMs.UseVisualStyleBackColor = $True
	$buttonBuildVMs.add_Click($buttonBuildVMs_Click)
	#
	# buttonNext
	#
	$buttonNext.Anchor = 'Bottom, Right'
	$buttonNext.Enabled = $False
	$buttonNext.Location = '288, 294'
	$buttonNext.Name = 'buttonNext'
	$buttonNext.Size = '75, 23'
	$buttonNext.TabIndex = 2
	$buttonNext.Text = '&Next >'
	$buttonNext.UseCompatibleTextRendering = $True
	$buttonNext.UseVisualStyleBackColor = $True
	$buttonNext.add_Click($buttonNext_Click)
	$tabpageStep6.ResumeLayout()
	$tabpageStep5.ResumeLayout()
	$panel7.ResumeLayout()
	$tabpageStep4.ResumeLayout()
	$panel6.ResumeLayout()
	$tabpageStep3.ResumeLayout()
	$tabpageStep2.ResumeLayout()
	$panel1.ResumeLayout()
	$tabpageStep1.ResumeLayout()
	$tabcontrolWizard.ResumeLayout()
	$formVMAutomationTool.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formVMAutomationTool.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formVMAutomationTool.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formVMAutomationTool.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formVMAutomationTool.ShowDialog()

} #End Function

#Call the form
Show-MainForm_psf | Out-Null
