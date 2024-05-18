// REMOVE UNNECESSARY ENTRY FROM CONTEXT MENU
modify(mode=mode.multiple
	where=this.id(id.restore_previous_versions,id.include_in_library,id.cast_to_device,id.copy_as_path,id.customize_this_folder,id.open_autoplay)
	vis=vis.remove)

// ADD EMPTY RECYCLE BIN TO CONTEXT MENU ENTRY
modify(type="recyclebin" where=window.is_desktop and this.id==id.empty_recycle_bin pos=1 sep)

// ADD PIN OR UNPIN TO CONTEXT MENU ENTRY
modify(find="pin to quick access" title="Pin to Quick Access" pos="top" menu="Pin - UnPin")
modify(find="pin to taskbar" title="Pin to Taskbar" pos="top" menu="Pin - UnPin")
modify(find="pin to start" pos="top" menu="Pin - UnPin")
modify(find="unpin from quick access" title="UnPin From Quick Access" pos="bottom" menu="Pin - Unpin")
modify(find="unpin from quick access" title="UnPin From Quick Access" pos="bottom" menu="Pin - Unpin")
modify(find="unpin from taskbar" title="UnPin From Taskbar" pos="bottom" menu="Pin - UnPin")
modify(find="remove from quick access" title="Remove From Quick Access" pos="bottom" menu="Pin - UnPin")

// ADD TERMINAL OPTIONS TO CONTEXT MENU ENTRY
modify(where=str.equals(this.name, ["open in terminal", "open linux shell here"]) || this.id==id.open_powershell_window_here
	pos="bottom" menu="Terminal")

// ADD OTHER TO CONTEXT MENU ENTRY
modify(mode=mode.multiple where=this.id(id.send_to,id.share,id.format,id.eject,id.print,id.create_shortcut) pos=1 menu="Other Options")
modify(mode=mode.multiple where=this.id==id.set_as_desktop_background title="Set as Desktop Background"pos=1 menu="Other Options")
modify(mode=mode.multiple where=this.id==id.rotate_left title="Rotate Left"pos=1 menu="Other Options")
modify(mode=mode.multiple where=this.id==id.rotate_right title="Rotate Right"pos=1 menu="Other Options")
modify(mode=mode.multiple where=this.id==id.map_network_drive title="Map Network Drive"pos=1 menu="Other Options")
modify(mode=mode.multiple where=this.id==id.disconnect_network_drive title="Disconnect Network Drive"pos=1 menu="Other Options")
modify(mode=mode.multiple where=this.id==id.add_a_network_location title="Add a Network Location"pos=1 menu="Other Options")
modify(mode=mode.multiple where=this.id==id.give_access_to title="Give Access to"pos=1 menu="Other Options")
		
// MODIFY CONTEXT MENU ICON OR NAME 
modify(where=this.id==id.open image=\uE12E)
modify(find='open in new tab' title="Open in New Tab" image=\uE183)
modify(find='open in new window' title="Open in New Window" image=\uE067)
modify(where=this.id==id.expand image=\uE046)
modify(where=this.id==id.edit image=\uE281)
modify(find='copy' image=\uE1A6)

