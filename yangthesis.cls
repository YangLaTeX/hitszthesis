%%==============================================
%% start of file `YangThesis.cls'.
%% Copyright 2013-2019 YangLaTeX (yangjingxuan@stu.hit.edu.cn)
%%
%% This work may be modified freely available at GitHub:
%% https://github.com/JingXuan-Yang/YangThesis.HITSZ.Dissertation
%%
%% Last Modification 2019-10-30
%%==============================================

% 开始写类文件
% 设置需要的LaTeX版本
\NeedsTeXFormat{LaTeX2e}

% 定义提供的类文件名称以及说明文字
\ProvidesClass{yangthesis}[2019/10/30 v1.1 YangThesis document class]

% Key value format for package options
\RequirePackage{kvoptions}

% 对宏包的前面和后面进行操作
\RequirePackage{etoolbox}

% 设置关键词
\SetupKeyvalOptions{family=xuan, prefix=xuan@, setkeys=\kvsetkeys}

% 定义设置关键词命令
\newcommand{\ekv}[1]{\kvsetkeys{xuan}{#1}}

% 设置颜色
\DeclareStringOption[green]{color}

% 颜色设置兼容
\DeclareVoidOption{green}{\ekv{color = green}}
\DeclareVoidOption{cyan}{\ekv{color = cyan}}
\DeclareVoidOption{blue}{\ekv{color = blue}}
\DeclareVoidOption{nocolor}{\ekv{color = none}}

% 数学选项
\newcommand\mailto[1]{\href{mailto:#1}{\nolinkurl{#1}}}

% 标题样式
\DeclareStringOption[hang]{titlestyle}[hang]

% 标题样式兼容
\DeclareVoidOption{hang}{\ekv{titlestyle = hang}}
\DeclareVoidOption{display}{\ekv{titlestyle = display}}

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
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext}
\RequirePackage[mtphrb,mtpcal,zswash,subscriptcorrection,uprightGreek,nofontinfo]{mtpro2}
\renewcommand{\rmdefault}{ptm}
\RequirePackage[scaled=0.92]{helvet}
\RequirePackage{type1cm}

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
% 微调字间距
\RequirePackage{microtype}
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
\RequirePackage[colorlinks, linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}
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
% 自定义定理环境
\RequirePackage{ntheorem}
%%==============================================

% 定义数学符号
\DeclareSymbolFont{cmlargesymbols}{OMX}{cmex}{m}{n}
\DeclareMathSymbol{\intop}{\mathop}{cmlargesymbols}{"5A}
  \def\int{\intop\nolimits}
\DeclareMathSymbol{\ointop}{\mathop}{cmlargesymbols}{"49}
  \def\oint{\ointop\nolimits}
\DeclareMathSymbol{\sumop}{\mathop}{cmlargesymbols}{"58}
  \let\sum\sumop
\DeclareMathSymbol{\prodop}{\mathop}{cmlargesymbols}{"59}
  \let\prod\prodop

% 定义输入常量<tokens>
% 论文标题
\newcommand\xuan@tokens@thesistitle{}
% 关键词，中文
\newcommand\xuan@tokens@keywords{}
% 关键词，英文
\newcommand\xuan@tokens@keywordsen{}
% 论文类别
\newcommand*\xuan@tokens@papercategory{}
% 学校名称
\newcommand*\xuan@tokens@schoolname{}
% 院系
\newcommand*\xuan@tokens@departname{}
% 班级
\newcommand*\xuan@tokens@classnumber{}
% 日期
\newcommand*\xuan@tokens@dateinput{}
% 姓名
\newcommand*\xuan@tokens@authorname{}
% 学号
\newcommand*\xuan@tokens@studentID{}
% 专业
\newcommand*\xuan@tokens@majorin{}
% 指导教师
\newcommand*\xuan@tokens@instructor{}
% 第一行标题
\newcommand*\xuan@tokens@titleone{}
% 第二行标题
\newcommand*\xuan@tokens@titletwo{}

% 定义与常量有关的新命令
% 输入论文标题
\newcommand*\thesistitle[1]{%
	\renewcommand{\xuan@tokens@thesistitle}{#1}}
% 输入论文类别
\newcommand*\papercategory[1]{%
	\renewcommand{\xuan@tokens@papercategory}{#1}}	
% 输入校名
\newcommand*\schoolname[1]{%
	\renewcommand{\xuan@tokens@schoolname}{#1}}
% 输入院系名称
\newcommand*\departname[1]{%
	\renewcommand{\xuan@tokens@departname}{#1}}
% 输入班级
\newcommand*\classnumber[1]{%
	\renewcommand{\xuan@tokens@classnumber}{#1}}
% 输入日期
\newcommand*\dateinput[1]{%
	\renewcommand{\xuan@tokens@dateinput}{#1}}
% 输入姓名
\newcommand*\authorname[1]{%
	\renewcommand{\xuan@tokens@authorname}{#1}}
% 输入学号
\newcommand*\studentID[1]{%
	\renewcommand{\xuan@tokens@studentID}{#1}}
% 输入专业
\newcommand*\majorin[1]{%
	\renewcommand{\xuan@tokens@majorin}{#1}}
% 输入指导教师
\newcommand*\instructor[1]{%
	\renewcommand{\xuan@tokens@instructor}{#1}}
% 输入第一行标题
\newcommand*\titleone[1]{%
	\renewcommand{\xuan@tokens@titleone}{#1}}
% 输入第二行标题
\newcommand*\titletwo[1]{%
	\renewcommand{\xuan@tokens@titletwo}{#1}}

% 定义常量的值
% 数学定理相关的常量
\newcommand*{\xuan@cap@definition}{定义}
\newcommand*{\xuan@cap@theorem}{定理}
\newcommand*{\xuan@cap@lemma}{引理}
\newcommand*{\xuan@cap@corollary}{推论}
\newcommand*{\xuan@cap@assumption}{假设}
\newcommand*{\xuan@cap@conjecture}{猜想}
\newcommand*{\xuan@cap@axiom}{公理}
\newcommand*{\xuan@cap@principle}{原则}
\newcommand*{\xuan@cap@problem}{问题}
\newcommand*{\xuan@cap@example}{例}
\newcommand*{\xuan@cap@proof}{证明}
\newcommand*{\xuan@cap@solution}{解}

% 中文标题名称设置
\renewcommand\contentsname{\xuan@cap@contentsname}
\renewcommand\listfigurename{\xuan@cap@listfigurename}
\renewcommand\listtablename{\xuan@cap@listtablename}
\renewcommand\bibname{\xuan@cap@bibname}
\renewcommand\indexname{\xuan@cap@indexname}
\renewcommand\figurename{\xuan@cap@figurename}
\renewcommand\tablename{\xuan@cap@tablename}
\renewcommand\appendixname{\xuan@cap@appendixname}
\renewcommand\abstractname{\xuan@cap@abstractname}

% 中文标题名称
\newcommand*{\xuan@cap@contentsname}{目\quad 录}
\newcommand*{\xuan@cap@listfigurename}{插图清单}
\newcommand*{\xuan@cap@listtablename}{附表清单}
\newcommand*{\xuan@cap@bibname}{参考文献}
\newcommand*{\xuan@cap@indexname}{索引}
\newcommand*{\xuan@cap@figurename}{图}
\newcommand*{\xuan@cap@tablename}{表}
\newcommand*{\xuan@cap@appendixname}{附录}
\newcommand*{\xuan@cap@abstractname}{摘\quad 要}
% 中文关键词
\newcommand*{\xuan@cap@keywordsname}{关键词}
% 英文关键词
\newcommand*{\xuan@cap@keywordsenname}{Keywords}

% 中英字号转换
\def\xuan@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}

% 定义字号    
\xuan@def@fontsize{chuhao}{42bp}
\xuan@def@fontsize{xiaochu}{36bp}
\xuan@def@fontsize{yihao}{26bp}
\xuan@def@fontsize{xiaoyi}{24bp}
\xuan@def@fontsize{erhao}{22bp}
\xuan@def@fontsize{xiaoer}{18bp}
\xuan@def@fontsize{sanhao}{16bp}
\xuan@def@fontsize{xiaosan}{15bp}
\xuan@def@fontsize{sihao}{14bp}
\xuan@def@fontsize{banxiaosi}{13bp}
\xuan@def@fontsize{xiaosi}{12bp}
\xuan@def@fontsize{dawu}{11bp}
\xuan@def@fontsize{wuhao}{10.5bp}
\xuan@def@fontsize{xiaowu}{9bp}
\xuan@def@fontsize{liuhao}{7.5bp}
\xuan@def@fontsize{xiaoliu}{6.5bp}
\xuan@def@fontsize{qihao}{5.5bp}
\xuan@def@fontsize{bahao}{5bp}

% 定义颜色系列
\ifdefstring{\xuan@color}{green}{
	\definecolor{main}{RGB}{0,120,2}%
	\definecolor{second}{RGB}{230,90,7}%
	\definecolor{third}{RGB}{0,160,152}%
}{\relax}

\ifdefstring{\xuan@color}{cyan}{
	\definecolor{main}{RGB}{0,175,152}%
	\definecolor{second}{RGB}{239,126,30}%
	\definecolor{third}{RGB}{120,8,13}%
}{\relax}

\ifdefstring{\xuan@color}{blue}{
	\definecolor{main}{RGB}{20,50,104}%
	\definecolor{second}{RGB}{180,50,131}%
	\definecolor{third}{RGB}{7,127,128}%
}{\relax}

% 定义颜色
\definecolor{winered}{rgb}{0.5,0,0}
\definecolor{bule}{RGB}{18,29,57}

% 定义标题样式
\ifdefstring{\xuan@titlestyle}{hang}{\def\style{hang}}{\relax}
\ifdefstring{\xuan@titlestyle}{display}{\def\style{display}}{\relax}

%%中文结构名字
\renewcommand{\contentsname}{目\hspace{2em}录}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\partname}{部分}
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\bibname}{参考文献}
\renewcommand{\appendixname}{附录}
\renewcommand{\indexname}{索\hspace{2em}引}

% 图片搜索目录
\graphicspath{{./figure/}{./figures/}{./image/}{./images/}{./graphics/}{./graphic/}{./pictures/}{./picture/}{./front/}}

% 页面设置
\RequirePackage{geometry}
\geometry{
	a4paper,
	left=30mm,  
	right=30mm, 
	top=42mm, bottom=33mm,
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
    pdfauthor = {\@author}
	pdfkeywords={xuanBook},
	pdfcreator={XeLaTeX with YangThesis class},
	colorlinks,
	linkcolor=black,
%	linkcolor=main,
%	citecolor=winered,
	citecolor=black,
	plainpages=false,
	pdfstartview=FitH,
	pdfborder={0 0 0},
	linktocpage
}


% 章节设置
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{apptools}
\RequirePackage[toc,page]{appendix}

% 更改章节编号样式
\setcounter{secnumdepth}{3}
\renewcommand{\chaptername}{第 \thechapter\;章}

% 设置章节标题样式
\titleformat{\chapter}[\style]{\centering\heiti}
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
\titlespacing{\chapter}{0pt}{-12bp}{14.4bp}
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

% 加载绘制盒子的宏包
\RequirePackage[most]{tcolorbox}

% 设置盒子样式
\tcbset{
    common/.style={
        fontupper=\kaishu,
        lower separated=false,
        coltitle=white,
        colback=gray!10,
        fonttitle=\bfseries,
        enhanced,
        breakable,
        top=8pt,
        before skip=8pt,
        attach boxed title to top left={yshift=-0.11in,xshift=0.15in},
        boxed title style={boxrule=0pt,colframe=white,arc=0pt,outer arc=0pt},
        % separator sign={:},
    },
    defstyle/.style={
        common,
        colframe=main,  
        colbacktitle=main, 
        overlay unbroken and last={\node[anchor=south east, outer sep=6pt] at (\textwidth-width,0) {\textcolor{main}{$\clubsuit$}}; }
    },
    thmstyle/.style={
        common,
        colframe=second,  
        colbacktitle=second, 
        overlay unbroken and last={\node[anchor=south east, outer sep=6pt] at (\textwidth-width,0) {\textcolor{second}{$\heartsuit$}}; }
    },
    propstyle/.style={
        common,
        colframe=third,  
        colbacktitle=third, 
        overlay unbroken and last={\node[anchor=south east, outer sep=6pt] at (\textwidth-width,0) {\textcolor{third}{$\spadesuit$}}; }
    },
}

% 设置新的定义定理环境
\newtcbtheorem[auto counter,number within=chapter]{definition}{定义}{defstyle}{def}
\newtcbtheorem[auto counter,number within=chapter]{theorem}{定理}{thmstyle}{thm}
\newtcbtheorem[auto counter,number within=chapter]{proposition}{命题}{propstyle}{pro}
\newtcbtheorem[auto counter,number within=chapter]{corollary}{推论}{propstyle}{cor}
\newtcbtheorem[auto counter,number within=chapter]{lemma}{引理}{thmstyle}{lem}
\newtcbtheorem[auto counter,number within=chapter]{remark}{备注}{defstyle}{rem}

% 定义示例环境
\newcounter{exam}[chapter]
\setcounter{exam}{0}
\renewcommand{\theexam}{\thechapter.\arabic{exam}}
\newenvironment{example}[1][]{
 		\refstepcounter{exam}\par\medskip\noindent \textbf{\color{main}{示例}~\theexam #1:}\rmfamily %
 	}{
 		\par\medskip\ignorespacesafterend %
 	}

% 定义练习环境
\newcounter{exer}[chapter]
\setcounter{exer}{0}
\renewcommand{\theexer}{\thechapter.\arabic{exer}}
\newenvironment{exercise}[1][]{
 		\refstepcounter{exer}\par\medskip\noindent \textbf{\color{main}{练习}~\theexer #1:}\rmfamily %
 	}{
 		\par\medskip\ignorespacesafterend %
 	}

% 定义注意与证明环境
\RequirePackage{pifont,manfnt}
\newenvironment{note}{\par\noindent{\makebox[0pt][r]{\xiaosi\color{red!90}\textdbend\quad}\textbf{\color{main}{注意：}}}\itshape}{\par}
\newenvironment{proof}{\par\noindent\textbf{\color{main}{证明：}}\color{black!90}\xiaosi}{\hfill$\Box$\quad\par}

% 定义假设、结论、答案、性质环境
\newenvironment{assumption}{\par\noindent\textbf{\color{main}{假设：}}}{\par}
\newenvironment{conclusion}{\par\noindent\textbf{\color{main}{结论：}}}{\par}
\newenvironment{solution}{\par\noindent\textbf{\color{main}{答案：}}}{\par}
\newenvironment{property}{\par\noindent\textbf{\color{main}{性质：}}}{\par}

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
\def\@maketitle{%
  \newpage
 % 开始写封面
  \vskip2ex
  \thispagestyle{empty}  
 %%------------------------
 \vspace*{2cm}
  \begin{center}
    \parbox[t][3.4cm][t]{\textwidth}{
  \begin{center}\erhao[0]\heiti\xuan@tokens@thesistitle\end{center} }
    \parbox[t][8.5cm][t]{\textwidth}{
    \begin{center}\xiaoer[0]\song\textbf{\ziju{0.2}\xuan@tokens@authorname}\end{center}
  }
  \begin{center}
    \heiti
      \begin{tabular}{rl}
{\xiaosi 学\hphantom{教师}院：} & \xiaosi\xuan@tokens@departname\\[14pt]
{\xiaosi 学\hphantom{教师}号：} & \xiaosi\xuan@tokens@studentID
    \end{tabular}
    \hspace{0.5cm}
      \begin{tabular}{rl}
{\xiaosi 专\hphantom{教师}业：} & \xiaosi\xuan@tokens@majorin\\[14pt]
{\xiaosi 指导教师：} &  \xiaosi\xuan@tokens@instructor
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
      \begin{center} \renewcommand{\arraystretch}{2.6} \heiti
\begin{tabular}{l@{\ \  }c}

  {\xiaoer  题\hphantom{\ 导\ \ \ }目} & \underline{\makebox[6.5cm]{\xiaoer \xuan@tokens@titleone}}\\
     &  \underline{\makebox[6.5cm]{\xiaoer \xuan@tokens@titletwo}}\\
    & \\
  {\xiaosan 专\hphantom{\ 导\ 教\ }业}  & \underline{\makebox[6.5cm]{\xiaosan\xuan@tokens@majorin}}\\
  {\xiaosan 学\hphantom{\ 导\ 教\ }号}   & \underline{\makebox[6.5cm]{\xiaosan\xuan@tokens@studentID}}\\
  {\xiaosan 学\hphantom{\ 导\ 教\ }生}  & \underline{\makebox[6.5cm]{\xiaosan\xuan@tokens@authorname}}\\
  {\xiaosan 指\ 导\ 教\ 师} & \underline{\makebox[6.5cm]{\xiaosan\xuan@tokens@instructor}}\\
  {\xiaosan 答\ 辩\ 日\ 期} & \underline{\makebox[6.5cm]{\xiaosan\xuan@tokens@dateinput}}
\end{tabular} \renewcommand{\arraystretch}{1}
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
	\renewcommand{\xuan@tokens@keywords}{#1}	
	{\vskip18pt
	\hspace{-30bp}\begin{tabular}{lp{132mm}}
	{\zihao{-4}\heiti\xuan@cap@keywordsname：}&
	{\xiaosi\xuan@tokens@keywords}
	\end{tabular}}
	}
	
% 英文摘要环境
\newenvironment{abstracten}{\chapter*{\bfseries Abstract}
\addcontentsline{toc}{chapter}{ABSTRACT}
}{\if@twocolumn\else\null\fi}	

% 英文关键词环境
\newcommand\keywordsen[1]{%
	\renewcommand{\xuan@tokens@keywordsen}{#1}
	{\vskip 18pt
	\hspace{-30bp}\begin{tabular}{lp{127mm}}
	{\zihao{-4}\bf\xuan@cap@keywordsenname:}&
	{\xiaosi\xuan@tokens@keywordsen}
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
本人郑重声明：在哈尔滨工业大学（深圳）攻读学士学位期间，所提交的毕业设计（论文）《\xuan@tokens@thesistitle》，是本人在导师指导下独立进行研究工作所取得的成果。对本文的研究工作做出重要贡献的个人和集体，均已在文中以明确方式注明，其它未注明部分不包含他人已发表或撰写过的研究成果，不存在购买、由他人代写、剽窃和伪造数据等作假行为。
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
\renewcommand{\contentsname}{\xiaoer\xuan@cap@contentsname}
% 1级目录格式
\titlecontents{chapter}[0pt]{\vspace{1mm}\heiti}
{第\thecontentslabel 章\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% 2级目录格式
\titlecontents{section}[25pt]{\songti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% 3级目录格式
\titlecontents{subsection}[47pt]{\songti}
{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}

%%===============================================      
%% End of `YangThesis.cls'
