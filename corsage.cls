\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{corsage}[2025/08/01 dance around the sun 'til my ears don't ring]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[twoside]{book}

\RequirePackage[symbol, perpage]{footmisc}
\RequirePackage[defaultlines=3, all]{nowidow}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{fourier-orns}
\RequirePackage{geometry}
\RequirePackage{iftex}
\RequirePackage{lmodern}
\RequirePackage{titlesec}

\geometry{inner=4cm, outer=3cm, top=3.5cm, bottom=2.5cm}
\setlength{\parindent}{1.27cm}
\setlength{\parskip}{2pt}
\setlist[itemize, 1]{label=\starredbullet}
\setlist[itemize, 2]{label=$\cdot$}
\setlist{topsep=\parskip}
\raggedbottom

\ifluatex
	\pagewidth=\paperwidth
	\pageheight=\paperheight
\else
	\pdfpagewidth=\paperwidth
	\pdfpageheight=\paperheight
\fi

\pagestyle{fancy}
\fancyhf{}

\fancyhead[C]{\decoone}
\fancyhead[LE, RO]{\thepage}
\fancyhead[LO]{\leafSE{} \nouppercase{\it\leftmark}}
\fancyhead[RE]{\nouppercase{\it{Introducción a IPv6}}{} \leafSW}

\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

\let\oldcleardoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{%
	\clearpage%
	\ifodd\value{page}\else%
		\thispagestyle{empty}%
	\fi%
	\oldcleardoublepage%
}

\newcommand{\periodafter}[1]{#1.}
\newcommand{\chapterbreak}{\cleardoublepage}
