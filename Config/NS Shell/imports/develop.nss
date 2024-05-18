// DEVELOP OPTIONS
menu(mode="multiple" title='&Develop' sep=sep.bottom image=\uE14A)
{
	// ADD OPEN WITH VSCODIUM TO CONTEXT MENU ENTRY
	item(title='VSCodium' image cmd='%LocalAppData%\Programs\VSCodium\VSCodium.exe' args='"@sel.path"')
	separator
	
	// ADD  BROWSE FOLDER TO CONTEXT MENU ENTRY
	menu(title='Folder' image=\uE1F4)
	{
		item(title='Desktop' image=inherit cmd=user.desktop)
		item(title='Documents' image=inherit cmd=user.documents)
		item(title='Downloads' image=inherit cmd=user.downloads)
		item(title='Pictures' image=inherit cmd=user.pictures)
		item(title='Musics' image=inherit cmd=user.music)
		item(title='Videos' image=inherit cmd=user.videos)
		separator
		item(title='Users' image=inherit cmd=sys.users)
		item(title='Windows' image=inherit cmd=sys.dir)
		item(title='Program Files' image=inherit cmd=sys.prog)
		item(title='Program Files x86' image=inherit cmd=sys.prog32)
		item(title='Program Data' image=inherit cmd=sys.programdata)
		item(title='Program Folder' image=inherit cmd='shell:appsfolder')
		separator
		item(title='Profile' image=inherit cmd=user.dir)
		item(title='Config' image=inherit cmd=user.appdata)
		item(title='Temp' image=inherit cmd=user.temp)
	}

	// ADD RUN TO CONTEXT MENU ENTRY
	item(title=title.run image=\uE122 cmd='shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}')
}