# -*- coding: utf-8 -*-
from mod.common.mod import Mod
import mod.client.extraClientApi as clientApi
import mod.server.extraServerApi as serverApi


@Mod.Binding(name='VanillaTest', version="1.0")
class VanillaTestMod(object):
    def __init__(self):
        pass

    @Mod.InitServer()
    def initMod(self):
        serverApi.RegisterSystem('VanillaTest', 'VTServer', 'VTScripts.VTServer.VTServer')

    @Mod.InitClient()
    def init(self):
        clientApi.RegisterSystem('VanillaTest', 'VTClient', 'VTScripts.VTClient.VTClient')
