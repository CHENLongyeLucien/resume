\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_template}[2026/11/09 Minimal CV class]
\LoadClass[11pt,a4paper]{article}

\RequirePackage[margin=1.8cm]{geometry}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{titlesec}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0.35em}
\setlist[itemize]{leftmargin=1.2em,itemsep=0.2em,topsep=0.3em}

\titleformat{\section}{\large\bfseries}{}{0pt}{}
\titlespacing*{\section}{0pt}{0.8em}{0.3em}

\newenvironment{cv}{}{}

\newcommand{\cvheader}[6]{%
  {\LARGE\bfseries #1}\par
  #2 \quad|\quad \href{mailto:#3}{#3} \quad|\quad \href{https://#4}{#4}\par
  \if\relax\detokenize{#5}\relax\else #5\par\fi
  \if\relax\detokenize{#6}\relax\else \href{https://#6}{#6}\par\fi
}

\newenvironment{cvsection}[1]{%
  \section*{#1}
  \hrule
  \vspace{0.3em}
}{}

\newenvironment{cvsubsection}[4]{%
  \textbf{#1}\hfill #3\par
  \textit{#2}\hfill #4\par
  \begin{itemize}
}{%
  \end{itemize}
}

\newcommand{\listitem}{\item}
\newcommand{\descitem}[2][]{\textbf{#1} #2\par}
