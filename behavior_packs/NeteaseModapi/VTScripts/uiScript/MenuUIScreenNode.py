# -*- coding: utf-8 -*-
import mod.client.extraClientApi as clientApi
ViewBinder = clientApi.GetViewBinderCls()
ViewRequest = clientApi.GetViewViewRequestCls()
ScreenNode = clientApi.GetScreenNodeCls()


class MenuUIScreenNode(ScreenNode):
	def __init__(self, namespace, name, param):
		ScreenNode.__init__(self, namespace, name, param)
		self.button = None
		self.where_button = "/click_panel/click_button"

	def Create(self):
		"""
		@description UI创建成功时调用
		"""
		self.button = self.GetBaseUIControl(self.where_button).asButton() 
		self.button.AddTouchEventParams({'isSwallow': True}) 
		self.button.SetButtonTouchDownCallback(self.button)
		
	def Destroy(self):
		"""
		@description UI销毁时调用
		"""
		pass

	def OnActive(self):
		"""
		@description UI重新回到栈顶时调用
		"""
		pass

	def OnDeactive(self):
		"""
		@description 栈顶UI有其他UI入栈时调用
		"""
		pass


	def button(self): #按下按钮时
		print("Hello World")
     

