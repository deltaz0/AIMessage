# coding=utf-8

###### Options ######

options={}

options["<config>"]=ur'Default'
options["<os>"]=ur'win32-sim'
options["appdata"]=ur'C:/Users/Stephen/AppData/Roaming/MarmaladeTools'
options["build"]=ur'X86 Release'
options["cmdline"]=['C:/Marmalade/6.2/s3e/makefile_builder/mkb.py', 'c:/Users/Stephen/AIMessage_GoogleCode/April 3/team-game-4410/Game Source/AIMessage/AIMessage.mkb', '--default-buildenv=vc10', '--msvc-project', '--deploy-only']
options["configlist"]=ur'Default ,'
options["deploymode"]=ur'Package'
options["device"]=ur'"{"localdir}/Deploy.py" device "{"tempdir}/DeployOpts.py" {hasmkb}'
options["dir"]=ur'c:/Users/Stephen/AIMessage_GoogleCode/April 3/team-game-4410/Game Source/AIMessage/build_aimessage_vc10'
options["folder"]=ur'"{"localdir}/Deploy.py" folder "{"tempdir}/DeployOpts.py" {hasmkb}'
options["hasmkb"]=ur'nomkb'
options["helpfile"]=ur'../docs/Deployment.chm'
options["helppage"]=ur'0'
options["lastdir"]=ur'c:/Users/Stephen/AIMessage_GoogleCode/April 3/team-game-4410/Game Source/AIMessage/build_aimessage_vc10'
options["mkb"]=ur'c:/Users/Stephen/AIMessage_GoogleCode/April 3/team-game-4410/Game Source/AIMessage/AIMessage.mkb'
options["mkbdir"]=ur'c:/Users/Stephen/AIMessage_GoogleCode/April 3/team-game-4410/Game Source/AIMessage'
options["mkbfile"]=ur'AIMessage.mkb'
options["outdir"]=ur'c:/Users/Stephen/AIMessage_GoogleCode/April 3/team-game-4410/Game Source/AIMessage/build_aimessage_vc10'
options["resdir"]=ur'c:/marmalade/6.2/tools/DeployTool/'
options["s3edir"]=ur'c:/marmalade/6.2/s3e/'
options["stage"]=ur'build'
options["target"]=ur'AIMessage'
options["task"]=ur'Default'
options["tasktype"]=ur'Package'

###### Tasks ######

tasks=[]

### Task Default:win32-sim ###

t={}
tasks.append(t)
t["tasktype"]="Package"
t["<config>"]="Default"
t["os"]="win32-sim"
t["endDir"]="c:/Users/Stephen/AIMessage_GoogleCode/April 3/team-game-4410/Game Source/AIMessage/build_aimessage_vc10/deployments/default/win32-sim/release"

### Task Default:win32 ###

t={}
tasks.append(t)
t["tasktype"]="Package"
t["<config>"]="Default"
t["os"]="win32"
t["endDir"]="c:/Users/Stephen/AIMessage_GoogleCode/April 3/team-game-4410/Game Source/AIMessage/build_aimessage_vc10/deployments/default/win32/release"
