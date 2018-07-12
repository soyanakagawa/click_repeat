## About
This script is for Manage Fillter which Twitter follower and folloing management tool.
To click automatic to "Saved Action".
So comment in code for it.

## How to use

Edit setting in click.scpt
```
-------一回のAPI制限までで何回クリックするか
set theLimitTime to 1500 as number
-------何回ループするか
set loopTime to 13 as number
-------ループの間隔
set interval to 1200 as number
```

Mac System Setting > Accessibility > Mouse and Trackpad > Enable Mouse key

```
cd /path/to/project_root
osascript click.scpt
```

## Caution

Don't Forget uncheck "Enable Mouse Key" after the script end.

Otherwise you will not able to Re-Login to your PC. And You must reboot as Safe Mode.
