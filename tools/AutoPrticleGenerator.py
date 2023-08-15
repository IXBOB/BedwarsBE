from tkinter import *
import os

PATH = "C:\\Users\\tqy\\Desktop"

def mkdir(path):

    folder = os.path.exists(path)

    if not folder: #判断是否存在文件夹如果不存在则创建为文件夹
        os.makedirs(path) #makedirs 创建文件时如果路径不存在会创建这个路径
        print("New folder created")

    else:
        print("folder already exists")



window = Tk()
window.title("Auto Particle mcfunction Generator for BedwarsBE")
window.minsize(width=500,height=500)

label_page_number = Label(text="所在的页面编号： ")
label_page_name = Label(text="所在的页面名称")
label_name = Label(text="粒子名称： ")
label_id = Label(text="粒子编号： ")
label_slot = Label(text="装备栏编号： ")
label_price = Label(text="粒子价格： ")
label_page_number.grid(row=0, column=0, sticky='nw')
label_page_name.grid(row=1, column=0, sticky='nw')
label_name.grid(row=2, column=0, sticky='nw')
label_id.grid(row=3, column=0, sticky='nw')
label_slot.grid(row=4, column=0, sticky='nw')
label_price.grid(row=5, column=0, sticky='nw')

entry_page_number = Entry(width=50)
entry_page_name = Entry(width=50)
entry_name = Entry(width=50)
entry_id = Entry(width=50)
entry_slot = Entry(width=50)
entry_price = Entry(width=50)
entry_page_number.grid(row=0,column=1)
entry_page_name.grid(row=1,column=1)
entry_name.grid(row=2,column=1)
entry_id.grid(row=3,column=1)
entry_slot.grid(row=4,column=1)
entry_price.grid(row=5,column=1)

def action():
    #获取输入值
    page_number = entry_page_number.get()
    page_name = entry_page_name.get()
    page_number = entry_page_number.get()
    page_name = entry_page_name.get()
    name = entry_name.get()
    id = entry_id.get()
    slot = entry_slot.get()
    price = entry_price.get()

    #创建文件夹
    file = f"{PATH}\\inventory_menu\\menu{page_number}-{page_name}"
    mkdir(file)
    file = f"{PATH}\\inventory_menu\\menu_page"
    mkdir(file)

    #创建文件
    with open(f"{PATH}\\inventory_menu\\menu_page\\menu_page{page_number}.mcfunction", mode="w") as file:
        content = f'''replaceitem entity @s slot.inventory {slot} keep bedwars:menu_pleasewait 1 0 {{\"minecraft:item_lock\":{{\"mode\":\"lock_in_slot\"}}}}
execute @s[hasitem={{location=slot.inventory,slot={slot},item=bedwars:menu_pleasewait}}] ~ ~ ~ function inventory_menu/menu{page_number}-select_particle/particle_{name}'''
        file.write(content)
    with open(f"{PATH}\\inventory_menu\\menu{page_number}-select_particle\\particle_{name}.mcfunction", mode="w") as file:
        content = f'''scoreboard players set @s select_particle {id}
function inventory_menu/refresh_menu/refresh_menu{page_number}'''
        file.write(content)



button = Button(text="生成",width=10,command=action)
button.grid(row=6,column=0)

window.mainloop()


