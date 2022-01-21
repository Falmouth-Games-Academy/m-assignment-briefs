# Claim LuaLatex is really pdflatex to work with older version of latexmk
$pdf_mode = 1;
$pdflatex = 'lualatex -interaction=nonstopmode -shell-escape %O %S';
$out_dir = 'build/';
$silent = 1;

