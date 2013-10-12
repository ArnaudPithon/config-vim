" ~/.vim/menu-html.vim
" Modification de l'interface de gvim pour l'édition de fichiers html et xhtml
" Maintainer:   Arnaud Pithon
" Last Change:  2009-03-31
" Peut être chargé automatiquement avec la ligne :
" autocmd FileType {,x}html source ~/.vim/menu-html.vim

:imenu 100.100.10 &html.&Header.&Meta.&generator <meta name="generator" content="" /><Esc>F"i
:imenu 100.100.20 &html.&Header.&Meta.&author <meta name="author" content="" /><Esc>F"i
:imenu 100.100.30 &html.&Header.&Meta.&date <meta name="date" content="" /><Esc>F"i
:imenu 100.100.40 &html.&Header.&Meta.&copyright <meta name="copyright" content="" /><Esc>F"i
:imenu 100.100.50 &html.&Header.&Meta.&keywords <meta name="keywords" content="" /><Esc>F"i
:imenu 100.100.60 &html.&Header.&Meta.d&escription <meta name="description" content="" /><Esc>F"i
:imenu 100.100.70 &html.&Header.&Meta.&ROBOTS <meta name="ROBOTS" content="NOINDEX, NOFOLLOW" /><Esc>F"i

:imenu 100.310.10 &html.&Titres.h&1 <h1></h1><Esc>F<i
:vmenu 100.310.10 &html.&Titres.h&1 "+xi<h1></h1><Esc>F<"+P
:imenu 100.310.20 &html.&Titres.h&2 <h2></h2><Esc>F<i
:vmenu 100.310.20 &html.&Titres.h&2 "+xi<h2></h2><Esc>F<"+P
:imenu 100.310.30 &html.&Titres.h&3 <h3></h3><Esc>F<i
:vmenu 100.310.30 &html.&Titres.h&3 "+xi<h3></h3><Esc>F<"+P
:imenu 100.310.40 &html.&Titres.h&4 <h4></h4><Esc>F<i
:vmenu 100.310.40 &html.&Titres.h&4 "+xi<h4></h4><Esc>F<"+P
:imenu 100.310.50 &html.&Titres.h&5 <h5></h5><Esc>F<i
:vmenu 100.310.50 &html.&Titres.h&5 "+xi<h5></h5><Esc>F<"+P
:imenu 100.310.60 &html.&Titres.h&6 <h6></h6><Esc>F<i
:vmenu 100.310.60 &html.&Titres.h&6 "+xi<h6></h6><Esc>F<"+P

:imenu 100.410.01 &html.&Contextuel.&Emphase<Tab><em> <em></em><Esc>F<i
:vmenu 100.410.01 &html.&Contextuel.&Emphase<Tab><em> "+xi<em></em><Esc>F<"+P
:imenu 100.410.10 &html.&Contextuel.&Fort<Tab><strong> <strong></strong><Esc>F<i
:vmenu 100.410.10 &html.&Contextuel.&Fort<Tab><strong> "+xi<strong></strong><Esc>F<"+P
:imenu 100.410.20 &html.&Contextuel.&Définition<Tab><dfn> <dfn></dfn><Esc>F<i
:vmenu 100.410.20 &html.&Contextuel.&Définition<Tab><dfn> "+xi<dfn></dfn><Esc>F<"+P
:imenu 100.410.30 &html.&Contextuel.&Code<Tab><code> <code></code><Esc>F<i
:vmenu 100.410.30 &html.&Contextuel.&Code<Tab><code> "+xi<code></code><Esc>F<"+P
:imenu 100.410.40 &html.&Contextuel.&Échantillon<Tab><samp> <samp></samp><Esc>F<i
:vmenu 100.410.40 &html.&Contextuel.&Échantillon<Tab><samp> "+xi<samp></samp><Esc>F<"+P
:imenu 100.410.50 &html.&Contextuel.C&itation<Tab><cite> <cite></cite><Esc>F<i
:vmenu 100.410.50 &html.&Contextuel.C&itation<Tab><cite> "+xi<cite></cite><Esc>F<"+P
:imenu 100.410.60 &html.&Contextuel.A&bréviation<Tab><abbr> <abbr></abbr><Esc>F<i
:vmenu 100.410.60 &html.&Contextuel.A&bréviation<Tab><abbr> "+xi<abbr></abbr><Esc>F<"+P
:imenu 100.410.70 &html.&Contextuel.&Acronyme<Tab><acronym> <acronym></acronym><Esc>F<i
:vmenu 100.410.70 &html.&Contextuel.&Acronyme<Tab><acronym> "+xi<acronym></acronym><Esc>F<"+P
:imenu 100.410.80 &html.&Contextuel.&Variable<Tab><var> <var></var><Esc>F<i
:vmenu 100.410.80 &html.&Contextuel.&Variable<Tab><var> "+xi<var></var><Esc>F<"+P
:imenu 100.410.90 &html.&Contextuel.C&lavier<Tab><kbd> <kbd></kbd><Esc>F<i
:vmenu 100.410.90 &html.&Contextuel.C&lavier<Tab><kbd> "+xi<kbd></kbd><Esc>F<"+P
:imenu 100.410.95 &html.&Contextuel.&Supprimé<Tab><del> <del></del><Esc>F<i
:vmenu 100.410.95 &html.&Contextuel.&Supprimé<Tab><del> "+xi<del></del><Esc>F<"+P
:imenu 100.410.96 &html.&Contextuel.I&nséré<Tab><ins> <ins></ins><Esc>F<i
:vmenu 100.410.96 &html.&Contextuel.I&nséré<Tab><ins> "+xi<ins></ins><Esc>F<"+P

