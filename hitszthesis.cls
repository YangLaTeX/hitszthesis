%%==============================================
%% start of file `HITSZThesis.cls'.
%% Copyright 2019-2020 YangLaTeX (yanglatex2e@gmail.com)
%%
%% This work is available at GitHub:
%% https://github.com/YangLaTeX/YangThesis
%% 
%% This material is subject to the LATEX Project Public License 1.3c
%% (https://ctan.org/license/lppl1.3) or any later version
%%==============================================

% 开始写类文件
% 设置需要的LaTeX版本
\NeedsTeXFormat{LaTeX2e}

% 定义提供的类文件名称以及说明文字
\ProvidesClass{hitszthesis}[2020/02/15 v1.2 HITSZThesis document class]

% 键值对设置
\RequirePackage{kvoptions}

% 对宏包、环境、命令进行操作
\RequirePackage{etoolbox}

% 设置关键词
\SetupKeyvalOptions{family=Yang, prefix=Yang@, setkeys=\kvsetkeys}

% 定义设置关键词命令
\newcommand{\ykv}[1]{\kvsetkeys{Yang}{#1}}

% 表格信息对齐
\DeclareStringOption[infocenter]{infoalign}
\DeclareVoidOption{infocenter}{\ykv{infoalign = infocenter}}
\DeclareVoidOption{infoleft}{\ykv{infoalign = infoleft}}

% 封面标题行数
\DeclareStringOption[onerow]{covertitle}
\DeclareVoidOption{onerow}{\ykv{covertitle = onerow}}
\DeclareVoidOption{tworow}{\ykv{covertitle = tworow}}

% 默认选项
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{book}}

% 禁用键值对操作
\ProcessKeyvalOptions*\relax

% 加载book类，A4大小，正文12磅，单面打印
\LoadClass[12pt,a4paper,openany,oneside]{book}

% 使用xelatex编译mtpro2宏包必须加载此宏包
\RequirePackage{etex}

% 加载支持中文的ctex宏包
\RequirePackage[UTF8,space=auto,scheme=plain]{ctex}

% 正文和数学字体设置
\RequirePackage{amsmath}
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext}
\RequirePackage[mtphrb,mtpcal,zswash,subscriptcorrection,uprightGreek,nofontinfo]{mtpro2}
\renewcommand{\rmdefault}{ptm}
\RequirePackage[scaled=0.92]{helvet}
\RequirePackage{type1cm}
\RequirePackage{lipsum}

% 使字体设置生效，排除其他干扰
\RequirePackage{mathdesign}

% 设置中文加粗字体
\setCJKfamilyfont{kai}[AutoFakeBold]{simkai.ttf}
\newcommand*{\kai}{\CJKfamily{kai}}
\setCJKfamilyfont{song}[AutoFakeBold]{SimSun}
\newcommand*{\song}{\CJKfamily{song}}

% 行间距，设为1.3，due to 12pt与小四号字的大小微差
\linespread{1.3}

%%===============常用宏包=========================
% 在一页上可以使用单栏和多栏样式
\RequirePackage{multicol}
% 自定义颜色
\RequirePackage{xcolor}
% 排版代码
\RequirePackage{fancyvrb}
% 自定义目录格式
\RequirePackage{titletoc}
% 设置颜色
\RequirePackage{xcolor}
% 插入图片
\RequirePackage{graphicx}
% 表格
\RequirePackage{array}
% 长表格
\RequirePackage{longtable}
% booktabs 提供了\toprule 等命令.
\RequirePackage{booktabs}
% multirow 支持在表格中跨行
\RequirePackage{multirow}
% 调整间隔, 让表格更好看些
\RequirePackage{bigstrut}
% 在跨行表格中输入定界符
\RequirePackage{bigdelim}
% 保护脆落命令
\RequirePackage{cprotect}
% 定制列表环境
\RequirePackage{enumitem}
% 设置代码环境
\RequirePackage{listings}
% 超链接格式设置
\RequirePackage{hyperref}
% 首行缩进
\RequirePackage{indentfirst}
\setlength\parindent{2em}
% 设置浮动体的标题
\RequirePackage{caption}
% 浮动环境
\RequirePackage{float}
% 下划线
\RequirePackage{ulem}
% 尺寸计算
\RequirePackage{calc}
% tikz绘图
\RequirePackage{tikz}
% 公式字母加粗
\RequirePackage{bm}
% 子公式编号
\RequirePackage{cases}
% 单位
\RequirePackage{siunitx}
% 排版代码
\RequirePackage{listings}
\renewcommand{\ttdefault}{cmtt}
% 定义<ystyle>样式
\lstdefinestyle{ystyle}{
  basicstyle=%
    \ttfamily
    \lst@ifdisplaystyle\small\fi
}
% 使用<ystyle>样式
\lstset{basicstyle = \ttfamily, style = ystyle, breaklines = true}
% 定义代码颜色
\definecolor{lightgrey}{rgb}{0.9,0.9,0.9}
\definecolor{frenchplum}{RGB}{190,20,83}
\definecolor{winered}{rgb}{0.5,0,0}
% 设置LaTeX代码排版样式
\lstset{language = [LaTeX]TeX,
  texcsstyle = *\color{winered},
  numbers = none,
  mathescape,
  breaklines = true,
  keywordstyle = \color{winered},
  commentstyle = \color{gray},
  emph = {Yangpaper,fontenc,fontspec,xeCJK,FiraMono,xunicode,newtxmath, figure,fig,image,img,table,itemize,enumerate,newtxtext,newtxtt,ctex, microtype,description,times,newtx,booktabs,tabular,PDFLaTeX, XeLaTeX,type1cm,BibTeX,device,color,mode,lang,amsthm,tcolorbox, titlestyle,cite,marginnote,ctex,listings,base,subnumcases},
  emphstyle = {\color{frenchplum}},
  morekeywords = {DeclareSymbolFont,SetSymbolFont,toprule,midrule,bottomrule, institute,version,includegraphics,setmainfont,setsansfont,setmonofont, setCJKmainfont,setCJKsansfont,setCJKmonofont,RequirePackage,figref, tabref,email,maketitle,keywords,definecolor,extrainfo,logo,cover,subtitle, appendix,chapter,hypersetup,mainmatter,frontmatter,tableofcontents, Yangpar,heiti,kaishu,lstset,pagecolor,zhnumber,marginpar,part, equote,marginnote},
  frame = single,
  tabsize = 2,
  rulecolor = \color{black},
  framerule = 0.2pt,
  columns = flexible,
  % backgroundcolor = \color{lightgrey}
}
%%==============================================

% 定义输入常量<tokens>
% 论文标题
\newcommand\Yang@tokens@thesistitle{}
% 关键词，中文
\newcommand\Yang@tokens@keywords{}
% 关键词，英文
\newcommand\Yang@tokens@keywordsen{}
% 论文类别
\newcommand*\Yang@tokens@papercategory{}
% 学校名称
\newcommand*\Yang@tokens@schoolname{}
% 院系
\newcommand*\Yang@tokens@departname{}
% 班级
\newcommand*\Yang@tokens@classnumber{}
% 日期
\newcommand*\Yang@tokens@dateinput{}
% 姓名
\newcommand*\Yang@tokens@authorname{}
% 学号
\newcommand*\Yang@tokens@studentID{}
% 专业
\newcommand*\Yang@tokens@majorin{}
% 指导教师
\newcommand*\Yang@tokens@instructor{}
% 第一行标题
\newcommand*\Yang@tokens@titleone{}
% 第二行标题
\newcommand*\Yang@tokens@titletwo{}

% 定义与常量有关的新命令
% 输入论文标题
\newcommand*\thesistitle[1]{%
	\renewcommand{\Yang@tokens@thesistitle}{#1}}
% 输入论文类别
\newcommand*\papercategory[1]{%
	\renewcommand{\Yang@tokens@papercategory}{#1}}	
% 输入校名
\newcommand*\schoolname[1]{%
	\renewcommand{\Yang@tokens@schoolname}{#1}}
% 输入院系名称
\newcommand*\departname[1]{%
	\renewcommand{\Yang@tokens@departname}{#1}}
% 输入班级
\newcommand*\classnumber[1]{%
	\renewcommand{\Yang@tokens@classnumber}{#1}}
% 输入日期
\newcommand*\dateinput[1]{%
	\renewcommand{\Yang@tokens@dateinput}{#1}}
% 输入姓名
\newcommand*\authorname[1]{%
	\renewcommand{\Yang@tokens@authorname}{#1}}
% 输入学号
\newcommand*\studentID[1]{%
	\renewcommand{\Yang@tokens@studentID}{#1}}
% 输入专业
\newcommand*\majorin[1]{%
	\renewcommand{\Yang@tokens@majorin}{#1}}
% 输入指导教师
\newcommand*\instructor[1]{%
	\renewcommand{\Yang@tokens@instructor}{#1}}
% 输入第一行标题
\newcommand*\titleone[1]{%
	\renewcommand{\Yang@tokens@titleone}{#1}}
% 输入第二行标题
\newcommand*\titletwo[1]{%
	\renewcommand{\Yang@tokens@titletwo}{#1}}

% 定义常量的值
% 中文标题名称设置

\renewcommand\listfigurename{插图目录}
\renewcommand\listtablename{附表目录}
\renewcommand\abstractname{摘\quad 要}
\newcommand{\keywordsname}{关键词}
\newcommand{\keywordsenname}{Keywords}
%%中文结构名字
\renewcommand{\contentsname}{目\quad 录}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\partname}{部分}
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\bibname}{参考文献}
\renewcommand{\appendixname}{附录}
\renewcommand{\indexname}{索\quad 引}

\newcommand{\notename}{笔记}
\renewcommand*{\proofname}{证明}
\newcommand{\problemname}{例题}
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

% 中英字号转换
\def\Yang@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}

% 定义字号    
\Yang@def@fontsize{chuhao}{42bp}
\Yang@def@fontsize{xiaochu}{36bp}
\Yang@def@fontsize{yihao}{26bp}
\Yang@def@fontsize{xiaoyi}{24bp}
\Yang@def@fontsize{erhao}{22bp}
\Yang@def@fontsize{xiaoer}{18bp}
\Yang@def@fontsize{sanhao}{16bp}
\Yang@def@fontsize{xiaosan}{15bp}
\Yang@def@fontsize{sihao}{14bp}
\Yang@def@fontsize{banxiaosi}{13bp}
\Yang@def@fontsize{xiaosi}{12bp}
\Yang@def@fontsize{dawu}{11bp}
\Yang@def@fontsize{wuhao}{10.5bp}
\Yang@def@fontsize{xiaowu}{9bp}
\Yang@def@fontsize{liuhao}{7.5bp}
\Yang@def@fontsize{xiaoliu}{6.5bp}
\Yang@def@fontsize{qihao}{5.5bp}
\Yang@def@fontsize{bahao}{5bp}

% 图片搜索目录
\graphicspath{{./figure/}{./figures/}{./image/}{./images/}{./graphics/}{./graphic/}{./pictures/}{./picture/}{./front/}}

% 页面设置
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

% 超链接设置
\RequirePackage{hyperref}
\hypersetup{
	breaklinks,
	unicode,
	linktoc=all,
	bookmarksnumbered=true,
	bookmarksopen=true,
	pdfsubject=\@author \@title Book,
	pdftitle = {哈尔滨工业大学（深圳）本科毕业设计（论文）},
	pdfauthor = {\@author},
	pdfkeywords={YangBook},
	pdfcreator={XeLaTeX with YangThesis class},
	colorlinks,
	linkcolor=black,
	citecolor=black,
	plainpages=false,
	pdfstartview=FitH,
	pdfborder={0 0 0},
}

% 章节设置
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{apptools}
\RequirePackage[toc,page]{appendix}

% 更改章节编号样式
\setcounter{secnumdepth}{3}
\renewcommand{\chaptername}{第 \thechapter\;章}

% 设置章节标题样式
\titleformat{\chapter}[hang]{\centering\heiti}
{\filcenter\xiaoer\enspace\heiti{\IfAppendix{\appendixname}{\chaptername}\enspace}}{1pt}{\xiaoer}

% 设置节标题样式
\titleformat{\section}[hang]{\heiti}
{\xiaosan\heiti{\thesection}\enspace}{1pt}{\xiaosan\heiti\filright}

% 设置条标题样式
\titleformat{\subsection}[hang]{\heiti}
{\sihao\heiti\thesubsection\enspace}{1pt}{\sihao\heiti\filright}

% 设置四级标题样式
\titleformat{\subsubsection}[hang]{\heiti}
{\xiaosi\heiti\thesubsubsection\enspace}{1pt}{\xiaosi\heiti\filright}

% 设置标题与上下文间距
% \titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}[<right-sep>]
\titlespacing{\chapter}{0pt}{0bp}{14.4bp}
\titlespacing{\section}{0pt}{7.5bp}{7.5bp}
\titlespacing{\subsection}{0pt}{7bp}{7bp}
\titlespacing{\subsubsection}{0pt}{6bp}{6bp}

% 图表标题设置，字号为small，分割符为空格
\RequirePackage[font=small,labelsep=quad]{caption} 

% 标题与图表的间距为3pt
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=10pt}

% 图表的引用格式
\newcommand\figref[1]{图\ref{#1}}
\newcommand\tabref[1]{表\ref{#1}}
\newcommand\equref[1]{式(\ref{#1})}

% 设置列表环境各项间无自动间距
\setlist{nolistsep}

% 定义各类定理样式
\RequirePackage{amsthm}
\let\proof\relax
\let\endproof\relax
  
% 定义新定义样式
\newtheoremstyle{ydefstyle}{3pt}{3pt}{\itshape}{}{\bfseries}{}{0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{（#3）}}
      
% 定义新定理样式
\newtheoremstyle{ythmstyle}{3pt}{3pt}{\itshape}{}{\bfseries}{}{0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{（#3）}}
      
% 定义新命题样式
\newtheoremstyle{yprostyle}{3pt}{3pt}{\itshape}{}{\bfseries}{}{0.5em}{\thmname{#1} \thmnumber{#2} \thmnote{（#3）}}

% 应用定义样式
\theoremstyle{ydefstyle}
\newtheorem{ydefinition}{\definitionname }[chapter]

% 应用定理样式
\theoremstyle{ythmstyle}
\newtheorem{ytheorem}{\theoremname }[chapter]
\newtheorem{ylemma}{\lemmaname }[chapter]
\newtheorem{ycorollary}{\corollaryname }[chapter]
\newtheorem{ypostulate}{\postulatename }[chapter]
\newtheorem{yaxiom}{\axiomname }[chapter]

% 应用命题样式
\theoremstyle{yprostyle}
\newtheorem{yproposition}{\propositionname }[chapter]

% 定义新定理环境
\newenvironment{theorem}[2]
  {\ifstrempty{#1}{\ytheorem}{\ytheorem[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endytheorem}

% 定义新定义环境
\newenvironment{definition}[2]
  {\ifstrempty{#1}{\ydefinition}{\ydefinition[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endydefinition}

% 定义新引理环境
\newenvironment{lemma}[2]
  {\ifstrempty{#1}{\ylemma}{\ylemma[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endylemma}

% 定义新推论环境
\newenvironment{corollary}[2]
  {\ifstrempty{#1}{\ycorollary}{\ycorollary[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endycorollary}

% 定义新公设环境
\newenvironment{postulate}[2]
  {\ifstrempty{#1}{\ypostulate}{\ypostulate[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endypostulate}

% 定义新公理环境
\newenvironment{axiom}[2]
  {\ifstrempty{#1}{\yaxiom}{\yaxiom[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endyaxiom}

% 定义新命题环境
\newenvironment{proposition}[2]
  {\ifstrempty{#1}{\yproposition}{\yproposition[#1]}\ifstrempty{#2}{}{\label{#2}}}
  {\endyproposition}

% 定义新注解环境
\newenvironment{note}{
  \par\noindent\textbf{\notename\,}
    \itshape}{\par}

% 定义新证明环境
\newenvironment{proof}{
  \par\noindent\textbf{\proofname\;}
}{\hfill$\Box$\quad\par}

% 定义新解答环境
\newenvironment{solution}{\medskip\par\noindent\textbf{\solutionname} \itshape}{\par}

% 定义新注释环境
\newenvironment{remark}{\noindent\textbf{\remarkname}}{\par}

% 定义新假设环境
\newenvironment{assumption}{\par\noindent\textbf{\assumptionname}}{\par}

% 定义新结论环境
\newenvironment{conclusion}{\par\noindent\textbf{\conclusionname}}{\par}

% 定义新性质环境
\newenvironment{property}{\par\noindent\textbf{\propertyname}}{\par}


% 重定义<\maketitle>命令
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

% 定义封面具体内容
\newdimen\infowidth
\infowidth = 6.5cm
\def\@maketitle{%
  \newpage
 % 开始写封面
  \thispagestyle{empty}  
  \vspace*{2cm}
 %%------------------------
  \begin{center}
  \ifdefstring{\Yang@covertitle}{tworow}{
    \parbox[t][1.4cm][t]{\textwidth}{
  		\begin{center}\erhao[0]\bfseries\Yang@tokens@titleone\end{center} 
	}\par
	\parbox[t][2.5cm][t]{\textwidth}{
  		\begin{center}\erhao[0]\bfseries\Yang@tokens@titletwo\end{center} 
	}\par	
  }{\relax}
  \ifdefstring{\Yang@covertitle}{onerow}{
    \parbox[t][3.4cm][t]{\textwidth}{
  		\begin{center}\erhao[0]\bfseries\Yang@tokens@thesistitle\end{center} 
	}
  }{\relax}
    \parbox[t][8.7cm][t]{\textwidth}{
    \begin{center}\xiaoer[0]\song\textbf{\ziju{0.2}\Yang@tokens@authorname}\end{center}
  }
  \begin{center}
    \bfseries
      \begin{tabular}{rl}
{\xiaosi 学\hphantom{教师}院：} & \xiaosi\Yang@tokens@departname\\[14pt]
{\xiaosi 学\hphantom{教师}号：} & \xiaosi\Yang@tokens@studentID
    \end{tabular}
    \hspace{0.5cm}
      \begin{tabular}{rl}
{\xiaosi 专\hphantom{教师}业：} & \xiaosi\Yang@tokens@majorin\\[14pt]
{\xiaosi 指导教师：} &  \xiaosi\Yang@tokens@instructor
      \end{tabular}
    \end{center}
    % 日期
    \vspace{2.6cm}
    {\xiaosi[0]\song\textbf{2020年7月}}
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
      \ifdefstring{\Yang@infoalign}{infocenter}{
		\begin{tabular}{l@{\ \  }c}
		
		  {\xiaoer  题\hphantom{\ 导\ \ \ }目} & \underline{\makebox[\infowidth]{\xiaoer \Yang@tokens@titleone}}\\
		     &  \underline{\makebox[\infowidth]{\xiaoer \Yang@tokens@titletwo}}\\
		    & \\
		  {\xiaosan 专\hphantom{\ 导\ 教\ }业}  & \underline{\makebox[\infowidth]{\xiaosan\Yang@tokens@majorin}}\\
		  {\xiaosan 学\hphantom{\ 导\ 教\ }号}   & \underline{\makebox[\infowidth]{\xiaosan\Yang@tokens@studentID}}\\
		  {\xiaosan 学\hphantom{\ 导\ 教\ }生}  & \underline{\makebox[\infowidth]{\xiaosan\Yang@tokens@authorname}}\\
		  {\xiaosan 指\ 导\ 教\ 师} & \underline{\makebox[\infowidth]{\xiaosan\Yang@tokens@instructor}}\\
		  {\xiaosan 答\ 辩\ 日\ 期} & \underline{\makebox[\infowidth]{\xiaosan\Yang@tokens@dateinput}}
		\end{tabular} \renewcommand{\arraystretch}{1}
	}{\relax}
	% 左对齐
	\ifdefstring{\Yang@infoalign}{infoleft}{
		\begin{tabular}{l@{\ \  }c}
		
		  {\xiaoer  题\hphantom{\ 导\ \ \ }目} & \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaoer \Yang@tokens@titleone}}\\
		     &  \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaoer \Yang@tokens@titletwo}}\\
		    & \\
		  {\xiaosan 专\hphantom{\ 导\ 教\ }业}  & \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaosan\Yang@tokens@majorin}}\\
		  {\xiaosan 学\hphantom{\ 导\ 教\ }号}   & \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaosan\Yang@tokens@studentID}}\\
		  {\xiaosan 学\hphantom{\ 导\ 教\ }生}  & \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaosan\Yang@tokens@authorname}}\\
		  {\xiaosan 指\ 导\ 教\ 师} & \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaosan\Yang@tokens@instructor}}\\
		  {\xiaosan 答\ 辩\ 日\ 期} & \underline{\makebox[\infowidth][l]{\hspace*{1em}\xiaosan\Yang@tokens@dateinput}}
		\end{tabular} \renewcommand{\arraystretch}{1}
	}{\relax}
      \end{center}
    }
  \end{center}
  \restoregeometry
 \clearpage
}

%% 中文摘要环境
\newenvironment{abstract}{\chapter*{\abstractname}
\addcontentsline{toc}{chapter}{\abstractname}
}{\if@twocolumn\else\null\fi}

% 中文关键词环境
\newcommand\keywords[1]{%
	\renewcommand{\Yang@tokens@keywords}{#1}	
	{\vskip18pt
	\hspace{-30bp}\begin{tabular}{lp{132mm}}
	{\zihao{-4}\heiti\keywordsname：}&
	{\xiaosi\Yang@tokens@keywords}
	\end{tabular}}
	}
	
% 英文摘要环境
\newenvironment{abstracten}{\chapter*{\bfseries Abstract}
\addcontentsline{toc}{chapter}{ABSTRACT}
}{\if@twocolumn\else\null\fi}	

% 英文关键词环境
\newcommand\keywordsen[1]{%
	\renewcommand{\Yang@tokens@keywordsen}{#1}
	{\vskip 18pt
	\hspace{-30bp}\begin{tabular}{lp{127mm}}
	{\zihao{-4}\bf\keywordsenname:}&
	{\xiaosi\Yang@tokens@keywordsen}
	\end{tabular}}
	}

% 定义原创性声明命令
\newcommand{\declaration}{\par
	\begingroup   
      \@declaration
    \endgroup
}

% 定义原创性声明具体内容
\def\@declaration{
\chapter*{\sanhao 哈尔滨工业大学（深圳）本科毕业设计（论文）原创性声明}
\addcontentsline{toc}{chapter}{原创性声明}\par
本人郑重声明：在哈尔滨工业大学（深圳）攻读学士学位期间，所提交的毕业设计（论文）《\Yang@tokens@thesistitle》，是本人在导师指导下独立进行研究工作所取得的成果。对本文的研究工作做出重要贡献的个人和集体，均已在文中以明确方式注明，其它未注明部分不包含他人已发表或撰写过的研究成果，不存在购买、由他人代写、剽窃和伪造数据等作假行为。
\par
本人愿为此声明承担法律责任。\par
\vspace{30pt}
\hspace{6em}作者签名：\hspace{8em}日期：\hspace{3em}年\hspace{1.5em}月\hspace{1.5em}日
}

% 定义附录，编号格式为大写字母
\renewcommand\appendix{\par
	\setcounter{section}{0}%
	 \setcounter{subsection}{0}%
	\gdef\thesection{\appendixname\@Alph\c@section}}		
	
% 重定义参考文献环境
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
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

% 定义页眉页脚
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
% 页眉
\lhead{}
\chead{\wuhao 哈尔滨工业大学（深圳）本科毕业设计（论文）}
\rhead{}
% 页脚
\lfoot{}
\cfoot{\wuhao -\thepage-}
\rfoot{}

% 定义页眉双横线样式
% 注意下面代码中的<%>不能删
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[1mm]{\headwidth}{0.4mm}}%
\rule[0.35\baselineskip]{\headwidth}{0.8mm}}

% 定义页眉横线为双横线
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi%
\makeheadrule}}

% 设置目录格式，目录只有三级
% 1级目录格式
\titlecontents{chapter}[0pt]{\vspace{1mm}\heiti}
{第\thecontentslabel 章\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% 2级目录格式
\titlecontents{section}[25pt]{\songti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% 3级目录格式
\titlecontents{subsection}[47pt]{\songti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}

% 修改表格字号，注意tabular要放在table环境里
\BeforeBeginEnvironment{tabular}{\wuhao}
% 修改表格与后文间距，缩短1cm
\AfterEndEnvironment{table}{\vspace{-1cm}}

% 新计数器，编排表格编号用
\newcounter{rowno}

% 使公式图表的编号随章节编号更新
%\numberwithin{equation}{chapter}
%\numberwithin{figure}{chapter}
%\numberwithin{table}{chapter}

% 设置图表公式编号格式为1-1
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}

% 使用tikz配置流程图基本图形
\usetikzlibrary{shapes.geometric, arrows}
% 开始
\tikzstyle{startstop} = [rectangle, rounded corners, minimum width = 2cm, minimum height=1cm,text centered, draw = black]
% 输入输出
\tikzstyle{io} = [trapezium, trapezium left angle=70, trapezium right angle=110, minimum width=2cm, minimum height=1cm, text centered, draw=black]
% 过程
\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black]
% 判断
\tikzstyle{decision} = [diamond, aspect = 3, text centered, draw=black]
% 箭头形式
\tikzstyle{arrow} = [->,>=stealth]

% 参考文献标号为上标
\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}

% 设置脚注编号格式
\renewcommand{\thefootnote}{\fnsymbol{footnote}}

% 解决book类文档章首页和目录页没有页眉页脚的问题
\makeatletter
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                   \thispagestyle{fancy}  % original style: plain
                   \global\@topnum\z@
                   \@afterindentfalse
                   \secdef\@chapter\@schapter}
\makeatother

%%=====新数学命令================================
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

\newcommand\mx{\bf{x}}
\newcommand\mX{\bf{X}}
\newcommand\my{\bf{y}}
\newcommand\mY{\bf{Y}}
%%=============================================

%%=====定义新数学符号===============================
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
%===============================================

%%===============================================      
%% End of file `HITSZThesis.cls'
%%===============================================