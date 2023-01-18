\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CoverLetter/coverletter}[18/1/2023 HUST coverletter]

\LoadClass[10pt, a4paper]{article}
\RequirePackage{charter}
\RequirePackage[a4paper, top=1in, bottom=1in, left=1in, right=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{float}
\RequirePackage{adjustbox}
\RequirePackage{fancyhdr}

\fancypagestyle{firstpage}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{1pt}
}

\fancypagestyle{subsequentpages}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{1pt}
}

\AtBeginDocument{\thispagestyle{firstpage}}
\pagestyle{subsequentpages}

\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}
\newif\ifnoeditor\noeditorfalse
\newcommand{\noeditor}{\noeditortrue}

\let\@jobtitle\@empty
\let\@firstname\@empty
\let\@jobtitle\@empty
\let\@appli\@empty

% \newcommand{\shortjournal}{Applied Intelligence}
\newcommand{\firstname}[1]{\gdef\@firstname{#1}}
\newcommand{\lastname}[1]{\gdef\@lastname{#1}}
\newcommand{\jobtitle}[1]{\gdef\@jobtitle{#1}}
\newcommand{\appli}[1]{\gdef\@appli{#1}}

\newcommand{\journal}[1]{\renewcommand{\journal}{\textit{#1}}}
\newcommand{\articletitle}[1]{\renewcommand{\articletitle}{\textbf{#1}}}

\renewcommand\maketitle{

    \begin{figure}[t]
        \adjustbox{center}{
            \includegraphics[width=1.1\textwidth]{CoverLetter/title.png}
        }
    \end{figure}
    \begin{table}[h]
        \vspace{-2em}
        \adjustbox{center}{
            \begin{tabularx}{1.1\textwidth}{
                >{\raggedright\arraybackslash}X 
                >{\raggedleft\arraybackslash}X}
                Add: 1037 \# Luoyu Rd., Wuhan, China 430074  & Tel: +86-27-87542857 \\
                Website: http://english.hust.edu.cn & Fax: +86-27-87542857 
            \end{tabularx}
        }
    \end{table}
    \bigskip
    \ifnoeditor
    Dear editors,
    \else
    \begin{tabular}{@{} l}
        {Professor} {\@firstname} {\@lastname} \\
        \@jobtitle, \journal \\
        \@appli  \\
    \end{tabular}
    \bigskip 

    Dear Prof. {\@lastname},
    \fi
    \bigskip

}

