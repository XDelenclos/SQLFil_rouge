exec sp_addumpdevice 'disk','savPap','C:\Backup\Papyrus.bak'backup database papyrus to savPaprestore database papyrus from savPap with replacesp_configure 'show advanced option',1
go

reconfigure
go

sp_configure 'Agent XPs',1
go

reconfigure
go