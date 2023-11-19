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
        #获取基本数据   
        screenName = args['screenName']
        self.key = args['key']
        self.isDown = args['isDown']
        
        #!--实现C键放大--!
        comp = clientApi.GetEngineCompFactory().CreateConfigClient(clientApi.GetLevelId())
        getStoredFov = comp.GetConfigData("StoredFovConfig", False).get("StoredFov","Empty")
        
        
        if self.key == '67' and self.isDown == '1' and screenName == 'hud_screen':
        #按下C键后更改Fov
            if getStoredFov == "Empty": 
            #如果从未获取过玩家的Fov值，则获取，用来存储按下C键前的Fov值
                comp = clientApi.GetEngineCompFactory().CreateCamera(-1)
                currentFov = comp.GetFov()
                comp = clientApi.GetEngineCompFactory().CreateConfigClient(clientApi.GetLevelId())
                data = {}
                data["StoredFov"] = currentFov
                comp.SetConfigData("StoredFovConfig", data, False)
            comp = clientApi.GetEngineCompFactory().CreateCamera(-1)
            comp.SetFov(25)
        if self.key == '67' and self.isDown == '0' or screenName != "hud_screen":
        #释放C键后读取按下C键前的Fov值并设置
            comp = clientApi.GetEngineCompFactory().CreateConfigClient(clientApi.GetLevelId())
            fovBefore = comp.GetConfigData("StoredFovConfig", False).get("StoredFov","Empty")
            comp = clientApi.GetEngineCompFactory().CreateCamera(-1)
            comp.SetFov(fovBefore)

        
    def MenuUI(self):
        clientApi.RegisterUI("BWSripts", "MenuUI", "BWScripts.uiScript.MenuUIScreenNode", "MenuUI.screen")
        self.HCUI = clientApi.CreateUI("BWScripts", "MenuUI", {"isHud": 1})
        if self.HCUI:
            self.HCUI.init()