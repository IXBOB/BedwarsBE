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
window.title("Auto Block Json Generator for BedwarsBE")
window.minsize(width=500,height=500)

label_input = Label(text="输入方块ID（不要带命名空间，已默认Bedwars:）: ")
label_input.grid(row=0, column=0, sticky='nw')

entry_input = Entry(width=50)
entry_input.grid(row=0,column=1)

def action():
    #获取输入值
    input = entry_input.get()
    str1 = "map_"
    str2 = "_block"
    input = str1 + input
    input = input + str2

    #创建文件夹
    file = f"{PATH}\\blockbeh"
    mkdir(file)
    file = f"{PATH}\\blockbeh\\textures"
    mkdir(file)
    file = f"{PATH}\\blockbeh\\blocks"
    mkdir(file)
    file = f"{PATH}\\blockbeh\\blocks\\map"
    mkdir(file)

    #创建文件
    with open(f"{PATH}\\blockbeh\\blocks.json", mode="a") as file:
        content = f'''	\"bedwars:{input}\": {{
		\"textures\": {{
			\"up\": \"{input}_up\",
			\"down\": \"{input}_down\",
			\"north\": \"{input}_north\",
			\"south\": \"{input}_south\",
			\"west\": \"{input}_west\",
			\"east\": \"{input}_east\"
        }},
		\"sound\": \"wood\"
	}},\n'''
        file.write(content)

    with open(f"{PATH}\\blockbeh\\textures\\terrain_texture.json", mode="a") as file:
        content = f'''		\"{input}_up\": {{
			\"textures\": \"textures/blocks/{input}\"
		}},
		\"{input}_down\": {{
			\"textures\": \"textures/blocks/{input}\"
		}},
		\"{input}_north\": {{
			\"textures\": \"textures/blocks/{input}\"
		}},
		\"{input}_east\": {{
			\"textures\": \"textures/blocks/{input}\"
		}},
		\"{input}_south\": {{
			\"textures\": \"textures/blocks/{input}\"
		}},
		\"{input}_west\": {{												//WEST
			\"textures\": \"textures/blocks/{input}\"
		}},\n'''
        file.write(content)
        
    with open(f"{PATH}\\blockbeh\\blocks\\map\\{input}.json", mode="a") as file:
        content = f'''{{
	\"format_version\": \"1.16.100\",
	\"minecraft:block\": {{
		\"description\": {{
			\"identifier\": \"bedwars:{input}\"
		}},

		\"components\": {{
			\"minecraft:destroy_time\": 99999
		}}
	}}
}}'''
        file.write(content)

button = Button(text="生成",command=action)
button.grid(row=1,column=0)

window.mainloop()