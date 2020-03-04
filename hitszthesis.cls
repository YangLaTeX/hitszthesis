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
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{hitszthesis}
[2020/03/05 v2.2 A Bachelor Thesis Template for Harbin Institute of Technology, ShenZhen
 (HITSZ)]
\RequirePackage{ifxetex}
\ifxetex\else
  \ClassError{hitszthesis}{Please use XeLaTeX to compile the file}{}
  \end{document}
\fi
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\SetupKeyvalOptions{family=hitsz, prefix=hitsz@, setkeys=\kvsetkeys}
\newcommand{\ykv}[1]{\kvsetkeys{hitsz}{#1}}
\DeclareStringOption[infocenter]{infoalign}
\DeclareVoidOption{infocenter}{\ykv{infoalign = infocenter}}
\DeclareVoidOption{infoleft}{\ykv{infoalign = infoleft}}
\DeclareStringOption[onerow]{covertitle}
\DeclareVoidOption{onerow}{\ykv{covertitle = onerow}}
\DeclareVoidOption{tworow}{\ykv{covertitle = tworow}}
\DeclareStringOption[newtxmath]{mathfont}
\DeclareVoidOption{newtxmath}{\ykv{mathfont = newtxmath}}
\DeclareVoidOption{mtpro2}{\ykv{mathfont = mtpro2}}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessKeyvalOptions*\relax
\LoadClass[12pt,a4paper,openany,oneside]{book}
\RequirePackage{etex}
\RequirePackage[UTF8,scheme=chinese,zihao=-4,heading=true]{ctex}
\ctexset{%
  space = auto,
  chapter={
    afterindent=true,
    number=\arabic{chapter},
    beforeskip={28.34658bp},%一个空行 1.57481 × 18
    afterskip={24.74658bp},%0.8应该不计算间距 0.8 × 18 + 0.57481×18
    aftername=\enspace,
    format={\centering\heiti\xiaoer[1.57481]},%\center 会影响之后全局
    nameformat=\relax,
    numberformat=\relax,
    fixskip=true, % 添加这一行去除默认间距
    %hang=true,
  },
  section={
    afterindent=true,
    beforeskip={12bp},%上下空0.5行
    afterskip={13.5bp},
    format={\heiti\fontsize{15bp}{21bp}\selectfont},
    aftername=\enspace,
    fixskip=true,
    break={},
  },
  subsection={
    afterindent=true,
    beforeskip={10bp},
    afterskip={11bp},
    format={\heiti\fontsize{14bp}{18bp}\selectfont},
    aftername=\enspace,
    fixskip=true,
    break={},
  },
  subsubsection={
    afterindent=true,
    beforeskip={9bp},
    afterskip={9bp},
    format={\heiti\normalsize},
    aftername=\enspace,
    fixskip=true,
    break={},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true
}
\RequirePackage{amsmath}
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext}
\ifdefstring{\hitsz@mathfont}{mtpro2}{
\RequirePackage[mtphrb,mtpcal,zswash,uprightGreek]{mtpro2}
}{\relax}
\ifdefstring{\hitsz@mathfont}{newtxmath}{
\RequirePackage{newtxmath}
\let\openbox\relax
}{\relax}
\renewcommand{\rmdefault}{ptm}
\RequirePackage[scaled=0.92]{helvet}
\RequirePackage{type1cm}
\RequirePackage{lipsum}
\setCJKfamilyfont{kai}[AutoFakeBold]{simkai.ttf}
\newcommand*{\kai}{\CJKfamily{kai}}
\setCJKfamilyfont{song}[AutoFakeBold]{SimSun}
\newcommand*{\song}{\CJKfamily{song}}
\linespread{1.3}
\RequirePackage{multicol}
\RequirePackage{fancyvrb}
\RequirePackage{titletoc}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{bigstrut}
\RequirePackage{bigdelim}
\RequirePackage{cprotect}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{hyperref}
\RequirePackage{indentfirst}
\setlength\parindent{2em}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{ulem}
\RequirePackage{calc}
\RequirePackage{tikz}
\RequirePackage{bm}
\RequirePackage{subeqnarray}
\RequirePackage{siunitx}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage{listings}
\renewcommand{\ttdefault}{cmtt}
\lstdefinestyle{ystyle}{
  basicstyle=%
    \ttfamily
    \lst@ifdisplaystyle\small\fi
}
\lstset{basicstyle = \ttfamily, style = ystyle, breaklines = true}
\definecolor{lightgrey}{rgb}{0.9,0.9,0.9}
\definecolor{frenchplum}{RGB}{190,20,83}
\definecolor{winered}{rgb}{0.5,0,0}
\lstset{language = [LaTeX]TeX,
  texcsstyle = *\color{winered},
  numbers = none,
  mathescape,
  breaklines = true,
  keywordstyle = \color{winered},
  commentstyle = \color{gray},
  emph = {hitszpaper,fontenc,fontspec,xeCJK,FiraMono,xunicode,newtxmath,
   figure,fig,image,img,table,itemize,enumerate,newtxtext,newtxtt,
   ctex, microtype,description,times,newtx,booktabs,tabular,
   PDFLaTeX,XeLaTeX,type1cm,BibTeX,device,color,mode,lang,
   amsthm,tcolorbox,titlestyle,cite,marginnote,ctex,listings,base,
   subnumcases},
  emphstyle = {\color{frenchplum}},
  morekeywords = {DeclareSymbolFont,SetSymbolFont,toprule,midrule,bottomrule,
   institute,version,includegraphics,setmainfont,setsansfont,
   setmonofont,setCJKmainfont,setCJKsansfont,setCJKmonofont,
   RequirePackage,figref, tabref,email,maketitle,keywords,definecolor,
   extrainfo,logo,cover,subtitle,appendix,chapter,hypersetup,
   mainmatter,frontmatter,tableofcontents, hitszpar,heiti,kaishu,lstset,
   pagecolor,zhnumber,marginpar,part, equote,marginnote},
  frame = single,
  tabsize = 2,
  rulecolor = \color{black},
  framerule = 0.2pt,
  columns = flexible,
  % backgroundcolor = \color{lightgrey}
}
\newcommand\hitsz@tokens@thesistitle{}
\newcommand\hitsz@tokens@keywords{}
\newcommand\hitsz@tokens@keywordsen{}
\newcommand*\hitsz@tokens@papercategory{}
\newcommand*\hitsz@tokens@schoolname{}
\newcommand*\hitsz@tokens@departname{}
\newcommand*\hitsz@tokens@dateinput{}
\newcommand*\hitsz@tokens@authorname{}
\newcommand*\hitsz@tokens@studentID{}
\newcommand*\hitsz@tokens@majorin{}
\newcommand*\hitsz@tokens@instructor{}
\newcommand*\hitsz@tokens@titleone{}
\newcommand*\hitsz@tokens@titletwo{}
\newcommand*\thesistitle[1]{%
\renewcommand{\hitsz@tokens@thesistitle}{#1}}
\newcommand*\papercategory[1]{%
\renewcommand{\hitsz@tokens@papercategory}{#1}} 
\newcommand*\schoolname[1]{%
\renewcommand{\hitsz@tokens@schoolname}{#1}}
\newcommand*\departname[1]{%
\renewcommand{\hitsz@tokens@departname}{#1}}
\newcommand*\dateinput[1]{%
\renewcommand{\hitsz@tokens@dateinput}{#1}}
\newcommand*\authorname[1]{%
\renewcommand{\hitsz@tokens@authorname}{#1}}
\newcommand*\studentID[1]{%
\renewcommand{\hitsz@tokens@studentID}{#1}}
\newcommand*\majorin[1]{%
\renewcommand{\hitsz@tokens@majorin}{#1}}
\newcommand*\instructor[1]{%
\renewcommand{\hitsz@tokens@instructor}{#1}}
\newcommand*\titleone[1]{%
\renewcommand{\hitsz@tokens@titleone}{#1}}
\newcommand*\titletwo[1]{%
\renewcommand{\hitsz@tokens@titletwo}{#1}}
\renewcommand\listfigurename{插图目录}
\renewcommand\listtablename{附表目录}
\renewcommand\abstractname{摘\quad 要}
\newcommand{\keywordsname}{关键词}
\newcommand{\keywordsenname}{Keywords}
\renewcommand{\contentsname}{目\quad 录}
\renewcommand{\indexname}{索\quad 引}
\newcommand{\notename}{笔记}
\renewcommand*{\proofname}{证明}
\newcommand{\problemname}{问题}
\newcommand{\definitionname}{定义}
\newcommand{\theoremname}{定理}
\newcommand{\axiomname}{公理}
\newcommand{\postulatename}{公设}
\newcommand{\lemmaname}{引理}
\newcommand{\propositionname}{命题}
\newcommand{\corollaryname}{推论}
\newcommand{\examplename}{例}
\newcommand{\exercisename}{练习}
\newcommand{\remarkname}{注}
\newcommand{\assumptionname}{假设}
\newcommand{\conclusionname}{结论}
\newcommand{\solutionname}{解}
\newcommand{\propertyname}{性质}
\def\hitsz@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
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
\graphicspath{{./figure/}{./figures/}{./image/}{./images/}
{./graphics/}{./graphic/}{./pictures/}{./picture/}{./front/}}
\RequirePackage{geometry}
\geometry{
a4paper,
left=30mm,
right=30mm,
top=41mm,
bottom=30mm,
headheight = 2.17cm,
headsep = 1mm,
footskip = 0cm,
}
\RequirePackage{hyperref}
\hypersetup{
breaklinks,
unicode,
linktoc=all,
bookmarksnumbered=true,
bookmarksopen=true,
pdfsubject={哈尔滨工业大学（深圳）本科毕业设计（论文）},
pdftitle = {哈尔滨工业大学（深圳）本科毕业设计（论文）},
pdfauthor = {杨敬轩},
pdfkeywords={HITSZThesis, Dissertation},
pdfcreator={XeLaTeX with hitszthesis class},
colorlinks,
linkcolor=black,
citecolor=black,
plainpages=false,
pdfstartview=FitH,
pdfborder={0 0 0},
}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{apptools}
\setcounter{secnumdepth}{3}
\RequirePackage[font=small,labelsep=quad]{caption}
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=10pt}
\newcommand\figref[1]{图\ref{#1}}
\newcommand\tabref[1]{表\ref{#1}}
\newcommand\equref[1]{式(\ref{#1})}
\setlist{nolistsep}
\RequirePackage{amsthm}
\let\proof\relax
\let\endproof\relax
\newtheoremstyle{ydefstyle}{3pt}{3pt}{\itshape}{}{\bfseries}{}{%
0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{（#3）}}
\newtheoremstyle{ythmstyle}{3pt}{3pt}{\itshape}{}{\bfseries}{}{%
0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{（#3）}}
\newtheoremstyle{yprostyle}{3pt}{3pt}{\itshape}{}{\bfseries}{}{%
0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{（#3）}}
\theoremstyle{ydefstyle}
\newtheorem{ydefinition}{\definitionname }[chapter]
\theoremstyle{ythmstyle}
\newtheorem{ytheorem}{\theoremname }[chapter]
\newtheorem{ylemma}{\lemmaname }[chapter]
\newtheorem{ycorollary}{\corollaryname }[chapter]
\newtheorem{ypostulate}{\postulatename }[chapter]
\newtheorem{yaxiom}{\axiomname }[chapter]
\theoremstyle{yprostyle}
\newtheorem{yproposition}{\propositionname }[chapter]
\newenvironment{theorem}[2]
  {\ifstrempty{#1}{\ytheorem}{\ytheorem[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endytheorem}
\newenvironment{definition}[2]
  {\ifstrempty{#1}{\ydefinition}{\ydefinition[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endydefinition}
\newenvironment{lemma}[2]
  {\ifstrempty{#1}{\ylemma}{\ylemma[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endylemma}
\newenvironment{corollary}[2]
  {\ifstrempty{#1}{\ycorollary}{\ycorollary[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endycorollary}
\newenvironment{postulate}[2]
  {\ifstrempty{#1}{\ypostulate}{\ypostulate[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endypostulate}
\newenvironment{axiom}[2]
  {\ifstrempty{#1}{\yaxiom}{\yaxiom[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endyaxiom}
\newenvironment{proposition}[2]
  {\ifstrempty{#1}{\yproposition}{\yproposition[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endyproposition}
\newenvironment{note}{
  \par\noindent\textbf{\notename\,}
    \itshape}{\par}
\newenvironment{proof}{
  \par\noindent\textbf{\proofname\;}
}{\hfill$\Box$\quad\par}
\newenvironment{solution}{\medskip\par\noindent\textbf{\solutionname} \itshape}{\par}
\newenvironment{remark}{\noindent\textbf{\remarkname}}{\par}
\newenvironment{assumption}{\par\noindent\textbf{\assumptionname}}{\par}
\newenvironment{conclusion}{\par\noindent\textbf{\conclusionname}}{\par}
\newenvironment{property}{\par\noindent\textbf{\propertyname}}{\par}
\renewcommand{\maketitle}{\par
\begingroup
 \newgeometry{left=20mm,right=20mm,top=30mm,bottom=35mm}
      \newpage
      % 禁止图片位于页面最上方
      \global\@topnum\z@
      \@maketitle % 下面再设置封面具体内容
    \endgroup
  % 先取消原来封面样式的所有设置，以便后面重写此命令
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\newdimen\infowidth
\infowidth = 6.5cm
\def\@maketitle{%
  \newpage
 % 开始写封面
  \thispagestyle{empty}
  \vspace*{2cm}
 %%------------------------
  \begin{center}
  \ifdefstring{\hitsz@covertitle}{tworow}{
    \parbox[t][1.4cm][t]{\textwidth}{
   \begin{center}\erhao[0]\bfseries\hitsz@tokens@titleone\end{center}
}\par
\parbox[t][2.5cm][t]{\textwidth}{
   \begin{center}\erhao[0]\bfseries\hitsz@tokens@titletwo\end{center}
}\par 
  }{\relax}
  \ifdefstring{\hitsz@covertitle}{onerow}{
    \parbox[t][3.4cm][t]{\textwidth}{
   \begin{center}\erhao[0]\bfseries\hitsz@tokens@thesistitle\end{center}
}
  }{\relax}
    \parbox[t][8.7cm][t]{\textwidth}{
    \begin{center}\xiaoer[0]\song\textbf{\ziju{0.2}\hitsz@tokens@authorname}\end{center}
  }
  \begin{center}
    \bfseries
      \begin{tabular}{rl}
{\xiaosi 学\hphantom{教师}院：} & \xiaosi\hitsz@tokens@departname\\[14pt]
{\xiaosi 学\hphantom{教师}号：} & \xiaosi\hitsz@tokens@studentID
    \end{tabular}
    \hspace{0.5cm}
      \begin{tabular}{rl}
{\xiaosi 专\hphantom{教师}业：} & \xiaosi\hitsz@tokens@majorin\\[14pt]
{\xiaosi 指导教师：} &  \xiaosi\hitsz@tokens@instructor
      \end{tabular}
    \end{center}
    % 日期
    \vspace{2.6cm}
    {\xiaosi[0]\song\textbf{2020年6月}}
  \end{center}
  %%----------------------------
%% 第二页
\clearpage
\thispagestyle{empty}
  \vspace*{0.8cm}
  \centering\includegraphics[width=8cm]{HITSZname}
  \vspace{1.3cm}
  \begin{center}
    \centering\includegraphics[width=10.5cm]{thesistitle}
    \vfill
    \parbox[t][14.2cm][b]{\textwidth}
    {\heiti\xiaosan
      \begin{center} \renewcommand{\arraystretch}{2.6} \bfseries
      % 居中对齐
      \ifdefstring{\hitsz@infoalign}{infocenter}{
\begin{tabular}{l@{\ \  }c}
  {\xiaoer  题\hphantom{\ 导\ \ \ }目} &
   \underline{\makebox[\infowidth]{%
    \xiaoer \hitsz@tokens@titleone}}\\
     &  \underline{\makebox[\infowidth]{%
      \xiaoer \hitsz@tokens@titletwo}}\\
    & \\
  {\xiaosan 专\hphantom{\ 导\ 教\ }业}  &
   \underline{\makebox[\infowidth]{%
    \xiaosan\hitsz@tokens@majorin}}\\
  {\xiaosan 学\hphantom{\ 导\ 教\ }号}   &
   \underline{\makebox[\infowidth]{%
    \xiaosan\hitsz@tokens@studentID}}\\
  {\xiaosan 学\hphantom{\ 导\ 教\ }生}  &
   \underline{\makebox[\infowidth]{%
    \xiaosan\hitsz@tokens@authorname}}\\
  {\xiaosan 指\ 导\ 教\ 师} & \underline{\makebox[\infowidth]{%
   \xiaosan\hitsz@tokens@instructor}}\\
  {\xiaosan 答\ 辩\ 日\ 期} & \underline{\makebox[\infowidth]{%
   \xiaosan\hitsz@tokens@dateinput}}
\end{tabular} \renewcommand{\arraystretch}{1}
}{\relax}
\ifdefstring{\hitsz@infoalign}{infoleft}{
\begin{tabular}{l@{\ \  }c} 
  {\xiaoer  题\hphantom{\ 导\ \ \ }目} &
   \underline{\makebox[\infowidth][l]{%
   \hspace*{1em}\xiaoer \hitsz@tokens@titleone}}\\
     &  \underline{\makebox[\infowidth][l]{%
     \hspace*{1em}\xiaoer \hitsz@tokens@titletwo}}\\
    & \\
  {\xiaosan 专\hphantom{\ 导\ 教\ }业}  &
   \underline{\makebox[\infowidth][l]{%
    \hspace*{1em}\xiaosan\hitsz@tokens@majorin}}\\
  {\xiaosan 学\hphantom{\ 导\ 教\ }号}   &
   \underline{\makebox[\infowidth][l]{%
    \hspace*{1em}\xiaosan\hitsz@tokens@studentID}}\\
  {\xiaosan 学\hphantom{\ 导\ 教\ }生}  &
   \underline{\makebox[\infowidth][l]{%
   \hspace*{1em}\xiaosan\hitsz@tokens@authorname}}\\
  {\xiaosan 指\ 导\ 教\ 师} & \underline{\makebox[\infowidth][l]{%
   \hspace*{1em}\xiaosan\hitsz@tokens@instructor}}\\
  {\xiaosan 答\ 辩\ 日\ 期} & \underline{\makebox[\infowidth][l]{%
   \hspace*{1em}\xiaosan\hitsz@tokens@dateinput}}
\end{tabular} \renewcommand{\arraystretch}{1}
}{\relax}
      \end{center}
    }
  \end{center}
  \restoregeometry
 \clearpage
}
\renewcommand{\frontmatter}{%
\cleardoublepage
\@mainmatterfalse
\pagenumbering{Roman}
}
%% 中文摘要环境
\newenvironment{abstract}{\chapter*{\abstractname}
\addcontentsline{toc}{chapter}{\abstractname}
}{\if@twocolumn\else\null\fi}
\newcommand\keywords[1]{%
\renewcommand{\hitsz@tokens@keywords}{#1} 
{\vskip18pt
\hspace{-30bp}\begin{tabular}{lp{132mm}}
{\zihao{-4}\heiti\keywordsname：}&
{\xiaosi\hitsz@tokens@keywords}
\end{tabular}}
}
\newenvironment{abstracten}{\chapter*{\bfseries Abstract}
\addcontentsline{toc}{chapter}{ABSTRACT}
}{\if@twocolumn\else\null\fi} 
\newcommand\keywordsen[1]{%
\renewcommand{\hitsz@tokens@keywordsen}{#1}
{\vskip 18pt
\hspace{-30bp}\begin{tabular}{lp{127mm}}
{\zihao{-4}\bf\keywordsenname:}&
{\xiaosi\hitsz@tokens@keywordsen}
\end{tabular}}
}
\newcommand{\declaration}{\par
\begingroup
      \hitsz@declaration
    \endgroup
}
\def\hitsztitle{\hitsz@tokens@thesistitle}
\def\hitszauthor{\hitsz@tokens@authorname}
\def\hitsz@declaration{
\chapter*{\sanhao 哈尔滨工业大学（深圳）本科毕业设计（论文）原创性声明}
\addcontentsline{toc}{chapter}{原创性声明}\par
本人郑重声明：在哈尔滨工业大学（深圳）攻读学士学位期间，所提交的毕业设计（论文）《\hitsztitle》，是本人在导师指导下独立进行研究工作所取得的成果。对本文的研究工作做出重要贡献的个人和集体，均已在文中以明确方式注明，其它未注明部分不包含他人已发表或撰写过的研究成果，不存在购买、由他人代写、剽窃和伪造数据等作假行为。
\par
本人愿为此声明承担法律责任。\par
\vspace{30pt}
\hspace{6em}作者签名：\hspace{8em}日期：\hspace{3em}年\hspace{1.5em}月\hspace{1.5em}日
}
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \addtolength{\itemsep}{-1.5ex}
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{}
\chead{\wuhao 哈尔滨工业大学（深圳）本科毕业设计（论文）}
\rhead{}
\lfoot{}
\cfoot{\wuhao -\thepage-}
\rfoot{}
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[1mm]{\headwidth}{0.4mm}}%
\rule[0.35\baselineskip]{\headwidth}{0.8mm}}
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi%
\makeheadrule}}
\titlecontents{chapter}[0pt]{\vspace{1mm}\heiti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[4pt]{.}\contentspage}
\titlecontents{section}[25pt]{\songti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[4pt]{.}\contentspage}
\titlecontents{subsection}[47pt]{\songti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[4pt]{.}\contentspage}
\g@addto@macro\appendix{\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}}
\BeforeBeginEnvironment{tabular}{\wuhao}
\AfterEndEnvironment{table}{\vspace{-1cm}}
\newcounter{rowno}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}
\renewcommand{\theequation}{\thechapter-\arabic{equation}}
\usetikzlibrary{shapes.geometric, arrows}
\tikzstyle{startstop} = [rectangle, rounded corners, minimum width = 2cm,
minimum height=1cm,text centered, draw = black]
\tikzstyle{io} = [trapezium, trapezium left angle=70, trapezium right angle=110,
minimum width=2cm, minimum height=1cm, text centered, draw=black]
\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm,
text centered, draw=black]
\tikzstyle{decision} = [diamond, aspect = 3, text centered, draw=black]
\tikzstyle{arrow} = [->,>=stealth]
\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\makeatletter
\renewcommand\chapter{
\if@openright\cleardoublepage
\else\clearpage
\fi
     \thispagestyle{fancy}
     \global\@topnum\z@
     \@afterindentfalse
     \secdef\@chapter\@schapter
}
\makeatother
\newcommand\dif{\text{d}}
\newcommand\no{\noindent}
\newcommand\dis{\displaystyle}
\newcommand\ls{\leqslant}
\newcommand\gs{\geqslant}
\newcommand\limit{\dis\lim\limits}
\newcommand\limn{\dis\lim\limits_{n\to\infty}}
\newcommand\limxz{\dis\lim\limits_{x\to0}}
\newcommand\limxi{\dis\lim\limits_{x\to\infty}}
\newcommand\limxpi{\dis\lim\limits_{x\to+\infty}}
\newcommand\limxni{\dis\lim\limits_{x\to-\infty}}
\newcommand\limtpi{\dis\lim\limits_{t\to+\infty}}
\newcommand\limtni{\dis\lim\limits_{t\to-\infty}}
\newcommand\sumn{\dis\sum\limits_{n=1}^{\infty}}
\newcommand\sumnz{\dis\sum\limits_{n=0}^{\infty}}
\newcommand\sumi{\dis\sum\limits_{i=1}^{\infty}}
\newcommand\sumiz{\dis\sum\limits_{i=0}^{\infty}}
\newcommand\sumin{\dis\sum\limits_{i=1}^{n}}
\newcommand\sumizn{\dis\sum\limits_{i=0}^{n}}
\newcommand\sumk{\dis\sum\limits_{k=1}^{\infty}}
\newcommand\sumkz{\dis\sum\limits_{k=0}^{\infty}}
\newcommand\sumkn{\dis\sum\limits_{k=0}^n}
\newcommand\sumkfn{\dis\sum\limits_{k=1}^n}
\newcommand\pzx{\dis\frac{\partial z}{\partial x}}
\newcommand\pzy{\dis\frac{\partial z}{\partial y}}
\newcommand\pfx{\dis\frac{\partial f}{\partial x}}
\newcommand\pfy{\dis\frac{\partial f}{\partial y}}
\newcommand\pzxx{\dis\frac{\partial^2 z}{\partial x^2}}
\newcommand\pzxy{\dis\frac{\partial^2 z}{\partial x\partial y}}
\newcommand\pzyx{\dis\frac{\partial^2 z}{\partial y\partial x}}
\newcommand\pzyy{\dis\frac{\partial^2 z}{\partial y^2}}
\newcommand\pfxx{\dis\frac{\partial^2 f}{\partial x^2}}
\newcommand\pfxy{\dis\frac{\partial^2 f}{\partial x\partial y}}
\newcommand\pfyx{\dis\frac{\partial^2 f}{\partial y\partial x}}
\newcommand\pfyy{\dis\frac{\partial^2 f}{\partial y^2}}
\newcommand\intzi{\dis\int_{0}^{+\infty}}
\newcommand\intd{\dis\int}
\newcommand\intab{\dis\int_a^b}
\newcommand{\degree}{^\circ}
\newcommand\ma{\mathcal{A}}
\newcommand\mb{\mathcal{B}}
\newcommand\mc{\mathcal{C}}
\newcommand\me{\mathcal{E}}
\newcommand\mg{\mathcal{g}}
\newcommand\mcc{\mathbb{C}}
\newcommand\mrr{\mathbb{R}}
\newcommand\mzz{\mathbb{Z}}
\newcommand\vx{\bf{x}}
\newcommand\vX{\bf{X}}
\newcommand\vy{\bf{y}}
\newcommand\vY{\bf{Y}}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\arccot}{arccot}
\DeclareMathOperator{\arccosh}{arccosh}
\DeclareMathOperator{\arcsinh}{arcsinh}
\DeclareMathOperator{\arctanh}{arctanh}
\DeclareMathOperator{\arccoth}{arccoth}
\DeclareMathOperator{\grad}{\bf{grad}}
\DeclareMathOperator{\argmax}{argmax}
\DeclareMathOperator{\argmin}{argmin}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\csign}{csign}
\newcommand{\spine}{%
\begingroup
       \hitsz@spine
    \endgroup
}
\def\hitsz@spine{%
  \newpage\thispagestyle{empty}%
  \heiti\addCJKfontfeatures*{RawFeature={vertical:}}
  \xiaosan\ziju{0.4}%
  \noindent\hfill\rotatebox[origin=lt]{-90}{%
   \makebox[\textheight]{本科毕业设计（论文）\hfill  \hitsztitle \hfill \hitszauthor}
  }
}
\pdfstringdefDisableCommands{%
  \def\quad{}%
  \def\hskip#1{}%
}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `hitszthesis.cls'.
