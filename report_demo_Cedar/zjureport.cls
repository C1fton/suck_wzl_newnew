\ProvidesClass{zjureport}
\LoadClass{article}
\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}

\RequirePackage{listings}  % 排版代码用
\RequirePackage{fontspec}  % 调字体的
\setmonofont{Consolas}     % 为了引入代码consolas字体
\RequirePackage{ulem}      % 删除线、下划线
\RequirePackage{booktabs}  % 画三线表
\RequirePackage{subfigure} 
\RequirePackage{titletoc}  % 调整目录用
\RequirePackage{cite}      % 引用参考文献


\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{3}
\renewcommand\thesection{\CJKnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\setlist[enumerate]{label=(\arabic*)}

\setCJKmainfont[ItalicFont={KaiTi},BoldFont={SimHei}]{SimSun}
\setmainfont[ItalicFont={KaiTi}]{CMU Serif}
\setmonofont[ItalicFont={KaiTi}]{Lucida Console}


% \titleformat{\section}%定义标题类型和标题样式，字体
%   {\fontsize{15.75pt}\textbf\heiti\centering}%定义标题格式:字号（大小），加粗，斜体
%   {}%定义标题的标签，即标题的标号等
%   {0em}%定义标题和标号之间的水平距离
%   {} %定义标题前的内容
%   [] %定义标题后的内容
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}
\graphicspath{{figures/}{figure/}{pictures/}
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{1em}{*4}{*1.5}

% 代码格式和颜色定义
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  % basicstyle={\small\ttfamily},
  basicstyle=\fontspec{Consolas}, % 改用consolas字体
  numbers=none,
  numberstyle=\small\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}

\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}} % 我新增加的格式
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}   % 我新增加的格式
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}  % 我新增加的格式

% 页眉
\pagestyle{fancy}
\lhead{实验名称：\@expname}
\chead{姓名：\@name}
\rhead{学号：\@stuid}

% 下划线定义
\def\zjuu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}

% 首页头部
\newcommand{\makeheader}{
\begin{figure}[h]
  \begin{minipage}{0.7\linewidth}
    \centerline{\includegraphics[width=\linewidth]{head.jpg}}
  \end{minipage}
  \hfill
  \begin{minipage}{.3\linewidth}
    \raggedleft
    \begin{tabular*}{.8\linewidth}{ll}
      专业： & \zjuu[70pt]\@major   \\
      姓名： & \zjuu[70pt]\@name    \\
      学号： & \zjuu[70pt]\@stuid   \\
      日期： & \zjuu[70pt]\@date    \\
      地点： & \zjuu[70pt]\@lab
    \end{tabular*}
  \end{minipage}
\end{figure}

\begin{table}[!htbp]
  \centering
  \begin{tabular*}{\linewidth}{llllll}
    课程名称： & \zjuu[120pt]\@course   & 指导老师： & \zjuu[90pt]\@instructor   & 成绩：       &  \zjuu[50pt]\@grades \\
    实验名称： & \zjuu[120pt]\@expname  & 实验类型： & \zjuu[90pt]\@exptype      & 同组学生姓名：&  \zjuu[50pt]\@partner
  \end{tabular*}
\end{table}
\thispagestyle{plain}
\setcounter{page}{1}
}

% 封面
\newcommand{\makecover}{
  \begin{center}
    \begin{center}
      \includegraphics[width=0.8\linewidth]{cover.png}
    \end{center}
    \vspace{1cm}
    \bfseries\huge{本科实验报告}\\
    \vspace{1cm}
    \bfseries\huge{\@expname}
    \vspace{3cm}
    \begin{center}
      \Large
      \linespread{2}
      \centering
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{L{3cm}C{6cm}}
        \bfseries{课程名称：}  & \@course     \\ \cline{2-2}
        \bfseries{姓名：}     & \@name       \\ \cline{2-2}
        \bfseries{学院：}     & \@college    \\ \cline{2-2}
        \bfseries{专业：}     & \@major      \\ \cline{2-2}
        \bfseries{学号：}     & \@stuid      \\ \cline{2-2}
        \bfseries{指导老师：}  & \@instructor \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vspace{2cm}
    \Large{\@date}
  \end{center}
  \thispagestyle{empty}
  \newpage
}

% 目录
\newcommand{\makecontent}{
  \thispagestyle{empty}  
  \renewcommand{\contentsname}{\fontsize{20pt}{\baselineskip} \centerline{目\hspace{2em}录}}% 调整目录
  \tableofcontents
  \thispagestyle{empty}
  \newpage
}

