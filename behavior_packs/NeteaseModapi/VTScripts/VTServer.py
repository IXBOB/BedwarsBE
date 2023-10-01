# -*- coding: utf-8 -*-
import __future__
from math import floor
import mod.server.extraServerApi as serverApi
import mod.client.extraClientApi as clientApi
from sys import platform
comp = serverApi.GetEngineCompFactory()

class VTServer(serverApi.GetServerSystemCls()):
    def __init__(self, namespace, name):
        super(VTServer, self).__init__(namespace, name)
        print('======ModApi SERVER init======')
        self.ListenApiEvent = lambda eventName, callbackFunc: self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), eventName, self, callbackFunc)
        
        self.ListenEvent()

    def ListenEvent(self):
        self.ListenApiEvent = lambda eventName, callbackFunc: self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), eventName, self, callbackFunc)
        self.ListenClientEvent = lambda eventName, callbackFunc: self.ListenForEvent('VanillaTest', 'VTClient', eventName, self, callbackFunc)

        self.ListenClientEvent('ClientOnKeyPressInGame', self.OnKeyPressInGame)
        
    def UnListenEvent(self):
        self.UnListenAllEvents()
        
    def Destroy(self):
        self.UnListenEvent()
        print('======ModApi SERVER destroy======')
        
        
        
        

    def OnKeyPressInGame(self, args):
        #获取基本数据
        id = args['__id__']
        screenName = args['screenName']
        self.key = args['key']
        self.isDown = args['isDown']
        
        #!--实现C键放大--!
        comp = serverApi.GetEngineCompFactory().CreateExtraData(id)
        getStoredFov = comp.GetExtraData("fovBefore")
        

        
        
        if self.key == '67' and self.isDown == '1' and screenName == 'hud_screen':
        #按下C键后更改Fov
            if getStoredFov is None: 
            #如果从未获取过玩家的Fov值，则获取，用来存储按下C键前的Fov值
                comp = clientApi.GetEngineCompFactory().CreateCamera(-1)
                currentFov = comp.GetFov()
                entitycomp = serverApi.GetEngineCompFactory().CreateExtraData(id)
                entitycomp.SetExtraData("fovBefore",currentFov)
            comp = clientApi.GetEngineCompFactory().CreateCamera(-1)
            comp.SetFov(25)
        if self.key == '67' and self.isDown == '0' and screenName == 'hud_screen':
        #释放C键后读取按下C键前的Fov值并设置
            comp = serverApi.GetEngineCompFactory().CreateExtraData(id)
            fovBefore = comp.GetExtraData("fovBefore")
            comp = clientApi.GetEngineCompFactory().CreateCamera(-1)
            comp.SetFov(fovBefore)
            entitycomp = serverApi.GetEngineCompFactory().CreateExtraData(id)
            entitycomp.CleanExtraData("fovBefore")


    