:imenu 100.510.10 &html.&Général.&Paragraphe<Tab><p> <p></p><Esc>F<i
:vmenu 100.510.10 &html.&Général.&Paragraphe<Tab><p> "+xi<p></p><Esc>F<"+P
:imenu 100.510.20 &html.&Général.Pré&formaté<Tab><pre> <pre></pre><Esc>F<i
:vmenu 100.510.20 &html.&Général.Pré&formaté<Tab><pre> "+xi<pre></pre><Esc>F<"+P

:imenu 100.610.10 &html.&Listes.&Non-ordonnée<Tab><ul> <ul><Return></ul><Esc>O<li></li><Esc>F<i
:vmenu 100.610.10 &html.&Listes.&Non-ordonnée<Tab><ul> "+xi<ul><Return></ul><Esc>O<Esc>"+P
:imenu 100.610.20 &html.&Listes.&Ordonnée<Tab><ol> <ol><Return></ol><Esc>O<li></li><Esc>F<i
:vmenu 100.610.20 &html.&Listes.&Ordonnée<Tab><ol> "+xi<ol><Return></ol><Esc>O<Esc>"+P
:imenu 100.610.30 &html.&Listes.&Définitions<Tab><dl> <dl><Return></dl><Esc>O<dt></dt><Esc>F<i
:vmenu 100.610.30 &html.&Listes.&Définitions<Tab><dl> "+xi<ol><Return></ol><Esc>O<Esc>"+P
:amenu 100.610.40 html.Listes.-sepliste- :
:imenu 100.610.50 &html.&Listes.&Élément<Tab><li> <li></li><Esc>F<i
:vmenu 100.610.50 &html.&Listes.&Élément<Tab><li> "+xi<li></li><Esc>F<"+P
:imenu 100.610.60 &html.&Listes.&Terme<Tab><dt> <dt></dt><Esc>F<i
:vmenu 100.610.60 &html.&Listes.&Terme<Tab><dt> "+xi<dt></dt><Esc>F<"+P
:imenu 100.610.70 &html.&Listes.&Définition<Tab><dd> <dd></dd><Esc>F<i
:vmenu 100.610.70 &html.&Listes.&Définition<Tab><dd> "+xi<dd></dd><Esc>F<"+P

:imenu 100.800.10.10 &html.Symboles.Flèches.←<Tab>&#8595; &#8592;
:imenu 100.800.10.11 &html.Symboles.Flèches.↑<Tab>&#8595; &#8593;
:imenu 100.800.10.12 &html.Symboles.Flèches.→<Tab>&#8595; &#8594;
:imenu 100.800.10.13 &html.Symboles.Flèches.↓<Tab>&#8595; &#8595;
:imenu 100.800.10.19 html.Symboles.Flèches.-sep- :
:imenu 100.800.10.20 &html.Symboles.Flèches.⇒<Tab>&rarr; &rarr;

:amenu 100.900 html.-sep- :

:imenu 100.910 &html.&Span<Tab><span> <span class=""></span><Esc>F"i
:vmenu 100.910 &html.&Span<Tab><span> "+xi<span class=""></span><Esc>F<"+P?class=""<Return>f"a
:imenu 100.920 &html.&Div<Tab><div> <div class=""><Return></div><Up><Esc>f"a
:vmenu 100.920 &html.&Div<Tab><div> "+xi<div class=""><Return></div><Esc>O<Esc>"+P?class=""<Return>f"a
:imenu 100.930 &html.Co&mmentaire<Tab><!-- <!--  --><Esc>F<Space>i
:vmenu 100.930 &html.Co&mmentaire<Tab><!-- "+xi<!--  --><Esc>F<Space>"+P

