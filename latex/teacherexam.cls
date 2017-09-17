
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\typeout{********** Loading teacherexam.cls ...}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{teacherexam}[2017/09/15 Teacher-Exam Class]




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Preliminary declarations for options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{article}
\RequirePackage{ifthen}
\RequirePackage[dvips]{color}
\RequirePackage{etex}

\newcommand{\myhappy}[1][]{%
   Happy #1
}

\newcounter{fachangabe}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{%
  %% Load at once
  \typeout{* working on option \CurrentOption}
  \IfFileExists{\CurrentOption-counter-begin.tex}
               {\input{\CurrentOption-counter-begin.tex}%
               }%
               {\PackageError{teacherexam}%
                    {Bad option: \CurrentOption}%
                    {the file \CurrentOption-counter-begin.tex must exist to define your counters}%
               }%
  \typeout{* working on option \CurrentOption}
  \IfFileExists{\CurrentOption-counter-end.tex}
  {%
    \expandafter\AtEndDocument\expandafter{%
    \expandafter\inputOptionFile\expandafter{\CurrentOption-counter-end.tex}}
  }%
  {\PackageError{teacherexam}%
                {Bad option: \CurrentOption}%
                {the file \CurrentOption-counter-end.tex must exist to define your counters}}
}

\ProcessOptions\relax



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% More declarations 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\typeout{********** Loading teacherexam.cls DONE}
