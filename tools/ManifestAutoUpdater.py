import uuid
import json
from tkinter import *

def action():
    global PATH 
    PATH = entry_path.get()
    run()


window = Tk()
window.title("manifest uuid and version updater for BedwarsBE")
window.minsize(width=600,height=600)

label_path = Label(text="文件夹路径")
label_beh_uuid = Label(text="更新后的行为包uuid: 等待运行")
label_res_uuid = Label(text="更新后的资源包uuid: 等待运行")
label_beh_ver = Label(text="更新后的行为包版本: 等待运行")
label_res_ver = Label(text="更新后的资源包版本: 等待运行")
label_path.grid(row=0,column=0,sticky="nw")
label_beh_uuid.grid(row=1,column=1,sticky="nw")
label_res_uuid.grid(row=2,column=1,sticky="nw")
label_beh_ver.grid(row=3,column=1,sticky="nw")
label_res_ver.grid(row=4,column=1,sticky="nw")

entry_path = Entry(width=50)
entry_path.insert(END, string="C:\\Users\\Administrator\\Desktop\\BedwarsBE-main")
entry_path.grid(row=0,column=1)

button = Button(text="运行",width=10,command=action)
button.grid(row=5,column=1)

def run():
    # BEHAVIOR PACK 
    with open(f"{PATH}\\behavior_packs\\Bedwarsbeh\\manifest.json",'r',encoding='utf-8') as load_f:
        load_dict = json.load(load_f)
    uuid_v_beh = str(uuid.uuid4())
    load_dict['header']['uuid']=uuid_v_beh
    uuid_v = str(uuid.uuid4())
    load_dict['modules'][0]['uuid']=uuid_v
    label_beh_uuid.configure(text=f"更新后的行为包uuid: {uuid_v_beh}")
    
    load_ver = int(load_dict['header']['version'][2])
    beh_ver = load_ver+1
    load_dict['header']['version'][2] = int("{:04d}".format(beh_ver))
    load_dict['modules'][0]['version'][2] = int("{:04d}".format(beh_ver))
    label_beh_ver.configure(text=f"更新后的行为包版本: {load_dict['modules'][0]['version'][0]}.{load_dict['modules'][0]['version'][1]}.{'{:04d}'.format(beh_ver)}")
    with open(f"{PATH}\\behavior_packs\\Bedwarsbeh\\manifest.json",'w',encoding='utf-8') as f:
        json.dump(load_dict, f,ensure_ascii=False)
    print(load_dict)

    # RESOURCE PACK
    with open(f"{PATH}\\resource_packs\\Bedwarsbeh\\manifest.json",'r',encoding='utf-8') as load_f:
        load_dict = json.load(load_f)
    uuid_v_res = str(uuid.uuid4())
    load_dict['header']['uuid']=uuid_v_res
    uuid_v = str(uuid.uuid4())
    load_dict['modules'][0]['uuid']=uuid_v
    label_res_uuid.configure(text=f"更新后的资源包uuid: {uuid_v_res}")
    
    load_ver = int(load_dict['header']['version'][2])
    res_ver = load_ver+1
    load_dict['header']['version'][2] = int("{:04d}".format(res_ver))
    load_dict['modules'][0]['version'][2] = int("{:04d}".format(res_ver))
    label_res_ver.configure(text=f"更新后的资源包版本: {load_dict['modules'][0]['version'][0]}.{load_dict['modules'][0]['version'][1]}.{'{:04d}'.format(res_ver)}")
    with open(f"{PATH}\\resource_packs\\Bedwarsbeh\\manifest.json",'w',encoding='utf-8') as f:
        json.dump(load_dict, f,ensure_ascii=False)
    print(load_dict)
    
    
    #WORLD BEHAVIOR PACKS.JSON
    with open(f"{PATH}\\world_behavior_packs.json",'r',encoding='utf-8') as load_f:
        load_dict = json.load(load_f)
    load_dict[0]['pack_id']=uuid_v_beh
    load_dict[0]['version'][2]=int("{:04d}".format(beh_ver))
    with open(f"{PATH}\\world_behavior_packs.json",'w',encoding='utf-8') as f:
        json.dump(load_dict, f,ensure_ascii=False)
    print(load_dict)
    
    #WORLD RESOURCE PACKS.JSON
    with open(f"{PATH}\\world_resource_packs.json",'r',encoding='utf-8') as load_f:
        load_dict = json.load(load_f)
    load_dict[0]['pack_id']=uuid_v_res
    load_dict[0]['version'][2]=int("{:04d}".format(res_ver))
    with open(f"{PATH}\\world_resource_packs.json",'w',encoding='utf-8') as f:
        json.dump(load_dict, f,ensure_ascii=False)
    print(load_dict)
        
window.mainloop()