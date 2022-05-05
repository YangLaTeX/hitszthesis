<!-- Author : Jingxuan Yang-->
<!-- Program Email: yanglatex2e@gmail.com -->

# hitszthesis: Dissertation Template for Harbin Institute of Technology, ShenZhen (HITSZ)

# hitszthesis：哈尔滨工业大学（深圳）本硕博学位论文LaTeX模板

![CTAN Version](https://img.shields.io/ctan/v/hitszthesis.svg)
![GitHub Version](https://img.shields.io/github/release/YangLaTeX/hitszthesis.svg)
![Repo Size](https://img.shields.io/github/repo-size/YangLaTeX/hitszthesis.svg)
![License](https://img.shields.io/ctan/l/hitszthesis.svg)

[GitHub](https://github.com/YangLaTeX/hitszthesis) | [Gitee](https://gitee.com/jingxuanyang/hitszthesis) | [GitLab](https://gitlab.com/jingxuanyang/hitszthesis) | [Wiki](https://github.com/YangLaTeX/hitszthesis/wiki) | [CTAN](https://www.ctan.org/pkg/hitszthesis)

# Introduction to hitszthesis

HITSZThesis is a **dissertation** LaTeX template for **Harbin Institute of Technology, ShenZhen** (HITSZ), including bachelor, master and doctor dissertations. Current version is 3.2.3, updated on 2022/05/05. Note that 3.x version is not compatible with 2.x version. Please join QQ group: 1039392552 to report issues.

```latex
  |- front
    |- coverinformation.tex
    |- denotation.tex
  |- body
    |- chapter01.tex
    |- chapter02.tex
    |- chapter03.tex
    |- chapter04.tex
    |- chapter05.tex
    |- chapter06.tex
  |- back
    |- acknowledgements.tex
    |- appendix01.tex
    |- appendix02.tex
    |- appendix03.tex
    |- appendixA.tex
    |- appendixB.tex
    |- ceindex.tex
    |- conclusion.tex
    |- publications.tex
    |- resume.tex
  |- figures
    |- bthesistitle.eps
    |- golfer.eps
    |- hitlogo.eps
  |- compile.bat
  |- ctex-fontset-siyuan.def
  |- hitszthesis-bachelor.pdf
  |- hitszthesis-doctor.pdf
  |- hitszthesis-master.pdf
  |- hitszthesis.bst
  |- hitszthesis.dtx
  |- hitszthesis.ins
  |- hitszthesis.pdf
  |- hitszthesis.sty
  |- latexmkrc
  |- main.tex
  |- Makefile
  |- README.md
  |- reference.bib
```

# hitszthesis 模板简介

hitszthesis 是哈尔滨工业大学（深圳）本硕博学位论文模板，当前版本为3.2.3，更新于2025年05月05日。注意3.x版本不兼容2.x版本。请加入QQ群：1039392552反馈模板使用过程中遇到的问题。

# Documentation

Download and unzip the template. Specific usage documentation and examples can be found in the files below:

* Template usage (hitszthesis.pdf, in Chinese)
* Template example (main.pdf, in Chinese)
* Brief Introduction (README.md, both in Chinese and English)

Typesetting examples:

* bachelor dissertation (main-bachelor.pdf)
* master dissertation (main-master.pdf)
* doctor dissertation (main-doctor.pdf)

# 说明文档

下载并解压本模板，文件夹中包含以下说明文档：

* 模板开发文档（hitszthesis.pdf，中文版）
* 模板撰写示例（main.pdf，中文版）
* 模板简介（README.md，中英双语）

示例文档：

* 本科学位论文（main-bachelor.pdf）
* 硕士学位论文（main-master.pdf）
* 博士学位论文（main-doctor.pdf）

# Downloads

* Published version: [CTAN](https://www.ctan.org/pkg/hitszthesis)
* Developer version: [GitHub](https://github.com/YangLaTeX/hitszthesis)
* Developer version: [Gitee](https://gitee.com/jingxuanyang/hitszthesis)
* Developer version: [GitLab](https://gitlab.com/jingxuanyang/hitszthesis)

# 下载

* 发布版本：[CTAN](https://www.ctan.org/pkg/hitszthesis)
* 开发版本：[GitHub](https://github.com/YangLaTeX/hitszthesis)
* 开发版本：[Gitee](https://gitee.com/jingxuanyang/hitszthesis)
* 开发版本：[GitLab](https://gitlab.com/jingxuanyang/hitszthesis)

# Updates（更新）

## Automatic

Get the most up-to-date published version with your TeX distribution from [CTAN](https://www.ctan.org/pkg/hitszthesis).

```bash
tlmgr update hitszthesis
```

## 自动更新

从[CTAN](https://www.ctan.org/pkg/hitszthesis)更新，命令行运行：

```bash
tlmgr update hitszthesis
```

## Manual

Download the package from [GitHub](https://github.com/YangLaTeX/hitszthesis) to the root directory of your thesis, then execute the command (Windows users `Shift + right click` white area in the file window and click "Open command line window here" from the popup menu):

```shell
latex hitszthesis.ins
```

You'll get `hitszthesis.cls`, `hitszthesis.cfg` and `hitszthesis.ist` along with other template files.

## 手动更新

从[GitHub](https://github.com/YangLaTeX/hitszthesis)下载模板，解压后打开命令行，运行：

```shell
latex hitszthesis.ins
```

得到`hitszthesis.cls`，`hitszthesis.cfg` 与 `hitszthesis.ist`，而后打开 `main.tex` 即可开始撰写论文。

# Reporting Issues

Please follow the procedure below:

* QQ group: 1039392552
* [GitHub Issues](https://github.com/YangLaTeX/hitszthesis/issues)
* [Educational Email](mailto:yangjx20@mails.tsinghua.edu.cn)
* [Gmail](mailto:yanglatex2e@gmail.com)

# 模板问题反馈

请按照以下顺序反馈问题：

* QQ group: 1039392552
* [GitHub 问题反馈](https://github.com/YangLaTeX/hitszthesis/issues)
* [教育邮箱](mailto:yangjx20@mails.tsinghua.edu.cn)
* [Gmail 邮箱](mailto:yanglatex2e@gmail.com)

# Makefile Usage

To use Makefile, you should have GNU `make` tool installed.

```bash
make cls        # generate class hitszthesis.cls
make doc        # generate template documentation hitszthesis.pdf
make thesis     # generate thesis main.pdf
make all        # generate thesis and documentation
make wordcount  # count word in thesis main.pdf
make clean      # delete all examples' files (excluding main.pdf)
make cleanall   # delete all examples' files and all pdf files
make dev        # make all clean
make pub        # make all cleanall
```

# 使用Makefile

使用Makefile之前请确保已安装GNU `make`工具。

```bash
make cls        # 生成类文件 hitszthesis.cls
make doc        # 生成说明文档 hitszthesis.pdf
make thesis     # 生成论文 main.pdf
make all        # 生成论文与说明文档
make wordcount  # 论文字数统计
make clean      # 删除辅助文件，除了PDF文件
make cleanall   # 删除辅助文件，包含PDF文件
make dev        # 等同于 make all clean
make pub        # 等同于 make all cleanall
```

# compile.bat Usage

`compile.bat` is designed for windows platform. Double click this file, then it will compile the thesis automatically.

```bash
compile.bat cls         # generate class hitszthesis.cls
compile.bat doc         # generate template documentation hitszthesis.pdf
compile.bat thesis      # generate thesis main.pdf (default)
compile.bat all         # generate thesis and documentation
compile.bat wordcount   # count word in thesis main.pdf
compile.bat clean       # delete all examples' files (excluding class and configuration files)
compile.bat cleanall    # delete all examples' files, class and configuration files
```

# 使用compile.bat

`compile.bat`为windows编译脚本，双击即可编译论文。

```bash
compile.bat cls         # 生成类文件 hitszthesis.cls
compile.bat doc         # 生成说明文档 hitszthesis.pdf
compile.bat thesis      # 生成论文 main.pdf （默认）
compile.bat all         # 生成论文与说明文档
compile.bat wordcount   # 论文字数统计
compile.bat clean       # 删除辅助文件，除了cls与cfg文件
compile.bat cleanall    # 删除辅助文件，包含cls与cfg文件
```

# Manually Compile（手动编译）

## Compile Thesis（编译论文）

```bash
xelatex -shell-escape main.tex
bibtex main
xelatex -shell-escape main.tex
xelatex -shell-escape main.tex
splitindex main -- -s hitszthesis.ist  # generate index
xelatex -shell-escape main.tex
```

## Compile Documentation（编译说明文档）

```bash
xelatex hitszthesis.dtx
makeindex -s gind.ist -o hitszthesis.ind hitszthesis.idx
makeindex -s gglo.ist -o hitszthesis.gls hitszthesis.glo
xelatex hitszthesis.dtx
xelatex hitszthesis.dtx
```

# License

This material is subject to the [LATEX Project Public License 1.3c](https://ctan.org/license/lppl1.3) or any later version.

# 协议

本模板的发布遵照[LATEX Project Public License 1.3c](https://ctan.org/license/lppl1.3)协议或其后版本。

# Acknowledgements（致谢）

* [hithesis](https://github.com/dustincys/hithesis)
* [thuthesis](https://github.com/xueruini/thuthesis)
