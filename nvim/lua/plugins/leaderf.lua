-----------------------------------------------------------
-- LeaderF configuration file
----------------------------------------------------------

-- Plugin: LeaderF
-- url: https://github.com/Yggdroot/LeaderF

-- Global options
local g = vim.g

g.Lf_StlSeparator = { left = {''}, right = {''}, font = {''} }

g.Lf_UseVersionControlTool = 0
g.Lf_WildIgnore = {
                    dir = {'.project', '.root','.svn','.git','.hg','.repo'},
                    file= {'*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co','*.a','*~','*.2*[a-z]' }
                  }

g.Lf_RootMarkers = {'.root','.repo'}
g.Lf_WorkingDirectoryMode = 'ac'
g.Lf_WindowHeight = 0.40
g.Lf_ShowRelativePath = 0
g.Lf_HideHelp = 1
-- g.Lf_StlColorscheme = 'onehalflight'
g.Lf_StlColorscheme = 'github'
g.Lf_PreviewResult = { Function = 0, BufTag = 0 }
-- g.Lf_DefaultMode = 'NameOnly'

-- for gtags
g.Lf_GtagsAutoGenerate = 1
g.Lf_Gtagslabel = 'native-pygments'

-- g.Lf_CacheDirectory = expand{'~/.local/share/nvim/cache'}

--[[

-- g.Lf_CommandMap = {'<C-j>': ['<m-j>'], '<C-k>': ['<m-k>']}
g.Lf_ShortcutF = '<c-p>'
g.Lf_ShortcutB = '<m-n>'

noremap <c-n> :LeaderfMru<cr>
noremap <M-p> :LeaderfFunction!<cr>
noremap <M-n> :LeaderfBuffer<cr>
noremap <M-m> :LeaderfTag<cr>
noremap <leader>lm :LeaderfMru<cr>
noremap <leader>lf :LeaderfFunction!<cr>
noremap <leader>lb :LeaderfBuffer<cr>
-- noremap <leader>lt :LeaderfTag<cr>
noremap <leader>lt :LeaderfBufTag<cr>

noremap <Leader>rg :<C-U><C-R>=printf("Leaderf! rg -e ")<CR>

-- search word under cursor, the pattern is treated as regex, and enter normal mode directly
-- noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
noremap <Leader>rc :<C-U><C-R>=printf("Leaderf! rg -e %s -tc -tcpp", expand("<cword>"))<CR>

-- search word in makefile under cursor, the pattern is treated as regex, and enter normal mode directly
noremap <Leader>rm :<C-U><C-R>=printf("Leaderf! rg -e %s -tmake", expand("<cword>"))<CR>

-- search word under cursor, the pattern is treated as regex,
-- append the result to previous search results.
-- noremap <C-G> :<C-U><C-R>=printf("Leaderf! rg --append -e %s ", expand("<cword>"))<CR>
noremap <Leader>rp :<C-U><C-R>=printf("Leaderf! rg --append -e %s ", expand("<cword>"))<CR>

-- search word under cursor literally only in current buffer
-- noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <Leader>rb :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>

-- search word under cursor literally in all listed buffers
-- noremap <C-D> :<C-U><C-R>=printf("Leaderf! rg -F --all-buffers -e %s ", expand("<cword>"))<CR>
noremap <Leader>ra :<C-U><C-R>=printf("Leaderf! rg -F --all-buffers -e %s ", expand("<cword>"))<CR>

-- search visually selected text literally, don't quit LeaderF after accepting an entry
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F --stayOpen -e %s ", leaderf#Rg#visual())<CR>

-- recall last search. If the result window is closed, reopen it.
-- noremap go :<C-U>Leaderf! rg --recall<CR>
noremap rr :<C-U>Leaderf! rg --recall<CR>


-- search word under cursor in *.h and *.cpp files.
-- noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.h -g *.cpp", expand("<cword>"))<CR>
-- the same as above
-- noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.{h,cpp}", expand("<cword>"))<CR>

-- search word under cursor in cpp and java files.
-- noremap <Leader>rcj :<C-U><C-R>=printf("Leaderf! rg -e %s -t cpp -t java", expand("<cword>"))<CR>

-- search word under cursor in cpp files, exclude the *.hpp files
-- noremap <Leader>c :<C-U><C-R>=printf("Leaderf! rg -e %s -t cpp -g !*.hpp", expand("<cword>"))<CR>

-- for gtags
g.Lf_GtagsAutoGenerate = 1
g.Lf_Gtagslabel = 'native-pygments'

noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fs :<C-U><C-R>=printf("Leaderf! gtags -s %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
map <silent> <leader>lgu :Leaderf gtags --update ]]
