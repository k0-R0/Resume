# Resume Structure & Formatting Guidelines

This workspace contains LaTeX resume templates based on Jake Gutierrez's clean single-page template. All AI sessions and resume updates for this repository **must** strictly adhere to the following rules and standards.

---

## 1. Resume Tracks & Layout Rules

There are **two distinct pairs of resume tracks** maintained in this workspace (4 files total):

### Primary Tracks (Going-Forward Resumes)
These are the active, primary resumes used going forward for Embedded Systems / Firmware roles. They omit prior QA experience and college graduation years to maintain an uncompromised embedded profile:

1. **`main.tex` — Standard 2-Page Embedded Resume**
   * **Page Limit**: Clean **2-page format**.
   * **Experience Section**: **Removed completely**. Does not contain Cognizant or Fresh Prints QA experience.
   * **Education & Training**: Contains Emertxe Information Technologies training and Amrita School of Engineering.
   * **Graduation Year**: **Omitted** for college. Only degree and CGPA (`(CGPA: 8.1/10)`) are displayed without graduation dates.
   * **Projects Selection**: Curated embedded & systems projects with **3 high-impact bullet points** per project (4 on Page 1, 6 on Page 2), followed by Education & Training and Course Work.

2. **`emertxe.tex` — Exhaustive 4-Page Technical Portfolio Resume**
   * **Page Limit**: **4-page portfolio format** (balanced page breaks across all projects and sections).
   * **Experience Section**: Cognizant and Fresh Prints QA experience are **removed completely**.
   * **Unified Education & Training**: Emertxe training and Amrita School of Engineering are combined under a single `\section{EDUCATION \& TRAINING}` section, followed by `\section{COURSE WORK}`.
   * **Graduation Year**: **Omitted** for college. Only degree and CGPA (`(CGPA: 8.1/10)`) are displayed without graduation dates.
   * **Projects Section**: Exhaustive catalog of all 12 technical projects with Project Brief, Key Challenges, and 4 granular register/system-level sub-bullets per project.

### Original / Legacy Tracks (`*_og.tex`)
Archived versions preserving the full historical timeline for roles or recruiters requiring complete employment history:

1. **`main_og.tex` — Full Professional Resume (Legacy)**
   * Retains the full `EXPERIENCE` section (~4 years across Fresh Prints and Cognizant).
   * Retains college graduation dates (`June 2018 -- August 2022`).
   * Projects feature expanded technical bullets (2 full lines each) to fill Page 1 and Page 2 without spilling over.

2. **`emertxe_og.tex` — Full Technical Portfolio (Legacy)**
   * Retains the full `WORK EXPERIENCE` section with Emertxe, Fresh Prints, and Cognizant.
   * Retains college graduation dates (`June 2018 -- August 2022`).
   * Projects feature detailed sub-bullets across a balanced 4-page distribution.

---

## 2. Positioning & Anti-Pivot Rule

* **Target Role**: Embedded Systems Developer / Firmware Engineer / Low-Level Linux Systems Engineer.
* **Going-Forward Rule**:
  * In `main.tex` and `emertxe.tex`, prior QA/QE employment at Cognizant and Fresh Prints is completely omitted to avoid recruiter bias or pigeonholing into QA/SDET tracks.
  * College graduation year is deliberately omitted (retaining only the CGPA `8.1/10`) to eliminate timeline gap concerns between graduation and embedded training.
  * **Strict Anti-Pivot Rule**: **DO NOT** mention "pivoting", "transitioning", or shifting from SDET/QA to Embedded Systems anywhere in the objective, experience, or project descriptions.
  * Position directly as an Embedded Systems & Firmware Engineer with an Electronics and Communications Engineering (ECE) background and intensive embedded systems training.

---

## 3. Section Sequence & Structure

### For `main.tex` (Primary):
1. **HEADING**: Centered Name, Phone, Email, LinkedIn, GitHub, Portfolio.
2. **OBJECTIVE**: Embedded Systems & Firmware focus (no pivot mentions).
3. **TECHNICAL SKILLS**: Languages, Microcontrollers & Protocols, Systems & Concepts, Developer Tools & OS, Software Testing & Management.
4. **PROJECTS**: 10 curated projects with 3 bullets each (4 on Page 1, 6 on Page 2).
5. **EDUCATION & TRAINING**: Emertxe Information Technologies and Amrita School of Engineering (degree + CGPA only; **no training or graduation dates**). No Experience section.
6. **COURSE WORK**: Core coursework in DSA, microcontrollers, embedded systems, OS, and computer networks.

### For `emertxe.tex` (Primary Portfolio):
1. **HEADING**: Centered Name, Contact links.
2. **CAREER OBJECTIVE**: Comprehensive embedded/firmware engineer objective.
3. **TECHNICAL SKILLS**: Grouped technical competencies.
4. **PROJECTS AT EMERTXE**: 12 exhaustive projects distributed across pages 1 to 4:
   * Page 1: Minishell, Multithreaded TFTP Server & Client
   * Page 2: Concurrent HTTP/1.1 Server, Car Black Box, Image Steganography, Car Dashboard
   * Page 3: Lexical Analyzer, Inverted Search Engine, Source2HTML, MP3 Tag Reader & Editor
   * Page 4: Arbitrary Precision Calculator (APC), Address Book
