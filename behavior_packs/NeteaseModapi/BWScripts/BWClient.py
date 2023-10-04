# -*- coding: utf-8 -*-
import __future__
import mod.client.extraClientApi as clientApi
comp = clientApi.GetEngineCompFactory()

class BWClient(clientApi.GetClientSystemCls()):
    def __init__(self, namespace, name):
        super(BWClient, self).__init__(namespace, name)
        print('======ModApi CLIENT init======')
        
        self.ListenEvent()

    def ListenEvent(self):
        self.ListenApiEvent = lambda eventName, callbackFunc: self.ListenForEvent(clientApi.GetEngineNamespace(), clientApi.GetEngineSystemName(), eventName, self, callbackFunc)
        self.ListenApiEvent('OnKeyPressInGame', self.ClientOnKeyPressInGame)
        self.ListenForEvent(clientApi.GetEngineNamespace(),clientApi.GetEngineSystemName(),"UiInitFinished",self,self.MenuUI)

    def UnListenEvent(self):
        self.UnListenAllEvents()
        self.UnListenForEvent(clientApi.GetEngineNamespace(),clientApi.GetEngineSystemName(),"UiInitFinished",self,self.MenuUI)
        
    def Destroy(self):
        self.UnListenEvent()
        print('======ModApi CLIENT destroy======')
        
        
        
    def ClientOnKeyPressInGame(self, args):
        self.NotifyToServer('ClientOnKeyPressInGame', args)
        
    def MenuUI(self):
        clientApi.RegisterUI("BWSripts", "MenuUI", "BWScripts.uiScript.MenuUIScreenNode", "MenuUI.screen")
        self.HCUI = clientApi.CreateUI("BWScripts", "MenuUI", {"isHud": 1})
        if self.HCUI:
            self.HCUI.init()