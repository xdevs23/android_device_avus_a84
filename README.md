# Avus A84 device tree

MT6592-based device (4.4.2)

# Build

* features

  * wifi
  * gsm (call in / call out / hangout)
  * egl
  * sound

* init

        $ repo init -u https://github.com/halogenOS/android_manifest.git -b XOS-7.0
        
        $ repo sync build/
        
        $ source build/envsetup.sh
        
        $ reposync
        
        $ source build/envsetup.sh
        
        $ # Optionally:
        
        $ lunchauto XOS_a84 # do this when building without the 'build' command

* full build

        $ build full XOS_a84-userdebug

* system binaries

        $ make framework
        $ make strace

* build one java module

        $ mmm packages/apps/Nfc/ || (cd packages/apps/Nfc/ && mm)

# MTK

Few words about mtk related binaries, services and migration peculiarities.

# Limitations

Services requires root:

`system/core/rootdir/init.rd`

  * surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

  * mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')
