% Items common to a particular visual style of syllabus -- in theory,
% can be used for all syllabi in a particular department.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{syllabus}[2012/01/19 v0.1 Modified article class for
syllabi]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\RequirePackage{enumitem}
\setlist{noitemsep}

\RequirePackage{multicol}
% Two-column lists (itemize, description, etc.)
%\SetEnumitemKey{twocol}{
%itemsep=1\itemsep,
%parsep=1\parsep,
%before=\raggedcolumns\begin{multicols}{2},
%after=\end{multicols}}



\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage[margin=1in]{geometry}

\RequirePackage{titlesec}
% titlesec documentation, section 3.1
\titleformat{\section}[runin]{\normalfont\bfseries}{}{.5em}{}[:]

\RequirePackage{color}
%\RequirePackage{hyperref}
%\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{hyperref}
%\ProcessOptions\relax
%\hypersetup{colorlinks}
%\definecolor{darkred}{rgb}{0.5,0,0}
%\definecolor{darkgreen}{rgb}{0,0.5,0}
%\definecolor{darkblue}{rgb}{0,0,0.5}
%\hypersetup{colorlinks,
%linkcolor=darkblue,
%filecolor=darkgreen,
%urlcolor=darkred,
%citecolor=darkblue}}
\RequirePackage{hyperref}
\RequirePackage{url}

\newcommand{\courseheader}{
\begin{center}
{\Large \textbf{Syllabus for \coursenumber{}  {\tiny Section
\sectionnumber{}}}}

\vspace{0.2cm}

{\large \textbf{\coursetitle{}}}
\end{center}

\medskip

\hrule
\vspace{0.2cm}


%\begin{description}[twocol,leftmargin=1.1in,style=nextline]
%\item[Term:] \courseterm{}
%\item[Time:] \coursetime{}
%\item[Room:] \courseroom{}
%\item[Credit Hours:] \coursecredit{}
%\item[Instructor:] \instructor{}
%\item[Office:] \instructoroffice{}
%\item[Phone:] \instructorphone{}
%\item[E-mail:] \instructoremail{}
%\end{description}

\vspace{0.2cm}
\hrule

\vspace{0.4cm}
}
\newcommand{\coursecontent}{
\begin{description}[leftmargin=0in]
    \item[\textbf{Office Hour:}] \instructorofficehours{}
    \vspace{-0.1cm}
    \item\let\thefootnote\relax\footnotetext{\tiny \textbf {This course syllabus
         provides a general plan for the course; deviations may be necessary.
	 \coursedisclaimer{}}}
    \item[\textbf{Text(s):}] \coursetexts{}
    \vspace{0.2cm}
    \item[\textbf{Description:}]\coursedescription{}
    \vspace{0.2cm}
    \item[\textbf{Prerequisite(s):}]\courseprerequisites{}
    \vspace{0.2cm}
    \item[\textbf{Course Outline:}]\courseoutline{} 
\end{description}

\coursecalendar{}

\newpage
\begin{description}[leftmargin=0in]
    \item[\textbf{Attendance:}] Students are expected to attend class
        daily and arrive in a timely fashion. Attendance will be taken. Up to 10
        points towards your final grade will be awarded based on your attendance
        records.
    \vspace{0.2cm}
    \item[\textbf{Policy on Academic Honesty:}] All students are
        expected to abide by the Augusta State University policy on academic
        honesty page \catalogpage{} of \catalog{\it Augusta State University
        Catalog}\/.
    \vspace{0.2cm}
    \item[\textbf{Homework/Quizzes:}]\coursehomework{}
    \vspace{0.2cm}
    \item[\textbf{In-Class Exams:}]\courseexams{}
    \vspace{0.2cm}
    \item[\textbf{Make-Up Policy:}] There will be no makeups on
	homework/quizzes, and in-class work. To allow for excused absences, I
	will drop your five lowest homework/quizzes scores. Makeups on an exam
	will be given at the discretion of the instructor. A legitimate and
	verifiable excuse is required. If the excuse is approved, the makeup
	will be given within one week of the missed test.
     \vspace{0.2cm}
     \item[\textbf{Final Exam:}]\coursefinalexam{}
    \vspace{0.2cm}
    \item[\textbf{Grades:}]\coursegrades{}  
    \vspace{0.2cm}
    \item[\textbf{Important Deadlines:}]
	Registration and add/drop ends \adddropinfo{.} The last day to withdraw
	from the course is \withdrawinfo{.}
    \vspace{0.2cm}
    \item[\textbf{Student Disabilities Policy:}]  If you have now or
	develop during this semester a physical or learning disability and you
	want your professor to make reasonable accommodations for that, you must
	contact the Office of Disability Services at (706) 737-1471. Once the
	Office of Disability Services  has received appropriate documentation,
	they will inform your instructors.
    \vspace{0.2cm}
    \item[\textbf{Academic Assistance at ASU:}]
	\begin{enumerate}
	\item Math Assistance Center (MAC), Allgood Hall N337.
	\end{enumerate}
\end{description}
}
