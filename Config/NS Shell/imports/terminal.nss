// TEMINAL OPTIONS
menu(type='*' where=(sel.count or wnd.is_taskbar or wnd.is_edit) title=title.terminal sep=sep.top image=icon.run_with_powershell)
{
	// SHOW HELP TIPS 
	$Tip_Run_Admin=["Press SHIFT To Run " + this.title + " as Administrator", tip.warning, 1.0]
	$Has_Admin=key.shift() or key.rbutton()
	
	// ADD TERMINAL ENTRY TO CONTEXT MENU
	item(where=package.exists("WindowsTerminal") title=title.Windows_Terminal tip=Tip_Run_Admin admin=Has_Admin image='@package.path("WindowsTerminal")\WindowsTerminal.exe' cmd="wt.exe" arg=`-d "@sel.path\."`)
	item(title=title.command_prompt tip=Tip_Run_Admin admin=Has_Admin image cmd-prompt=`/K TITLE Command Prompt &ver& PUSHD "@sel.dir"`)
	item(title=title.windows_powershell admin=Has_Admin tip=Tip_Run_Admin image cmd-ps=`-noexit -command Set-Location -Path '@sel.dir'`)
}