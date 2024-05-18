// TASKBAR OPTIONS
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	// ADD NILESOFT-SHELL SETTING TO CONTEXT MENU ENTRY
	menu(title="NS Shell" image=\uE1C8)
	{
		item(title="Config" image=\uE10A cmd='"@app.cfg"')
		item(title="Manager" image=\uE0F3 admin cmd='"@app.exe"')
		item(title="Directory" image=\uE0E8 cmd='"@app.dir"')
	}

	// ADD TASKBAR OPTIONS TO CONTEXT MENU ENTRY
	item(title=title.desktop sep=top image=icon.desktop cmd=command.toggle_desktop)
	item(title=title.settings sep=bottom image=icon.settings(auto, image.color1) cmd='ms-settings:')
	item(title=title.control_panel image=\uE0F3 cmd='shell:::{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}')
	item(title=title.task_manager image=icon.task_manager cmd='taskmgr.exe')
	item(title="Taskbar Settings" sep=both image=inherit cmd='ms-settings:taskbar')
}