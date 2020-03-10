%%
%% This is file `hitszthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% hitszthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2019-2020 by Jingxuan Yang <yanglatex2e@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{hitszthesis}
[2020/03/10 3.0 Dissertation Template for Harbin Institute of Technology, ShenZhen (HITSZ)]
\RequirePackage{ifthen}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=hitsz,
  prefix=hitsz@,
  setkeys=\kvsetkeys}
\newif\ifhitsz@bachelor
\newif\ifhitsz@master
\newif\ifhitsz@doctor
\define@key{hitsz}{type}{%
  \hitsz@bachelorfalse
  \hitsz@masterfalse
  \hitsz@doctorfalse
  \expandafter\csname hitsz@#1true\endcsname}
\newif\ifhitsz@shenzhen
\newif\ifhitsz@weihai
\newif\ifhitsz@harbin
\define@key{hitsz}{campus}{%
  \hitsz@shenzhenfalse
  \hitsz@weihaifalse
  \hitsz@harbinfalse
  \expandafter\csname hitsz@#1true\endcsname}
\ifhitsz@harbin
  \relax
\else
  \ifhitsz@weihai
    \relax
  \else
    \hitsz@shenzhentrue
  \fi
\fi
\DeclareBoolOption[false]{arialtoc}
\DeclareBoolOption[false]{arialtitle}
\DeclareBoolOption[false]{infoleft}
\DeclareBoolOption[false]{covertitletworow}
\DeclareBoolOption[false]{boldcaption}
\DeclareBoolOption[true]{raggedbottom}
\DeclareBoolOption[false]{pifootnote}
\DeclareBoolOption[false]{glue}
\DeclareBoolOption[false]{tocfour}
\DeclareBoolOption[false]{tocblank}
\DeclareBoolOption[true]{chapterhang}
\DeclareBoolOption[true]{fulltime}
\DeclareBoolOption[false]{subtitle}
\DeclareBoolOption[false]{debug}
\DeclareBoolOption[false]{openright}
\DeclareBoolOption[false]{library}
\DeclareBoolOption[true]{capcenterlast}
\DeclareBoolOption[true]{subcapcenterlast}
\DeclareBoolOption[true]{absupper}
\DeclareBoolOption[true]{bsmainpagenumberline}
\DeclareBoolOption[true]{bsfrontpagenumberline}
\DeclareBoolOption[true]{bsheadrule}
\newif\ifhitsz@newtxmath
\newif\ifhitsz@mtprotwolite
\newif\ifhitsz@mtprotwo
\define@key{hitsz}{mathfont}{%
  \hitsz@newtxmathfalse
  \hitsz@mtprotwolitefalse
  \hitsz@mtprotwofalse
  \expandafter\csname hitsz@#1true\endcsname}
\ifhitsz@mtprotwolite
  \relax
\else
  \ifhitsz@mtprotwo
    \relax
  \else
    \hitsz@newtxmathtrue
  \fi
\fi
\DeclareBoolOption[false]{splitbibitem}
\DeclareStringOption{fontset}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\PassOptionsToPackage{no-math}{fontspec}
\ifhitsz@bachelor
\PassOptionsToClass{oneside}{book}
\fi
\ifhitsz@master
\PassOptionsToClass{oneside}{book}
\fi
\ifhitsz@doctor
\PassOptionsToClass{twoside}{book}
\fi
\ifthenelse%
{\equal{\hitsz@fontset}{}}%
{%
  \PassOptionsToPackage{AutoFakeBold=2}{xeCJK}
}%
{%
  \ifthenelse%
  {\equal{\hitsz@fontset}{siyuan}}%
  {\relax}%
  {%
    \PassOptionsToPackage{AutoFakeBold=2}{xeCJK}
  }%
  \PassOptionsToClass{fontset=\hitsz@fontset}{ctexbook}
}%
\RequirePackage{etex}
\LoadClass[a4paper,openany,UTF8,zihao=-4,scheme=plain]{ctexbook}
\ifhitsz@bachelor\relax\else
  \ifhitsz@master\relax\else
    \ifhitsz@doctor\relax\else
        \ClassError{hitszthesis}%
                   {Please specify thesis type in option: \MessageBreak
                    type=[bachelor | master | doctor]}{}
      \fi
  \fi
\fi
\RequirePackage{etoolbox}
\RequirePackage{ifxetex}
\ifxetex
\else
        \ClassError{hitszthesis}%
                   {Please use: \MessageBreak
                    xelatex}{}
\fi
\RequirePackage{xparse}
\RequirePackage{amsmath}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{amssymb}
\RequirePackage[defaultsups]{newtxtext}
\ifhitsz@newtxmath
  \RequirePackage{newtxmath}
\else
  \ifhitsz@mtprotwolite
    \let\Bbbk\relax
    \RequirePackage[lite,subscriptcorrection,slantedGreek,nofontinfo]{mtpro2}
  \else
    \ifhitsz@mtprotwo
      \let\Bbbk\relax
      \RequirePackage[mtphrb,mtpcal,zswash,uprightGreek]{mtpro2}
    \fi
  \fi
\fi
\RequirePackage{graphicx}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage{enumitem}  %使用enumitem宏包,改变列表项的格式
\RequirePackage{environ}
\ifhitsz@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\ifhitsz@pifootnote
  \RequirePackage{pifont}
\fi
\RequirePackage{CJKfntef}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{subeqnarray}
\RequirePackage{hyperref}
\hypersetup{%
  CJKbookmarks=true,
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=3,
  pdfcreator={XeLaTeX with hitszthesis class},
  breaklinks=true,
  colorlinks=false,
  plainpages=false,
  pdfstartview=FitH,
  pdfborder={0 0 0}
}
\urlstyle{same}
\ifhitsz@debug
  \RequirePackage[showframe]{geometry}
\else
  \RequirePackage{geometry}
\fi
\geometry{
  a4paper, % 210 * 297mm
  hcentering,
  ignoreall,
  nomarginpar,
}
\geometry{% 版芯高度 = textheight(224) + head(5) + headsep(3) + footskip(8) = 240 mm
  text={150true mm,224true mm},
  top=37.5true mm,
  left=30true mm,
  head=5true mm,
  headsep=3true mm,
  footskip=0true mm,
  foot=8true mm
}
\ifhitsz@debug%
\RequirePackage{layout}
\RequirePackage{layouts}
\RequirePackage{lineno}
\fi
\RequirePackage{fancyhdr}
\RequirePackage{tabularx}
\RequirePackage{varwidth}
\RequirePackage{changepage}
\RequirePackage{multicol}
\RequirePackage[below]{placeins}%允许上一个section的浮动图形出现在下一个section的开始部分,还提供\FloatBarrier命令,使所有未处理的浮动图形立即被处理
\RequirePackage{flafter}       % 使得所有浮动体不能被放置在其浮动环境之前，以免浮动体在引述它的文本之前出现.
\RequirePackage{multirow}       %使用Multirow宏包，使得表格可以合并多个row格
\ifhitsz@subcapcenterlast
\PassOptionsToPackage{centerlast}{subfigure}
\fi
\RequirePackage{subfigure}%支持子图 %centerlast 设置最后一行是否居中
\RequirePackage[subfigure]{ccaption} %支持双语标题
\RequirePackage[makeindex]{splitidx}
\newindex[]{china}
\newindex[]{english}
\RequirePackage{xltxtra}
\ifhitsz@library
  \hitsz@openrightfalse
\else
  \relax
\fi
\let\hitsz@cleardoublepage\cleardoublepage
\newcommand{\hitsz@clearemptydoublepage}{%
  \clearpage{\pagestyle{hitsz@empty}\hitsz@cleardoublepage}
}
\let\cleardoublepage\hitsz@clearemptydoublepage
\renewcommand\frontmatter{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{hitsz@empty}
}
\renewcommand\mainmatter{%
  \ifhitsz@tocblank%
  \addtocontents{toc}{\vspace{\baselineskip}}
  \addtocontents{toe}{\vspace{\baselineskip}}
  \fi%
  \ifhitsz@doctor%
    \ifhitsz@library\clearpage\else\cleardoublepage\fi
    \else%
    \clearpage
  \fi%
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{hitsz@headings}
}
\renewcommand\backmatter{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{ \ifhitsz@glue 20.50398bp \@plus 2.83465bp \@minus 0bp
                                  \else 19.27374bp
                                  \fi}%
  \abovedisplayskip=8pt
  \abovedisplayshortskip=8pt
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\def\hitsz@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\hitsz@def@fontsize{dachu}{58bp}
\hitsz@def@fontsize{chuhao}{42bp}
\hitsz@def@fontsize{xiaochu}{36bp}
\hitsz@def@fontsize{yihao}{26bp}
\hitsz@def@fontsize{xiaoyi}{24bp}
\hitsz@def@fontsize{erhao}{22bp}
\hitsz@def@fontsize{xiaoer}{18bp}
\hitsz@def@fontsize{sanhao}{16bp}
\hitsz@def@fontsize{xiaosan}{15bp}
\hitsz@def@fontsize{sihao}{14bp}
\hitsz@def@fontsize{banxiaosi}{13bp}
\hitsz@def@fontsize{xiaosi}{12bp}
\hitsz@def@fontsize{dawu}{11bp}
\hitsz@def@fontsize{wuhao}{10.5bp}
\hitsz@def@fontsize{xiaowu}{9bp}
\hitsz@def@fontsize{liuhao}{7.5bp}
\hitsz@def@fontsize{xiaoliu}{6.5bp}
\hitsz@def@fontsize{qihao}{5.5bp}
\hitsz@def@fontsize{bahao}{5bp}
\let\hitsz@headrule\headrule
\fancypagestyle{hitsz@empty}{%
  \fancyhf{}
  \let\headrule\hitsz@headrule%
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{hitsz@headings}{%
  \fancyhf{}
  \ifhitsz@doctor
    \fancyhead[CO]{\songti\xiaowu[0]\leftmark}
    \ifhitsz@harbin
      \fancyhead[CE]{\songti\xiaowu[0]\hitsz@cschoolname\hitsz@cdegree\hitsz@cthesisname}
    \fi
    \ifhitsz@shenzhen
      \fancyhead[CE]{\songti\xiaowu[0]%
        \hitsz@cschoolname\hitsz@cdegree\hitsz@cthesisname}
    \fi
    \ifhitsz@weihai
      \fancyhead[CE]{\songti\xiaowu[0]%
        \hitsz@cschoolname\hitsz@weihaicampus\hitsz@cdegree\hitsz@cthesisname}
    \fi
  \else
    \ifhitsz@master
      \ifhitsz@harbin
        \fancyhead[C]{\songti\xiaowu[0]%
          \hitsz@cschoolname\hitsz@cdegree\hitsz@cthesisname}
      \fi
      \ifhitsz@shenzhen
        \fancyhead[C]{\songti\xiaowu[0]%
          \hitsz@cschoolname\hitsz@cdegree\hitsz@cthesisname}
      \fi
      \ifhitsz@weihai
        \fancyhead[C]{\songti\xiaowu[0]%
          \hitsz@cschoolname\hitsz@weihaicampus\hitsz@cdegree\hitsz@cthesisname}
      \fi
    \fi
  \fi
  \ifhitsz@bachelor
    \ifhitsz@harbin
      \fancyhead[C]{\songti\xiaowu[0]%
        \hitsz@cschoolname\hitsz@bachelor@cxuewei\hitsz@bachelor@cthesisname}%
    \fi
    \ifhitsz@shenzhen
      \fancyhead[C]{\songti\xiaowu[0]%
        \hitsz@cschoolname\hitsz@shenzhencampus\hitsz@bachelor@cxuewei\hitsz@bachelor@cthesisname}%
    \fi
    \ifhitsz@weihai
      \fancyhead[C]{\songti\xiaowu[0]%
        \hitsz@cschoolname\hitsz@weihaicampus\hitsz@bachelor@cxuewei\hitsz@bachelor@cthesisname}%
    \fi
    \fancyfoot[C]{\xiaowu%
      \if@mainmatter%
        \ifhitsz@bsmainpagenumberline-~\thepage~-
        \else\thepage
        \fi
      \else%
        \ifhitsz@bsfrontpagenumberline-~\thepage~-
        \else\thepage
        \fi
      \fi
    }
    \ifhitsz@bsheadrule
      \renewcommand{\headrule}{
        \vskip 1.190132pt
        \hrule\@height2.276208pt\@width\headwidth
        \vskip 0.75pt
        \hrule\@height.75pt\@width\headwidth
      }
    \else
      \renewcommand{\headrulewidth}{0pt}
    \fi
  \else%
    \fancyfoot[C]{\xiaowu-~\thepage~-}
    \renewcommand{\headrule}{%
      \vskip 1.190132pt
      \hrule\@height2.276208pt\@width\headwidth
      \vskip 0.75pt
      \hrule\@height.75pt\@width\headwidth
    }
  \fi
  % 页眉中小五汉字，0行距时，占用9bt，页眉高度为14pt,
  % 所以页眉中headrule四个距离之和要保持等于 14pt - 9bt = 4.96634pt
  \renewcommand{\footrulewidth}{0pt}
}
\AtBeginDocument{%此处解决页眉经典bug
  \pagestyle{hitsz@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\enspace#1}{}}}
\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true}
\setlist{nosep}
\def\hitsz@textcircled#1{%
  \ifnum\value{#1} >9
    \ClassError{hitszszthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}
  \fi
  \ifhitsz@pifootnote%
    \ding{\the\numexpr\value{#1}+171\relax}%
  \else%
    \textcircled{\xiaoliu\arabic{#1}}%
  \fi}
\renewcommand{\thefootnote}{\hitsz@textcircled{footnote}}
\renewcommand{\thempfootnote}{\hitsz@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\hitsz@footnotesize\footnotesize
\renewcommand\footnotesize{\hitsz@footnotesize\xiaowu[1.5]}
\footnotemargin1.5em\relax
\let\hitsz@makefnmark\@makefnmark
\def\hitsz@@makefnmark{\hbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\hitsz@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\hitsz@makefnmark}{}{}
\allowdisplaybreaks[4]
\predisplaypenalty=0  %公式之前可以换页，公式出现在页面顶部
\postdisplaypenalty=0
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\make@df@tag{\@ifstar\hitsz@make@df@tag@@\make@df@tag@@@}
\def\hitsz@make@df@tag@@#1{\gdef\df@tag{\hitsz@maketag{#1}\def\@currentlabel{#1}}}
\iffalse
\ifhitsz@bachelor
  \def\hitsz@maketag#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)}}
  \def\tagform@#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)\equcaption{#1}}}
\fi
\fi
\def\hitsz@maketag#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)}}
\def\tagform@#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)\equcaption{#1}}}
\renewcommand{\eqref}[1]{\textup{(\ref{#1})}}
\setlength{\intextsep}{\ifhitsz@glue 8.50398bp \@plus 2.83465bp \@minus 0bp\else 8.50398bp\fi}
\setlength{\textfloatsep}{\ifhitsz@glue 8.50398bp \@plus 2.83465bp \@minus 0bp\else 8.50398bp\fi}
\setlength{\floatsep}{\ifhitsz@glue 12bp \@plus 2.83465bp \@minus 0bp\else 12bp\fi}
\g@addto@macro\appendix{\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}}
\g@addto@macro\appendix{\renewcommand*{\thetable}{\thechapter-\arabic{table}}}
\g@addto@macro\appendix{\renewcommand*{\theequation}{\thechapter-\arabic{equation}}}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \ifhitsz@boldcaption\songti\bfseries\fi
  \wuhao\sbox\@tempboxa{#1\ifhitsz@bachelor\hskip\ccwd\else\enskip\fi#2}%
  \ifdim \wd\@tempboxa >\hsize
  \ifhitsz@capcenterlast%
  \vskip 6.3bp%
  {\setbox0=\vbox{#1\ifhitsz@bachelor\hskip\ccwd\else\enskip\fi#2}
  \setbox1=\vbox{%
  \unvbox0
  \setbox2=\lastbox
  \hbox to \textwidth{\hfill\unhcopy2 \unskip\unskip\hfill}
  }
  \unvbox1}
  \else%
  #1\ifhitsz@bachelor\hskip\ccwd\else\enskip\fi#2%
  \fi%
    \par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
\vskip\belowcaptionskip}
\renewcommand*{\longbionenumcaption}[7]{%
\@if@contemptyarg{#1}{\caption{#2}}{\caption[#1]{#2}}%
\global\let\@cont@oldtablename\tablename
\gdef\tablename{#3}
\global\let\LT@c@ption\@cont@LT@nonumintoc
\\[#6]
\@if@contemptyarg{#4}{\caption{#5}}{\caption[#4]{#5}}%
\global\let\tablename\@cont@oldtablename
\global\let\LT@c@ption\@cont@oldLT@c@ption
\vspace{#7}}
\let\hitsz@LT@array\LT@array
\def\LT@array{\wuhao\hitsz@LT@array} % set default font size
\newcommand{\ltfontsize}[1]{\def\LT@array{#1\hitsz@LT@array}}
\renewcommand{\thesubtable}{(\alph{subtable})}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}%使图编号为 7-1 的格式 %\protect{~}
\renewcommand{\thesubfigure}{\alph{subfigure})}%使子图编号为 a)的格式
\renewcommand{\p@subfigure}{\thefigure~} %使子图引用为 7-1 a) 的格式，母图编号和子图编号之间用~加一个空格
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}%使表编号为 7-1 的格式
\newcommand\figref[1]{图\ref{#1}}
\newcommand\tabref[1]{表\ref{#1}}
\newcommand\equref[1]{式(\ref{#1})}
\setitemize{leftmargin=0em,itemsep=0em,partopsep=0em,parsep=0em,topsep=0em,itemindent=3em}
\setenumerate{leftmargin=0em,itemsep=0em,partopsep=0em,parsep=0em,topsep=0em,itemindent=3.5em}
\newcommand{\citeup}[1]{\textsuperscript{\cite{#1}}}
\captionnamefont{\wuhao}
\captiontitlefont{\wuhao}
\renewcommand{\subcapsize}{\wuhao}
\setlength{\abovecaptionskip}{0pt}%为了双标题之间的间距，不能设置
\setlength{\belowcaptionskip}{0pt}
\newcounter{pubctr} %自定义新计数器
\newenvironment{publist}{%%%%%定义新环境
\begin{list}{[\arabic{pubctr}]} %%标签格式
    {
     \usecounter{pubctr}
     \setlength{\leftmargin}{1.7em}     % 左边界 \leftmargin =\itemindent + \labelwidth + \labelsep
     \setlength{\itemindent}{0em}     % 标号缩进量
     \setlength{\labelsep}{0.5em}       % 标号和列表项之间的距离,默认0.5em
     \setlength{\rightmargin}{0em}    % 右边界
     \setlength{\topsep}{0ex}         % 列表到上下文的垂直距离
     \setlength{\parsep}{0ex}         % 段落间距
     \setlength{\itemsep}{0ex}        % 标签间距
     \setlength{\listparindent}{0pt} % 段落缩进量
    }}
{\end{list}}
\renewtheoremstyle{plain}
{\item[\hskip\labelsep \theorem@headerfont ##1\ ##2\theorem@separator]}
{\item[\hskip\labelsep \theorem@headerfont ##1\ ##2\ ##3\theorem@separator]}
\theorembodyfont{\songti\rmfamily}
\theoremheaderfont{\heiti\rmfamily}
\theoremsymbol{$\square$}
\setlength{\theorempreskipamount}{0pt}
\setlength{\theorempostskipamount}{-2pt}
\setlength{\parindent}{2em}
\arraycolsep=1.6pt
\def\hitsz@title@font{%
  \ifhitsz@arialtitle\sffamily\else\heiti\fi}

\newcommand\hitsz@chapter@titleformat[1]{%开启悬挂缩进选项
    \ifthenelse%
      {\equal{#1}{\eabstractcname}}%
      {\bfseries #1}%
      %实现章标题的居中加悬挂缩进，注意，此处一定是\CTEX@chaptername\CTEX@chapter@aftername, 否则是英文标题长度
      {\ifhitsz@chapterhang%
        \settowidth{\hangindent}{\CTEX@chaptername\CTEX@chapter@aftername}\hangafter=1
        \fi#1}%
      %{\begin{varwidth}[t]{\hitsz@chapter@indentboxwidth}#1\end{varwidth}}
}

\renewcommand\@afterheading{%
  \@nobreaktrue
  \everypar{%
    \if@nobreak
      \@nobreakfalse
      \clubpenalty 1
      \if@afterindent \else
        {\setbox\z@\lastbox}%
      \fi
    \else
      \clubpenalty 1
      \everypar{}%
    \fi}}
\ctexset{%
  chapter={
    afterindent=true,
    pagestyle={hitsz@headings},
    beforeskip={24.74658bp},%一个空行 1.57481 × 18
    afterskip={24.74658bp},%0.8应该不计算间距 0.8 × 18 + 0.57481×18
    aftername=\enspace,
    format={\centering\hitsz@title@font\xiaoer[1.57481]},%\center 会影响之后全局
    nameformat=\relax,
    numberformat=\relax,
    titleformat=\hitsz@chapter@titleformat,
    fixskip=true, % 添加这一行去除默认间距
    %hang=true,
  },
  section={
    afterindent=true,
    beforeskip={\ifhitsz@glue
                  13.5bp \@plus 1.677267bp \@minus 1.157391bp
                \else
                  \ifhitsz@bachelor 20.25bp \else 20.25bp
                  \fi
                \fi}, % 原为13.5bp
    afterskip={\ifhitsz@glue
                13.5bp \@plus 1.677267bp \@minus 1.157391bp
               \else
                \ifhitsz@bachelor 20.25bp \else 20.25bp
                \fi
              \fi},
    format={\hitsz@title@font
            \ifhitsz@glue
              \fontsize{15bp}{21bp \@plus 1.677267bp \@minus 1.157391bp}
            \else
              \fontsize{15bp}{21bp}
            \fi
            \selectfont},
    aftername=\enspace,
    fixskip=true,
    break={},
  },
  subsection={
    afterindent=true,
    beforeskip={\ifhitsz@glue 11bp \@plus 1.842609bp \@minus 0.9920497bp
                \else
                  \ifhitsz@bachelor 16.5bp
                  \else 16.5bp
                  \fi
                \fi}, % 原为11bp
    afterskip={ \ifhitsz@glue 11bp \@plus 2.33863bp \@minus 0.49602bp
                \else
                  \ifhitsz@bachelor 16.5bp
                  \else 16.5bp
                  \fi
                \fi},
    format={\hitsz@title@font
            \ifhitsz@glue
              \fontsize{14bp}{18bp \@plus 1.842609bp \@minus 0.9920497bp}
            \else
              \fontsize{14bp}{18bp}
            \fi\selectfont},
    aftername=\enspace,
    fixskip=true,
    break={},
  },
  subsubsection={
    afterindent=true,
    beforeskip={\ifhitsz@glue 8.50398bp \@plus 2.83465bp \@minus 0bp
                \else
                  \ifhitsz@bachelor 13.5bp
                  \else 13.5bp
                  \fi
                \fi}, % 原为9bp
    afterskip={ \ifhitsz@glue 8.50398bp \@plus 2.83465bp \@minus 0bp
                \else
                  \ifhitsz@bachelor 13.5bp
                  \else 13.5bp
                  \fi
                \fi},
    format={\hitsz@title@font\normalsize},
    aftername=\enspace,
    fixskip=true,
    break={},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true
}
\NewDocumentCommand{\hitsz@appendix@chapter}{s m o}{%
  \IfBooleanT{#1}%
  {
    \phantomsection
    \markboth{#2}{#2}
    \ifthenelse%
      {\equal{#2}{\eabstractcname}}%
      {\addcontentsline{toc}{chapter}{%
        \texorpdfstring{\ifhitsz@arialtitle\sffamily\heiti%
                        \else\heiti
                        \fi
                        \ifhitsz@absupper\MakeUppercase{#2}%
                        \else#2
                        \fi}{#2}}}
      {\addcontentsline{toc}{chapter}{%
      \texorpdfstring{\ifhitsz@arialtitle\sffamily\heiti\else\heiti\fi #2}{#2}}}
    \IfValueT{#3}{\addcontentsline{toe}{chapter}{\texorpdfstring{\bfseries #3}{#3}}}
    \hitsz@chapter*{#2}
  }
}
\newcommand{\BiAppChapter}[2]    % 该附录命令适用于有章节的完整附录
{\phantomsection
 \chapter{#1}
 \addcontentsline{toe}{chapter}{%
  \texorpdfstring{\bfseries \xiaosi Appendix \thechapter~~#2}{Appendix \thechapter~~#2}}
}
\let\hitsz@chapter\chapter
\RenewDocumentCommand{\chapter}{s o m o}{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi\phantomsection%
  \IfBooleanTF{#1}%
  {% if \chapter*
    \hitsz@chapter*{#3}%
    \IfValueT{#4}{%
    \addcontentsline{toe}{chapter}{\texorpdfstring{\bfseries #4}{#4}}
    }
  }%
  {% if \chapter
    \IfNoValueTF{#2}%
    {\hitsz@chapter{#3}}%
    {\hitsz@chapter[#2]{#3}}%
    \IfValueT{#4}{%
      \addcontentsline{toe}{chapter}{%
        \texorpdfstring{\bfseries\relax Chapter \thechapter\hspace{0.5em}\ignorespaces #4}{%
          Chapter \thechapter\hspace{0.5em}\ignorespaces #4}}
    }
  }
}

\let\hitsz@section\section
\RenewDocumentCommand\section{s o m o}{
  \IfBooleanTF{#1}%
  {% if \section*
    \hitsz@section*{#3}%
    \IfValueT{#4}{%
      \addcontentsline{toe}{section}{#4}
    }
  }%
  {% if \section
    \IfNoValueTF{#2}%
    {\hitsz@section{#3}}%
    {\hitsz@section[#2]{#3}}%
    \IfValueT{#4}{%
    \addcontentsline{toe}{section}{%
      \protect\numberline{\csname thesection\endcsname}\ignorespaces #4}
    }
  }
}

\let\hitsz@subsection\subsection
\RenewDocumentCommand\subsection{s o m o}{
  \IfBooleanTF{#1}%
  {% if \subsection*
    \hitsz@subsection*{#3}%
    \IfValueT{#4}{%
      \addcontentsline{toe}{subsection}{#4}
    }
  }%
  {% if \subsection
    \IfNoValueTF{#2}%
    {\hitsz@subsection{#3}}%
    {\hitsz@subsection[#2]{#3}}%
    \IfValueT{#4}{%
    \addcontentsline{toe}{subsection}{%
      \protect\numberline{\csname thesubsection\endcsname}\ignorespaces #4}
    }
  }
}

\let\hitsz@subsubsection\subsubsection
\RenewDocumentCommand\subsubsection{s o m o}{
  \IfBooleanTF{#1}%
  {% if \subsubsection*
    \hitsz@subsubsection*{#3}%
    \IfValueT{#4}{%
      \addcontentsline{toe}{subsubsection}{#4}
    }
  }%
  {% if \subsubsection
    \IfNoValueTF{#2}%
    {\hitsz@subsubsection{#3}}%
    {\hitsz@subsubsection[#2]{#3}}%
    \IfValueT{#4}{%
    \addcontentsline{toe}{subsubsection}{%
      \protect\numberline{\csname thesubsubsection\endcsname}\ignorespaces #4}
    }
  }
}
\def\hitsz@def@term#1{%
  \define@key{hitsz}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname hitsz@#1\endcsname{##1}}
  \csname #1\endcsname{}}

\hitsz@def@term{statesecrets} %密级
\hitsz@def@term{natclassifiedindex}  %国内图书分类号
\hitsz@def@term{intclassifiedindex}  %国际图书分类号

\hitsz@def@term{ctitlecover} %中文标题封面
\hitsz@def@term{ctitle} %中文标题
\hitsz@def@term{csubtitle} %中文副标题
\hitsz@def@term{cxueke} %中文学科
\hitsz@def@term{cauthor} %中文作者
\hitsz@def@term{csupervisor} %中文导师
\hitsz@def@term{cassosupervisor} %中文副导师
\hitsz@def@term{ccosupervisor}%中文联合导师
\hitsz@def@term{caffil}%中文院系
\hitsz@def@term{csubject}%中文专业
\hitsz@def@term{cdate}

\hitsz@def@term{cstudentid}%
\hitsz@def@term{cstudenttype}%
\hitsz@def@term{ctitleone}%
\hitsz@def@term{ctitletwo}%

\hitsz@def@term{etitle} %英文标题
\hitsz@def@term{esubtitle} %英文标题
\hitsz@def@term{exueke} %英文学科
\hitsz@def@term{eauthor} %英文作者
\hitsz@def@term{esupervisor} %英文导师
\hitsz@def@term{eassosupervisor} %英文副导师
\hitsz@def@term{ecosupervisor} %英文联合导师
\hitsz@def@term{eaffil}
\hitsz@def@term{esubject}
\hitsz@def@term{edate}
\hitsz@def@term{estudenttype}
\newcommand{\hitsz@@cabstract}[1]{\long\gdef\hitsz@cabstract{#1}}
\newenvironment{cabstract}{\Collect@Body\hitsz@@cabstract}{}
\newcommand{\hitsz@@eabstract}[1]{\long\gdef\hitsz@eabstract{#1}}
\newenvironment{eabstract}{\Collect@Body\hitsz@@eabstract}{}
\def\hitsz@parse@keywords#1{
  \define@key{hitsz}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname hitsz@#1\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname hitsz@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname hitsz@#1\endcsname{%
          \ignorespaces\csname hitsz@#1@separator\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname hitsz@#1\expandafter\endcsname\expandafter{\reserved@a}}}}
\hitsz@parse@keywords{ckeywords}
\hitsz@parse@keywords{ekeywords}
\def\hitszsetup{\kvsetkeys{hitsz}}
\newlength{\hitsz@title@width}
\newcommand{\hitsz@put@title}[2][\hitsz@title@width]{%
  \begin{CJKfilltwosides}[b]{#1}#2\end{CJKfilltwosides}}

\def\hitsz@first@titlepage{%
  \ifhitsz@bachelor\hitsz@first@titlepage@bachelor\else\hitsz@first@titlepage@other\fi}
\def\hitsz@second@titlepage{%
  \ifhitsz@bachelor\hitsz@second@titlepage@bachelor\else\hitsz@second@titlepage@other\fi}

\newcommand{\hitsz@first@titlepage@bachelor}{
\ifthenelse%
{\equal{\hitsz@fontset}{siyuan}}%
{\xiaosi[1]\vspace*{0.65em}}%
{\xiaosi[1]\textcolor[rgb]{1,1,1}{\songti{\hitsz@dummyrow}}}%
  \begin{center}
    \ifhitsz@covertitletworow
      \vspace*{0.7cm}
      \parbox[t][1.4cm][t]{\textwidth}{%
        \begin{center}
          \erhao[0]\heiti\hitsz@ctitleone
        \end{center}
      }\par
      \parbox[t][3cm][t]{\textwidth}{%
        \begin{center}
          \erhao[0]\heiti\hitsz@ctitletwo
        \end{center}
      }\par
    \else
      \vspace*{1.2cm}
      \parbox[t][3.4cm][t]{\textwidth}{%
        \begin{center}
          \erhao[0]\heiti\hitsz@ctitlecover
        \end{center}
      }
    \fi
    % 姓名
    \parbox[t][9cm][t]{\textwidth}{%
      \begin{center}
        \xiaoer[0]\songti\textbf{\hitsz@cauthor}
      \end{center}
    }
  \begin{center}
    \setlength{\hitsz@title@width}{4em}
    \heiti\xiaosi
    \ifhitsz@shenzhen%
      \begin{tabular}{rl}%
    \else%
      \begin{tabular}{rc}%
    \fi%
        {\hitsz@put@title{%
          \ifhitsz@harbin%
            \hitsz@bachelor@caffiltitle%
          \else%
            \ifhitsz@shenzhen%
              \hitsz@bachelor@caffiltitlesz%
            \else%
              \ifhitsz@weihai%
                \hitsz@bachelor@caffiltitlewh%
              \fi%
            \fi%
          \fi%
        }\hitsz@title@csep} & \hitsz@caffil\\[14pt]
{\hitsz@put@title{\hitsz@bachelor@cstudentidtitle}\hitsz@title@csep} & \hitsz@cstudentid
    \end{tabular}
    \ifhitsz@shenzhen%
      \begin{tabular}{rl}%
    \else%
      \begin{tabular}{rc}%
    \fi%
{\hitsz@put@title{\hitsz@bachelor@cmajortitle}\hitsz@title@csep} & \hitsz@csubject\\[14pt]
{\hitsz@put@title{\hitsz@bachelor@csupervisortitle}\hitsz@title@csep} &  \hitsz@csupervisor
      \end{tabular}
    \end{center}
    \vspace{2.6cm}
    {\xiaosi[0]\songti\textbf{\hitsz@cdate}}
  \end{center}
}
\newdimen\infowidth
\infowidth = 7cm
\newcommand{\hitsz@second@titlepage@bachelor}{
  \vspace*{0.8cm}
  \ifhitsz@harbin%
  \centering{\includegraphics[width=6.2cm]{hitlogo}}
  \else%
  \ifhitsz@shenzhen%
  \centering{\includegraphics[width=6.2cm]{hitlogo}~~\raisebox{0.2em}{%
    \kaishu\yihao\hitsz@shenzhencampus}}
  \else%
  \ifhitsz@weihai%
  \centering{\includegraphics[width=6.2cm]{hitlogo}~~\raisebox{0.2em}{%
    \kaishu\yihao\hitsz@weihaicampus}}
  \fi%
  \fi%
  \fi%
  \vspace{1.3cm}
  \begin{center}
    \centering\includegraphics[width=10.5cm]{bthesistitle}
    \vfill
    \parbox[t][14.2cm][b]{\textwidth}
    {\heiti\xiaosan
      \begin{center} \renewcommand{\arraystretch}{2.5} \heiti
        \setlength{\hitsz@title@width}{5.5em}
        \ifhitsz@infoleft
          \begin{tabular}{l@{\ \  }l}
            {\xiaoer  \hitsz@put@title{\hitsz@bachelor@cthesistitle}} &
             \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaoer \hitsz@ctitleone}}\\
              &  \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaoer \hitsz@ctitletwo}}\\
              & \\
            {\hitsz@put@title{\hitsz@bachelor@cmajortitle}} &
              \underline{\makebox[\infowidth][l]{\hspace*{1em}\hitsz@csubject}}\\
            {\hitsz@put@title{\hitsz@bachelor@cstudentidtitle}} &
              \underline{\makebox[\infowidth][l]{\hspace*{1em}\hitsz@cstudentid}}\\
            {\hitsz@put@title{\hitsz@bachelor@cstudenttitle}}  &
              \underline{\makebox[\infowidth][l]{\hspace*{1em}\hitsz@cauthor}}\\
            {\hitsz@put@title{\hitsz@bachelor@csupervisortitle}} &
              \underline{\makebox[\infowidth][l]{\hspace*{1em}\hitsz@csupervisor}}\\
            {\hitsz@put@title{\hitsz@cdatetitle}} &
              \underline{\makebox[\infowidth][l]{\hspace*{1em}\CJK@todaysmall}}
          \end{tabular}
        \else
          \begin{tabular}{l@{\ \  }c}
            {\xiaoer  \hitsz@put@title{\hitsz@bachelor@cthesistitle}} &
              \underline{\makebox[\infowidth]{\xiaoer \hitsz@ctitleone}}\\
                &  \underline{\makebox[\infowidth]{\xiaoer \hitsz@ctitletwo}}\\
                & \\
            {\hitsz@put@title{\hitsz@bachelor@cmajortitle}} &
              \underline{\makebox[\infowidth]{\hitsz@csubject}}\\
            {\hitsz@put@title{\hitsz@bachelor@cstudentidtitle}} &
              \underline{\makebox[\infowidth]{\hitsz@cstudentid}}\\
            {\hitsz@put@title{\hitsz@bachelor@cstudenttitle}} &
              \underline{\makebox[\infowidth]{\hitsz@cauthor}}\\
            {\hitsz@put@title{\hitsz@bachelor@csupervisortitle}} &
              \underline{\makebox[\infowidth]{\hitsz@csupervisor}}\\
            {\hitsz@put@title{\hitsz@cdatetitle}} &
              \underline{\makebox[\infowidth]{\CJK@todaysmall}}
          \end{tabular}
        \fi
      \renewcommand{\arraystretch}{1}
      \end{center}
    }
  \end{center}
}

\newlength{\hitsz@etitlelength}%
\newcommand{\hitsz@first@titlepage@other}{
  % 封面一
\ifthenelse%
{\equal{\hitsz@fontset}{siyuan}}%
{\xiaosi[1]\vspace*{0.65em}}%
{\xiaosi[1]\textcolor[rgb]{1,1,1}{\songti{\hitsz@dummyrow}}}%
 \vspace*{1.2cm}
\begin{center}
  \begin{center}\xiaoyi[1]\songti\textbf{\hitsz@cxuewei\hitsz@cthesisname}\end{center}
    \ifhitsz@fulltime\vspace{1.4cm}\else%
      \begin{center}
        \xiaoyi[1]\songti
        \textbf{\hitsz@cbraceleft\hitsz@cstudenttype\hitsz@cbraceright}
      \end{center}
    \fi%
    \parbox[t][7.8cm][t]{\textwidth}{%
  \begin{center}\erhao\heiti\hitsz@ctitlecover\end{center}
  \ifhitsz@subtitle%
    \begin{center}
      \hspace{-4em}\xiaoer\heiti\pozhehao\hitsz@csubtitle
    \end{center}
  \fi
  \begin{center}%
    \settowidth{\hitsz@etitlelength}{%
      \erhao\hitsz@etitle\ifhitsz@subtitle\hitsz@title@esep\hitsz@esubtitle\fi}%
    \ifdim\hitsz@etitlelength>450mm\xiaoer\else\erhao\fi%
    \textbf{\MakeUppercase{\hitsz@etitle}%
    \ifhitsz@subtitle%
      \hitsz@title@esep\MakeUppercase{\hitsz@esubtitle}
    \fi}\end{center}}

    \parbox[t][7.4cm][t]{\textwidth}{
  \begin{center}\xiaoer\songti\textbf{\hitsz@cauthor}\end{center}}
    \parbox[t][1.4cm][t]{\textwidth}{
  \begin{center}\kaishu\xiaoer\textbf{\hitsz@cschoolname}\end{center}}
    {\songti\xiaoer\textbf{\hitsz@cdate}}
\end{center}
}

\newcommand{\hitsz@second@titlepage@other}{
  \begin{center}
    {\songti \xiaosi
      \begin{tabular}{@{}r@{：}l@{}}
\hitsz@natclassifiedindextitle & \hitsz@natclassifiedindex\\
\hitsz@internatclassifiedindextitle & \hitsz@intclassifiedindex
    \end{tabular}}\hfill
    {\songti \xiaosi
      \begin{tabular}{@{}r@{：}l@{}}
\hitsz@schoolidtitle & \hitsz@schoolid\\
\hitsz@secretlevel & \hitsz@statesecrets
    \end{tabular}}
  \parbox[t][3.2cm][t]{\textwidth}{\begin{center} \end{center} }
    \parbox[t][2.4cm][t]{\textwidth}{\xiaoer[1]
  \begin{center}\songti\bfseries\hitsz@cdegree\hitsz@cthesisname\end{center}
      \ifhitsz@fulltime\relax
      \else%
        \begin{center}
          \songti\textbf{\hitsz@cbraceleft\hitsz@cstudenttype\hitsz@cbraceright}
        \end{center}
      \fi}
\parbox[t][5cm][t]{\textwidth}{\erhao
  \begin{center}\heiti\hitsz@ctitlecover\end{center}
  \ifhitsz@subtitle%
    \begin{center}
      \hspace{-4em}\xiaoer\heiti\pozhehao\hitsz@csubtitle
    \end{center}
  \fi}
    \parbox[t][9.8cm][b]{\textwidth}
    {\sihao
      \setlength{\hitsz@title@width}{6em}
      \begin{center} \renewcommand{\arraystretch}{1.62} \songti
\begin{tabular}{l@{\hitsz@title@csep}l}
  {\heiti \hitsz@put@title{\hitsz@cauthortitle}} & \hitsz@cauthor\\
  {\heiti \hitsz@put@title{\hitsz@csupervisortitle}} & \hitsz@csupervisor\\
        \ifx\hitsz@cassosupervisor\@empty\else%
  {\heiti \hitsz@put@title{\hitsz@cassosupervisortitle}}& \hitsz@cassosupervisor\\
        \fi
        \ifx\hitsz@ccosupervisor\@empty\else%
  {\heiti \hitsz@put@title{\hitsz@ccosupervisortitle}} & \hitsz@ccosupervisor\\
        \fi
  {\heiti \hitsz@put@title{\hitsz@cdegreetitle}} & \hitsz@cdegree\\
  {\heiti \hitsz@put@title{\hitsz@csubjecttitle}} & \hitsz@csubject\\
  {\heiti \hitsz@put@title{\hitsz@caffiltitle}} & \hitsz@caffil\\
  {\heiti \hitsz@put@title{\hitsz@cdatetitle}} & \hitsz@cdate\\
  {\heiti \hitsz@put@title{\hitsz@cschoolnametitle}} & \hitsz@cschoolname
\end{tabular} \renewcommand{\arraystretch}{1}
    \end{center} }
  \end{center}
}
\newcommand{\emultiline}[2][c]{%
  \renewcommand{\arraystretch}{1}
  \begin{tabular}[#1]{@{}l@{}}#2\end{tabular}
  \renewcommand{\arraystretch}{1.3}
}
\newcommand{\hitsz@engcover}{
  {
    \xiaosi[1.667]\noindent Classified Index: \hitsz@natclassifiedindex \\[8pt]
  U.D.C:  \hitsz@intclassifiedindex }
  \vspace*{1em}
  \begin{center}
  \parbox[t][1.6cm][t]{\textwidth}{\begin{center} \end{center} }
    \parbox[t][3.5cm][t]{\textwidth}{\xiaoer[1]
  \begin{center}Dissertation for the {\hitsz@exueweier} Degree in \hitsz@exueke\end{center}
      \ifhitsz@fulltime\relax
      \else%
        \begin{center}
          \hitsz@ebraceleft\hitsz@estudenttype\hitsz@ebraceright
        \end{center}
      \fi} %与中文保持一致，删除in {\hitsz@exueke}
    \parbox[t][7cm][t]{\textwidth}{%
   \begin{center}%
    \settowidth{\hitsz@etitlelength}{%
      \erhao\hitsz@etitle\ifhitsz@subtitle\hitsz@title@esep\hitsz@esubtitle\fi}%
    \ifdim\hitsz@etitlelength>450mm\xiaoer\else\erhao\fi%
    \textbf{\MakeUppercase{\hitsz@etitle}%
\ifhitsz@subtitle\hitsz@title@esep\MakeUppercase{\hitsz@esubtitle}\fi}\end{center}}
    %★★★★若信息内容不太长，不会引起信息内容分行时，使用tabular环境，否则使用下面的tabularx环境。
    {\sihao\renewcommand{\arraystretch}{1.3}
      \begin{tabular}{@{}l@{~}l@{}}
\textbf{\hitsz@eauthortitle\hitsz@title@esep} & \hitsz@eauthor\\
\textbf{\hitsz@esupervisortitle\hitsz@title@esep} & \hitsz@esupervisor\\
      \ifx\hitsz@eassosupervisor\@empty\else%
\textbf{\hitsz@eassosupervisortitle\hitsz@title@esep} & \hitsz@eassosupervisor\\
      \fi
      \ifx\hitsz@ecosupervisor\@empty\else%
\textbf{\hitsz@ecosupervisortitle\hitsz@title@esep} & \hitsz@ecosupervisor\\
      \fi
\textbf{\hitsz@edegreetitle\hitsz@title@esep} & \hitsz@edegree\\
      \textbf{\hitsz@esubjecttitle\hitsz@title@esep} &\hitsz@esubject\\
\textbf{\hitsz@eaffiltitle\hitsz@title@esep} &\hitsz@eaffil\\
\textbf{\hitsz@edatetitle\hitsz@title@esep} & \hitsz@edate\\
\textbf{\hitsz@eschoolnametitle\hitsz@title@esep} & \hitsz@eschoolname
    \end{tabular}\renewcommand{\arraystretch}{1}}
  \end{center}
}

\def\makecover{
  \phantomsection
  \pdfbookmark[0]{\hitsz@ctitle}{ctitle}
  \xiaosi[1]%
  \begin{titlepage}
    \hitsz@first@titlepage
    \ifhitsz@library\clearpage\else\cleardoublepage\fi
    \hitsz@second@titlepage
    \ifhitsz@library\clearpage\else\cleardoublepage\fi
    \ifhitsz@bachelor
    \relax
    \else
    \phantomsection
    \pdfbookmark[0]{\hitsz@etitle}{etitle}
    \hitsz@engcover
    \ifhitsz@library\clearpage\else\cleardoublepage\fi
    \fi
  \end{titlepage}
  \normalsize
  \hitsz@makeabstract}
\newbox\hitsz@kw
\newcommand\hitsz@put@keywords[2]{%
  \begingroup
    \setbox\hitsz@kw=\hbox{#1}
    \noindent\hangindent\wd\hitsz@kw\hangafter1%
    \box\hitsz@kw#2\par
  \endgroup}

\newcommand{\hitsz@makeabstract}{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\cabstractcname}[\cabstractename]
  \pagestyle{hitsz@headings}
  \pagenumbering{Roman}
  \hitsz@cabstract
  \vskip12bp
  \hitsz@put@keywords{\heiti\hitsz@ckeywords@title}{\hitsz@ckeywords}
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\eabstractcname}[\eabstractename]
  \hitsz@eabstract
  \vskip12bp
  \hitsz@put@keywords{\textbf{Keywords:\enskip}}{\hitsz@ekeywords}}
\newenvironment{denotation}[1][2.5cm]{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\hitsz@denotation@ctitle}[\hitsz@denotation@etitle]
\setcounter{table}{0}
\renewcommand{\thetable}{\arabic{table}}%使表编号为 1 的格式
  }{\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}%使表编号为 7-1 的格式
\setcounter{table}{0}}%
\def\hitsz@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\hitsz@listof#1#2{% #1: float type
\chapter*{\csname list#1name\endcsname}[#2]\hitsz@starttoc{#1}}

\renewcommand\listoffigures{\hitsz@listof{figure}{\listfigureename}}
\renewcommand*\l@figure{\addvspace{6bp}\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\hitsz@listof{table}{\listtableename}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\hitsz@listof{equation}{\listequationename}}
\let\l@equation\l@figure
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\ifhitsz@bachelor\ifhitsz@tocfour\setcounter{tocdepth}{3}\fi\fi
\renewcommand\tableofcontents{%
\ifhitsz@openright\cleardoublepage\else\clearpage\fi
\phantomsection
\markboth{\contentsname}{ccontent}
\hitsz@chapter*{\contentsname}
\pdfbookmark[0]{\contentsname}{ccontent}
\normalsize\@starttoc{toc}}
\ifhitsz@arialtoc
  \def\hitsz@toc@font{\sffamily}
\fi
\def\@pnumwidth{4em}%规定中的提前悬挂
\def\@tocrmarg{\@pnumwidth}
\def\@dotsep{1}
\setlength\@tempdima{4em}%
\patchcmd{\@dottedtocline}{#4}{\csname hitsz@toc@font\endcsname #4}{}{}
\patchcmd{\@dottedtocline}{\hb@xt@\@pnumwidth}{\hbox}{}{}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    %\vskip 4bp \@plus\p@
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      % numberline is called here, and it uses \@tempdima
      {\ifhitsz@bachelor\rmfamily\else\csname hitsz@toc@font\endcsname\fi\heiti #1}
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak{\normalfont\normalcolor #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section{\@dottedtocline{1}{1em}{1.8em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{2em}{2.5em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{3\ccwd}{3.1em}}
\def\@dotsep{0.75}           % 定义英文目录的点间距
\setlength\leftmargini {0pt}
\setlength\leftmarginii {0pt}
\setlength\leftmarginiii {0pt}
\setlength\leftmarginiv {0pt}
\setlength\leftmarginv {0pt}
\setlength\leftmarginvi {0pt}

\def\engcontentsname{\bfseries Contents}
\newcommand\tableofengcontents{
  %控制英文目录：细点\@dottedtocline，粗点\@dottedtoclinebold
  \def\l@chapter{\@dottedtocline{0}{0em}{5em}}
  \@restonecolfalse
  \chapter*{\engcontentsname  %chapter*上移一行，避免在toc中出现。
  \pdfbookmark[0]{Contents}{econtent}
    \@mkboth{%
  \engcontentsname}{\engcontentsname}}
  \@starttoc{toe}%
  \if@restonecol\twocolumn\fi}
\def\@dotsep{0.75}           % 定义英文目录的点间距
\ctexset{%
  appendix/number=\ifhitsz@bachelor\arabic{chapter}\else\Alph{chapter}\fi,
}
\let\hitsz@appendix\appendix
\renewenvironment{appendix}{%
  \let\title\hitsz@appendix@title
  \hitsz@appendix
  \ifhitsz@bachelor\renewcommand{\thechapter}{\arabic{chapter}}\fi
  }{%
  \let\title\@gobble}
\let\title\@gobble
\newcommand{\hitsz@appendix@title}[1]{%
  \begin{center}
    \bfseries\xiaosi #1
  \end{center}}
\newlist{translationbib}{enumerate}{1}
\setlist[translationbib]{label=[\arabic*],align=left,nosep,itemsep=6bp,
  leftmargin=10mm,labelsep=!,before=\vspace{0.5\baselineskip}\wuhao[1.3]
}
\newenvironment{conclusions}{%
\ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\hitsz@conclusion@ctitle}[\hitsz@conclusion@etitle]}{}
\newenvironment{acknowledgements}{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\hitsz@acknowledgement@ctitle}[\hitsz@acknowledgement@etitle]}{}
\newenvironment{resume}{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\hitsz@resume@ctitle}[\hitsz@resume@etitle]}{}
\newenvironment{publication}{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\hitsz@publication@ctitle}[\hitsz@publication@etitle]}{}
\newenvironment{ceindex}{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\indexname}[\hitsz@index@etitle]
  \setlength{\columnsep}{4em}
  \begin{adjustwidth}{2em}{2em}
  \begin{multicols*}{2}}{\end{multicols*}
  \end{adjustwidth}
  }

\newlist{idxwordlist}{description}{3}
\setlist[idxwordlist, 1]{%
  itemsep=\baselineskip,
  labelindent=8em,
  font=\normalsize\bfseries,
}
\setlist[idxwordlist, 2]{%
  nosep,
  labelindent=2em,
  font=\wuhao\rm,
}
\setlist[idxwordlist, 3]{%
  nosep,
  labelindent=4em,
  font=\wuhao\rm,
}

\def\hitsz@authorization@other{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \hitsz@appendix@chapter*{\hitsz@authorization@ctitle}[\hitsz@authorization@etitle]
  \xiaosi[1.6]\vspace{\baselineskip}
  \begin{center}\xiaosan\heiti\hitsz@declarename\end{center}
  \par\hitsz@declaretext
  \vspace{\baselineskip}
  \par\hspace{6em}\hitsz@authorsig\hfill\hitsz@frontdate\hitsz@datefill
  \vspace{2\baselineskip}
  \begin{center}\xiaosan\heiti\hitsz@authorizationtitle\end{center}
  \par\hitsz@authorizationtext
  \vspace{2\baselineskip}
  \par\hspace{6em}\hitsz@authorsig\hfill\hitsz@frontdate\hitsz@datefill
  \vspace{2\baselineskip}
  \par\hspace{6em}\hitsz@teachersig\hfill\hitsz@frontdate\hitsz@datefill
}
\def\hitsz@authorization@bachelor@toc{%
  \ifhitsz@shenzhen%
    原创性声明
  \else%
    \hitsz@declarename@bachelor
  \fi
}
\def\hitsz@authorization@bachelor{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi
  \chapter*{\ifhitsz@harbin\relax\else\sanhao\fi\hitsz@declarename@bachelor}
  \addcontentsline{toc}{chapter}{\hitsz@authorization@bachelor@toc}
  \hitsz@authorizationtext@bachelor
\vspace{2\baselineskip}
\par\hspace{6em}\hitsz@authorsig\hfill\hitsz@frontdate\hitsz@datefill
}

\NewDocumentCommand{\authorization}{o}{%
  \IfNoValueTF{#1}{%
    \ifhitsz@bachelor\hitsz@authorization@bachelor\else\hitsz@authorization@other\fi
    }{%
    \includepdf[fitpaper=true,pagecommand={%
\thispagestyle{hitsz@empty}%
  \phantomsection
  \addcontentsline{toc}{chapter}{%
    \ifhitsz@bachelor\hitsz@declarename@bachelor
    \else\hitsz@authorization@ctitle
    \fi}%
\ifhitsz@doctor%
    \addcontentsline{toe}{chapter}{%
      \texorpdfstring{\bfseries \hitsz@authorization@etitle}{\hitsz@authorization@etitle}}%
\fi%
    }]{#1}%
  }%
}
\newcommand\bibstyle@numerical{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\newcommand\bibstyle@inline{\bibpunct{[}{]}{,}{n}{,}{\hitsz@inline@sep}}
\citestyle{numerical}
\DeclareRobustCommand\inlinecite{\@inlinecite}
\def\@inlinecite#1{\begingroup\citestyle{inline}\let\@cite\NAT@citenum\citep{#1}\endgroup}
\let\onlinecite\inlinecite
\renewenvironment{thebibliography}[1]{%
  \ifhitsz@openright\cleardoublepage\else\clearpage\fi\phantomsection%
  \hitsz@appendix@chapter*{\bibname}[\hitsz@bibname@etitle]
  \normalsize
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\renewcommand{\makelabel}[1]{##1\hfill}
    \settowidth{\labelwidth}{\@biblabel{#1}}
    \setlength{\labelsep}{0.5em}
    \setlength{\itemindent}{0pt}
    \setlength{\leftmargin}{\labelsep+\labelwidth}
    \addtolength{\itemsep}{-0.8em}
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
  \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy\frenchspacing
  \flushbottom
  \ifhitsz@splitbibitem
  \clubpenalty0
  \@clubpenalty \clubpenalty
  \widowpenalty0%
  \interlinepenalty-50%
  \else
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \interlinepenalty4000%
  \fi
\sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
\endlist\frenchspacing}
\patchcmd\NAT@citexnum{%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\NAT@cmt#2\fi
  }{}%
  \NAT@mbox{\NAT@@close}%
}{%
  \NAT@mbox{\NAT@@close}%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\textsuperscript{#2}\fi
  }{}%
}{}{}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
  \if*#2*\else#2\NAT@spacechar\fi
\unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
   \else #1\fi\endgroup}
\patchcmd{\NAT@citex}{%
  \if*#2*\else\NAT@cmt#2\fi
  \if\relax\NAT@date\relax\else\NAT@@close\fi
}{%
  \if\relax\NAT@date\relax\else\NAT@@close\fi
  \if*#2*\else\textsuperscript{#2}\fi
}{}{}
\renewcommand\NAT@cite%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\AtEndOfClass{\input{hitszthesis.cfg}}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `hitszthesis.cls'.
