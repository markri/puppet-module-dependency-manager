node /.*\.(o|t|a|p|b)[2-9]{1}.nvsotap\.nl$/ {
    stage { 'repos':
        before => Stage["main"]
    }

    hiera_include('classes')
}
