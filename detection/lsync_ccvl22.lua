settings {
    logfile           = "/tmp/lsyncd/style_aug.log",
    statusFile        = "/tmp/lsyncd/style_aug.status",
    -- statusInterval = 5,
    inotifyMode       = "Modify",
    maxProcesses      = 1,
    nodaemon       = true,
    -- maxDelays      = 5,
}

sync {
    default.rsyncssh,
    source            = "/home/jmei/workspace/machine_learning/classify/yuhui_bnconv/mmdetection_yuhui",
    host              = "ccvl22",
    targetdir         = "/home/jrmei/workspace/machine_learning/detection/yuhui_bnconv",
    delay             = 0,
    exclude           = {'__pycache__', 'exp', '*.log', '*.tar', '*.lua', 'pretrained', '.git'},
    -- init           = false,
    delete            = "true",
    rsync             = {
        binary        = "/usr/bin/rsync",
        archive       = true,
        compress      = true,
        verbose       = true,
        bwlimit       = 2000,
        },
    ssh               = {
        identityFile  = "~/.ssh/id_rsa",
        options       = {
            User      = 'jrmei'},
        port          = 22
        }
    }