5. **EDUCATION & TRAINING**: Combined section containing Emertxe Information Technologies (with training description bullet; **no dates**) and Amrita School of Engineering (degree + CGPA only; **no graduation dates**).
6. **COURSE WORK**: Core coursework in DSA, microcontrollers, embedded systems, OS, and computer networks.

### Education & College Guidelines:
* **Amrita School of Engineering**: `B.Tech in Electronics and Communications Engineering (CGPA: 8.1/10)`. In `main.tex` and `emertxe.tex`, leave the dates parameter empty `{}` so no graduation year appears.
* **Emertxe Information Technologies**: Keep descriptions clean and focused (e.g., `Advanced Embedded Systems Training (PIC18F4580, C/C++, Protocols, Linux)` or undergoing training program on embedded systems). In `main.tex` and `emertxe.tex`, leave the dates parameter empty `{}` so no training dates appear. **Never** add qualification pack codes, Skill India/NSDC, or sector skill council designations.

---

## 4. LaTeX Custom Macros Reference

Always use these custom LaTeX commands:

```latex
\newcommand{\resumeItem}[1]{ \item {#1 \vspace{-2pt}} }

\newcommand{\resumeSubheading}[4]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & #2 \\
      \textit{#3} & {#4} \\
    \end{tabular*}\vspace{-7pt}
}

\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=0.15in, label={}]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeItemListStart}{\begin{itemize}}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-5pt}}
```

---

## 5. Project Catalog Reference

* **Minishell (Unix Command Shell)**: Linux systems programming, IPC ($N$-pipes via `pipe()` and `dup2()`), POSIX signal handling (`SIGINT`, `SIGTSTP`, `SIGCHLD`), and linked-list process job control (`jobs`, `fg`, `bg`).
* **Multithreaded TFTP Server & Client**: UDP socket programming in C, POSIX threads (`pthreads`), semaphore-based concurrency control (max 10 workers), ephemeral port isolation, and stop-and-wait flow control across octet, byte, and mail modes.
* **Concurrent HTTP/1.1 Server**: Lightweight concurrent HTTP/1.1 web server in C, POSIX sockets, Producer-Consumer thread pool (8 worker threads), bounded circular ring buffer (capacity 64), semaphore synchronization, HTTP protocol parsing, dynamic URL routing, automatic MIME type detection, and disk-backed file uploads.
* **Car Black Box (Event Data Recorder)**: Bare-metal PIC18F4580 firmware, I2C communication (DS1307 RTC & AT24C04 EEPROM), ADC potentiometer speed handling, CLCD menu, and UART data export to PC.
* **Image Steganography (LSB)**: Bitwise manipulation (masking/shifting), 24-bit BMP header preservation, and secret message payload embedding.
* **Car Dashboard (Automotive CAN Simulator)**: Bare-metal microcontrollers (PIC18F4580), CAN protocol communication, and CLCD dashboard ECU telemetry display.
* **Lexical Analyzer for C**: Stream-based lexical tokenization in C99, $O(\log N)$ binary search lookup tables for keywords/operators/symbols, bracket balance tracking, and lexical error handling.
* **Inverted Search Engine**: High-performance text searching and indexing system using custom hash tables with linked lists, persistence, and $O(1)$ lookups.
* **Source2HTML (C Source to HTML Converter)**: Event-driven C source code syntax highlighting engine using a multi-state finite state machine (FSM), CSS class token mapping, HTML entity escaping, and CLI line-numbering.
* **MP3 Tag Reader & Editor**: Binary stream parsing, ID3v2.3 frame header navigation, and audio payload integrity preservation.
* **Arbitrary Precision Calculator (APC)**: Infinite-precision arithmetic engine in C, dynamic memory allocation, doubly linked lists, and zero-memory-leak routines.
* **Address Book**: Dynamic memory allocation, CSV-like file persistence, and CLI contact management.

---

## 6. Build & Compilation Commands

All resumes are compiled using [Tectonic](https://tectonic-typesetting.github.io/) into the `resume/` output directory:

```bash
make all         # Compiles all 4 resumes: main, emertxe, main_og, and emertxe_og
make main        # Compiles primary 2-page embedded resume -> resume/main.pdf
make emertxe     # Compiles primary 4-page portfolio resume -> resume/emertxe.pdf
make main_og     # Compiles legacy full-experience resume -> resume/main_og.pdf
make emertxe_og  # Compiles legacy full portfolio resume -> resume/emertxe_og.pdf
make clean       # Removes all compiled PDFs in resume/
```

---

## 7. Commit & Versioning Guidelines

All commits must follow the semantic versioning standard prefixed to the commit message:
`vX.Y.Z: <brief description of what was changed>`

* **Major version (`X`, +1.0.0)**: Major structural changes, complete resume rewrites, adding new career tracks/roles, or repo-wide tooling overhauls.
* **Minor version (`Y`, +0.1.0)**: Weekly updates, adding a new project, or substantial section enhancements.
* **Patch version (`Z`, +0.0.1)**: Minor details, phrasing tweaks, typo fixes, or spacing adjustments.

