// MANAGE FILE OPTIONS
menu(where=sel.count>0 type='file|dir|drive|namespace|back' mode="multiple" title='Manage File' image=\uE253)
{
	// ADD COPY PATH AS TO CONTEXT MENU ENTRY
	menu(separator="after" title="Copy Path as" image=icon.copy_path)
	{
		item(where=sel.count > 1 title='Copy (@sel.count) items selected' cmd=command.copy(sel(false, "\n")))
		item(mode="single" sep=both title=@sel.path tip=sel.path cmd=command.copy(sel.path))
		item(mode="single" sep=both where=@sel.parent.len>3 title=sel.parent cmd=@command.copy(sel.parent))
		item(mode="single" sep=both type='file|dir|back.dir' title=sel.file.name cmd=command.copy(sel.file.name))
		item(mode="single" sep=both type='file' where=sel.file.len != sel.file.title.len title=@sel.file.title cmd=command.copy(sel.file.title))
	}

	// ADD ATTRIBUTES TO CONTEXT MENU ENTRY
	menu(separator="after" type='file|dir|back.dir' mode="single" title='Attributes' image=\uE0E3)
	{
		$atrr = io.attributes(sel.path)
		item(title='Hidden' checked=io.attribute.hidden(atrr)
			cmd args='/c ATTRIB @if(io.attribute.hidden(atrr),"-","+")H "@sel.path"' window=hidden)
		
		item(title='System' checked=io.attribute.system(atrr)
			cmd args='/c ATTRIB @if(io.attribute.system(atrr),"-","+")S "@sel.path"' window=hidden)
			
		item(title='Read-Only' checked=io.attribute.readonly(atrr)
			cmd args='/c ATTRIB @if(io.attribute.readonly(atrr),"-","+")R "@sel.path"' window=hidden)
			
		item(title='Archive' checked=io.attribute.archive(atrr)
			cmd args='/c ATTRIB @if(io.attribute.archive(atrr),"-","+")A "@sel.path"' window=hidden)
	}	

	// ADD SELECTION TO CONTEXT MENU ENTRY
	menu(separator="after" image=\uE290 title=title.select)
	{
		item(title="All" image=icon.select_all cmd=command.select_all)
		item(title="Invert" image=icon.invert_selection cmd=command.invert_selection)
		item(title="None" image=icon.select_none cmd=command.select_none)
	}
	
	// ADD TAKE OWNERSHIP TO CONTEXT MENU ENTRY
	item(type='file|dir|back.dir|drive' title='Take Permissions' image=[\uE194,#f00] admin
		cmd args='/K takeown /f "@sel.path" @if(sel.type==1,null,"/r /d y") && icacls "@sel.path" /grant *S-1-5-32-544:F @if(sel.type==1,"/c /l","/t /c /l /q")')
}



// EDIT