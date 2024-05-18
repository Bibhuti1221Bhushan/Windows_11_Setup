// DEFAULT SETTINGS OF NILESOFT-SHELL
settings
{
	priority=1
	exclude.where = !process.is_explorer
	showdelay = 200
	modify.remove.duplicate=1
	tip.enabled=true
}

// NECESSARY IMPORTS
import 'imports/theme.nss'
import 'imports/images.nss'
import 'imports/modify.nss'

// ADD PIN - UNPIN TO CONTEXT MENU ENTRY
menu(mode="multiple" title="Pin - UnPin" image=icon.pin)
{
}

// ADD OTHER OPTIONS TO CONTEXT MENU ENTRY
menu(mode="multiple" title="Other Options" image=\uE142)
{
}

// USER IMPORTS
import 'imports/terminal.nss'
import 'imports/file-manage.nss'
import 'imports/taskbar.nss'
import 'imports/develop.nss'



// Desktop