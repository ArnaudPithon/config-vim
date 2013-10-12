" Author: Arno
" Marche pas mais j'ai essayé :/

" Matchit support
if exists("loaded_matchit") && !exists("b:match_words")

  let b:match_ignorecase = 0

  let b:match_words =
	\  '\<if\|unless\>:\<elsif\>:\<else\>' .
	\ ',\<while\|until\>:\<next\|last\>:\<continue\>' .
	\ ',\<foreach\>:\<next\|last\|when\|default\>:\<continue\>' .
	\ ',\<given\>:\<when\|break\>:\<default\>' .
	\ ',{:},(:),\[:\]'

endif
