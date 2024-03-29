# vim: set ft=perl:
@default_files = ('main.tex');

$pdf_mode = 1;
$bibtex_use = 2;
$recorder = 1;
$preview_continuous_mode = 0;
$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glg glo gls idx ilg ind lof log lot out run.xml toc thm toe ist idx";
$pdflatex = "xelatex -file-line-error --shell-escape -src-specials -synctex=1 -interaction=nonstopmode %O %S;cp %D %R.pdf";
$pdf_update_method = 0;
$makeindex = 'internal splitindex';
sub splitindex {
   # Use splitindex instead of makeindex.
   # The splitindex programe starts from an .idx file, makes a set of
   #   other .idx files for separate indexes, and then runs makeindex to
   #   make corresponding .ind files.
   # However, it is possible that the document uses the splitindex
   #   package, but in a way compatible with the standard methods
   #   compatible with makeindex, i.e., with a single index and with the
   #   use of the \printindex command.
   #   Then we need to invoke makeindex.
   # In addition, latexmk assumes that makeindex or its replacement makes
   #   an .ind file from an .idx file, and latexmk gives an error if it
   #   doesn't exist, we need to make an .ind file.
   # Both problems are solved by running makeindex and then splitindex.
   # Note: errors are returned by makeindex and splitindex for things
   #   like a missing input file.  No error is returned for lines in an
   #   input file that are in an incorrect format; they are simply
   #   ignored.  So no problem is caused by lines in the .idx file
   #   that are generated by splitindex in a format incompatible with
   #   makeindex.
   my $ret1 = system( "makeindex", $$Psource );
   my $ret2 = system( "splitindex", $$Psource );
   return $ret1 || $ret2;
}
@cus_dep_list = (@cus_dep_list, "idx ind 0 makenomenclature");
sub makenomenclature {
   system("splitindex $_[0] -- -s $_[0].ist"); }
@generated_exts = (@generated_exts, 'glo');

