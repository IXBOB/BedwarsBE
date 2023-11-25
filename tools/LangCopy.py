import os

def copyfile(f1, f2):
    content = f1.read()
    f2.write(content)

FOLDER_PATH = "resource_packs\\Bedwarsbeh\\texts"

for folderpath, subfolders, filenames in os.walk(FOLDER_PATH):
    for filename in filenames:
        if filename != 'en_US.lang':
            source_file_path = os.path.join(FOLDER_PATH, 'en_US.lang')
            with open(source_file_path, mode='r', encoding='utf-8') as file1:
                destination_file_path = os.path.join(folderpath, filename)
                if os.path.basename(filename).lower() != 'zh_cn.lang':
                    if os.path.basename(filename).lower() != 'zh_tw.lang':
                        with open(destination_file_path, mode='w', encoding='utf-8') as file2:
                            print(file2.name)
                            copyfile(file1, file2)
for folderpath, subfolders, filenames in os.walk(FOLDER_PATH):
    for filename in filenames:
        if filename != 'zh_CN.lang':
            source_file_path = os.path.join(FOLDER_PATH, 'zh_CN.lang')
            with open(source_file_path, mode='r', encoding='utf-8') as file1:
                destination_file_path = os.path.join(folderpath, filename)
                if os.path.basename(filename).lower() == 'zh_tw.lang':
                    with open(destination_file_path, mode='w', encoding='utf-8') as file2:
                        print(file2.name)
                        copyfile(file1, file2)