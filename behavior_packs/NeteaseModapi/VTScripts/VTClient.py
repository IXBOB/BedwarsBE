# -*- coding: utf-8 -*-
import __future__
import mod.client.extraClientApi as clientApi
comp = clientApi.GetEngineCompFactory()

class VTClient(clientApi.GetClientSystemCls()):
    def __init__(self, namespace, name):
        super(VTClient, self).__init__(namespace, name)
        print('======ModApi CLIENT init======')
        
        self.ListenEvent()

    def ListenEvent(self):
        self.ListenApiEvent = lambda eventName, callbackFunc: self.ListenForEvent(clientApi.GetEngineNamespace(), clientApi.GetEngineSystemName(), eventName, self, callbackFunc)

        self.ListenApiEvent('OnKeyPressInGame', self.ClientOnKeyPressInGame)
        
    def UnListenEvent(self):
        self.UnListenAllEvents()
        
    def Destroy(self):
        self.UnListenEvent()
        print('======ModApi CLIENT destroy======')
        
        
        
    def ClientOnKeyPressInGame(self, args):
        self.NotifyToServer('ClientOnKeyPressInGame', args)