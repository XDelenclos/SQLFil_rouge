exec sp_addumpdevice 'disk','savPap','C:\Backup\Papyrus.bak'
go

reconfigure
go

sp_configure 'Agent XPs',1
go

reconfigure
go