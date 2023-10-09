# -*- coding: utf-8 -*-
from mod.common.mod import Mod
import mod.client.extraClientApi as clientApi
import mod.server.extraServerApi as serverApi


@Mod.Binding(name='bedwarsModapi', version="1.0")
class bedwarsModapiMod(object):
    def __init__(self):
        pass

    @Mod.InitServer()
    def initMod(self):
        serverApi.RegisterSystem('bedwarsModapi', 'BWServer', 'BWScripts.BWServer.BWServer')

    @Mod.InitClient()
    def init(self):
        clientApi.RegisterSystem('bedwarsModapi', 'BWClient', 'BWScripts.BWClient.BWClient')
