# -*- coding: utf-8 -*-
import __future__
from math import floor
import mod.server.extraServerApi as serverApi
import mod.client.extraClientApi as clientApi
from sys import platform
comp = serverApi.GetEngineCompFactory()

class BWServer(serverApi.GetServerSystemCls()):
    def __init__(self, namespace, name):
        super(BWServer, self).__init__(namespace, name)
        print('======ModApi SERVER init======')
        self.ListenApiEvent = lambda eventName, callbackFunc: self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), eventName, self, callbackFunc)
        
        self.ListenEvent()

    def ListenEvent(self):
        self.ListenApiEvent = lambda eventName, callbackFunc: self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), eventName, self, callbackFunc)
        self.ListenClientEvent = lambda eventName, callbackFunc: self.ListenForEvent('bedwarsModapi', 'BWClient', eventName, self, callbackFunc)

        self.ListenClientEvent('ClientOnKeyPressInGame', self.OnKeyPressInGame)
        
    def UnListenEvent(self):
        self.UnListenAllEvents()
        
    def Destroy(self):
        self.UnListenEvent()
        print('======ModApi SERVER destroy======')
        
        
        
        

    # def OnKeyPressInGame(self, args):


    
