import sys  
import os
import plistlib
try:
    import xml.etree.cElementTree as ET
except ImportError:
    import xml.etree.ElementTree as ET
# from biplist import *

projfile=os.getcwd()+"/Common.xcodeproj/project.pbxproj"
plistfile=os.getcwd()+"/Common/Info.plist"

#modify plist file with key
def modifyValueWithKey(key, value):
    desplist=plistlib.readPlist(plistfile)
    desplist[key]=value
    plistlib.writePlist(desplist, plistfile)
    return;
#modify project file fron old to new value
def modifyValueFromValue(old, new):
    fp=open(projfile, "r+")
    lines=fp.readlines()
    fp.seek(0)
    fp.truncate()
    for line in lines:
        line = line.replace(old, new)
        fp.write(line)
    fp.close()
    return;

directory=sys.path[0]
sourcename=sys.argv[1]

if os.path.splitext(sourcename)[-1] == ".plist":
    source=plistlib.readPlist(directory+"/"+sourcename)
elif os.path.splitext(sourcename)[-1] == ".xml":
    print("read xml file")
    tree = ET.ElementTree(file=directory+"/"+sourcename)
    root=tree.getroot()
    source=[]
    for child in root:
        source.append(child.attrib)


for dic in source:
    if dic.has_key('id'):
        modifyValueWithKey(dic['id'],dic['value'])
    else:
        modifyValueFromValue(dic['from'], dic['to'])


