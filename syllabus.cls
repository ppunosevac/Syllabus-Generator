% Items common to a particular visual style of syllabus -- in theory,
% can be used for all syllabi in a particular department.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{syllabus}[2012/01/19 v0.1 Modified article class for
syllabi]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\RequirePackage{multicol}
\RequirePackage{enumitem}
\setlist{noitemsep}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage[margin=1in]{geometry}

\RequirePackage{titlesec}
% titlesec documentation, section 3.1
\titleformat{\section}[runin]{\normalfont\bfseries}{}{.5em}{}[:]

\RequirePackage{hyperref}
\RequirePackage{url}

\newcommand{\courseheader}{
\begin{center}
{\Large \textbf{Syllabus for \coursenumber{}  {\tiny Section
\sectionnumber{}}}}

{\large \textbf{\coursetitle{}}}
\end{center}
\hrule
\begin{multicols}{2}
    \begin{description}[labelindent=0.19in,leftmargin=1.3in,style=nextline]
        \item[Term:] \term{}
	\item[Time:] \sectiontime{}
	\item[Room:] \sectionroom{}
	\item[Credit Hours:]\coursecredit{}
	\item[Instructor:]\instructor{}
	\item[Office:]\instructoroffice{}
	\item[Phone:]\instructorphone{}
	\item[E-mail:]\instructoremail{}
    \end{description}
\end{multicols}
\hrule
}
\newcommand{\coursecontent}{
\begin{description}[leftmargin=0in,itemsep=5pt]
    \item[\textbf{Office Hour:}] \instructorofficehours{.}
    \item\let\thefootnote\relax\footnotetext{\tiny \textbf {This course
        syllabus provides a general plan for the course; deviations may
        be necessary.  \coursedisclaimer{}}}
    \vspace{-18pt}
    \item[\textbf{Text(s):}] \hfill \coursetexts{}
    \item[\textbf{Description:}]\coursedescription{}
    \item[\textbf{Prerequisite(s):}]\courseprerequisites{}
    \item[\textbf{Course Outline:}]\courseoutline{} 
\end{description}

\coursecalendar{}

\begin{description}[leftmargin=0in,itemsep=5pt]
    \item[\textbf{Attendance:}] Students are expected to attend class
        daily and arrive in a timely fashion. Attendance will be taken.
        Up to 10 points towards your final grade will be awarded based
        on your attendance records.
    \item[\textbf{Policy on Academic Honesty:}] All students are
        expected to abide by the Augusta State University policy on
        academic honesty page \catalogpage{} of \catalog{\it Augusta
        State University Catalog}\/.
    \item[\textbf{Homework/Quizzes:}]\coursehomework{}
    \item[\textbf{In-Class Exams:}]\courseexams{}
    \item[\textbf{Make-Up Policy:}] There will be no makeups on
        homework/quizzes, and in-class work. To allow for excused
        absences, I will drop your five lowest homework/quizzes scores.
        Makeups on an exam will be given at the discretion of the
        instructor. A legitimate and verifiable excuse is required. If
        the excuse is approved, the makeup will be given within one week
        of the missed test.
    \item[\textbf{Final Exam:}]\coursefinalexam{}
    \item[\textbf{Grades:}]\coursegrades{}  
    \item[\textbf{Important Deadlines:}]
        Classes begin on \firstday{.} Registration and add/drop ends
        \adddropinfo{.} The last day to withdraw from the course is
        \withdrawinfo{.} Last day of classes is \lastday{.}
    \item[\textbf{Student Disabilities Policy:}]  If you have now or
        develop during this semester a physical or learning disability
        and you want your professor to make reasonable accommodations
        for that, you must contact the Office of Disability Services at
        (706) 737-1471. Once the Office of Disability Services  has
        received appropriate documentation, they will inform your
        instructors.
    \item[\textbf{Academic Assistance at ASU:}] \hfill
        \begin{enumerate}
	    \item Math Assistance Center (MAC), Allgood Hall N337.
        \end{enumerate}
\end{description}
}
