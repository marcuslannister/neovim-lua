-- Global options
local g = vim.g

--[[ g.bookmark_sign = '>>'
g.bookmark_annotation_sign = '##' ]]

g.bookmark_save_per_working_dir = 1
g.bookmark_auto_save = 1
g.bookmark_auto_close = 1

 -- Finds the Git/Root super-project directory.
--[[ function! g:BMWorkDirFileLocation()
    let filename = 'bookmarks'
    let location = ''
    if isdirectory('.root')
        " Current work dir is git's work tree
        let location = getcwd().'/.root'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.root', '.;')
    endif
    if len(location) > 0
        return location.'/'.filename
    else
        return getcwd().'/.'.filename
    endif
endfunction ]]
