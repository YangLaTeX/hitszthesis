<!-- Author : Jingxuan Yang-->
<!-- Program Email: yanglatex2e@gmail.com -->

![CTAN Version](https://img.shields.io/ctan/v/hitszthesis.svg)
![Github Version](https://img.shields.io/github/release/YangLaTeX/hitszthesis.svg)
![Repo Size](https://img.shields.io/github/repo-size/YangLaTeX/hitszthesis.svg)
![License](https://img.shields.io/ctan/l/hitszthesis.svg)

[Github](https://github.com/YangLaTeX/hitszthesis) | [Download](https://github.com/YangLaTeX/hitszthesis/releases) | [Wiki](https://github.com/YangLaTeX/hitszthesis/wiki) | [CTAN](https://www.ctan.org/pkg/hitszthesis)

# Introduction to hitszthesis

HITSZThesis is a **bachelor dissertation** LaTeX template for **Harbin Institute of Technology, ShenZhen** (HITSZ). Current version is 2.3, updated on 2020/03/05.

# Documentation

Download and unzip the template. Specific usage documentation and examples can be found in the files below. At present, these documents are **only available in Chinese**:

* Template usage (hitszthesis.pdf)
* Template example (main.pdf)

# Downloads

* Published version: [CTAN](https://www.ctan.org/pkg/hitszthesis)
* Developer version: [GitHub](https://github.com/YangLaTeX/hitszthesis)

# Updates

## Automatic

Get the most up-to-date published version with your TeX distribution from [CTAN](https://www.ctan.org/pkg/hitszthesis).

## Manual

Download the package from [GitHub](https://github.com/YangLaTeX/hitszthesis) to the root directory of your thesis, then execute the command (Windows users `Shift + right click` white area in the file window and click "Open command line window here" from the popup menu):

```shell
xetex hitszthesis.ins
```

You'll get `hitszthesis.cls` along with other template files.

# Reporting Issues

Please follow the procedure below:

* QQ group: 1039392552
* [GitHub Issues](https://github.com/YangLaTeX/hitszthesis/issues)

# Makefile Usage

To use Makefile, you should have GNU `make` tool installed.

```bash
make cls        # generate class hitszthesis.cls
make doc        # generate template documentation hitszthesis.pdf;
make thesis     # generate thesis main.pdf;
make spine      # generate book spine for printing spine.pdf;
make all        # generate thesis and spine, same as `make thesis && make spine`;
make wordcount  # count word in thesis main.pdf
make clean      # delete all examples' files (excluding main.pdf);
make cleanall   # delete all examples' files and all pdf file;
make dev        # make doc all clean
make pub        # make doc all cleanall
```

# compile.bat Usage

compile.bat is designed for windows platform.

```bash
compile.bat cls         # generate class hitszthesis.cls
compile.bat doc         # generate template documentation hitszthesis.pdf
compile.bat thesis      # generate thesis main.pdf
compile.bat spine       # generate book spine for printing spine.pdf
compile.bat all         # generate thesis and spine, same as `make thesis && make spine`
compile.bat wordcount   # count word in thesis main.pdf
compile.bat clean       # delete all examples' files (excluding main.pdf)
compile.bat cleanall    # delete all examples' files and all pdf file
```

# License

This material is subject to the [LATEX Project Public License 1.3c](https://ctan.org/license/lppl1.3) or any later version.
