# @halostatue/fish-machine-config/functions/__machine_config.fish

function __machine_config --description 'Source or create a machine local configuration file by type (platform, host, and user).'
    for type in $argv
        set -l dir $type"s"
        set -l file

        switch $type
            case platform
                set file (string lower (uname -s))
            case host
                set file (string lower (string replace -r '\.(local|home)' '' (hostname)))
            case user
                set file (string lower (whoami))
        end

        set file $__fish_config_dir/$dir/$file.fish

        if test -f $file
            source $file
        else
            mkdir -p $__fish_config_dir/$dir
            touch $file
        end
    end
end
