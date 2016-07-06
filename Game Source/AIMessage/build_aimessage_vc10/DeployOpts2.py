# coding=utf-8

###### Options ######

options={}

options["<config>"]=ur'Default'
options["<os>"]=ur'android'
options["appdata"]=ur'C:/Users/Stephen/AppData/Roaming/MarmaladeTools'
options["build"]=ur'ARM GCC Release'
options["cmdline"]=['C:/Marmalade/6.2/s3e/makefile_builder/mkb.py', 'c:/Users/Stephen/Documents/AIMessage/AIMessage.mkb', '--default-buildenv=vc10', '--msvc-project', '--deploy-only']
options["configlist"]=ur'Default ,'
options["deploymode"]=ur'Package'
options["device"]=ur'"{"localdir}/Deploy.py" device "{"tempdir}/DeployOpts.py" {hasmkb}'
options["dir"]=ur'c:/Users/Stephen/Documents/AIMessage/build_aimessage_vc10'
options["folder"]=ur'"{"localdir}/Deploy.py" folder "{"tempdir}/DeployOpts.py" {hasmkb}'
options["hasmkb"]=ur'nomkb'
options["helpfile"]=ur'../docs/Deployment.chm'
options["helppage"]=ur'0'
options["lastdir"]=ur'c:/Users/Stephen/Documents/AIMessage/build_aimessage_vc10'
options["mkb"]=ur'c:/Users/Stephen/Documents/AIMessage/AIMessage.mkb'
options["mkbdir"]=ur'c:/Users/Stephen/Documents/AIMessage'
options["mkbfile"]=ur'AIMessage.mkb'
options["outdir"]=ur'c:/Users/Stephen/Documents/AIMessage/build_aimessage_vc10'
options["resdir"]=ur'c:/marmalade/6.2/tools/DeployTool/'
options["s3edir"]=ur'c:/marmalade/6.2/s3e/'
options["stage"]=ur'build'
options["target"]=ur'AIMessage'
options["task"]=ur'Default'
options["tasktype"]=ur'Package'

###### Tasks ######

tasks=[]

### Task Default:android ###

t={}
tasks.append(t)
t["tasktype"]="Package"
t["<config>"]="Default"
t["os"]="android"
t["endDir"]="c:/Users/Stephen/Documents/AIMessage/build_aimessage_vc10/deployments/default/android/release/arm"
