# Resume Structure & Formatting Guidelines

This workspace contains LaTeX resume templates based on Jake Gutierrez's clean single-page template. All AI sessions and resume updates for this repository **must** strictly adhere to the following rules and standards.

---

## 1. Resume Tracks & Layout Rules

There are **two distinct resume tracks** maintained in this workspace:

### A. `main.tex` — Standard 1-Page Professional Resume
* **Page Limit**: Strictly **1 page**. Content must never spill over to a second page.
* **Tone & Depth**: Highly professional, concise, and to the point.
* **Projects Selection**: Curated selection of top projects with **exactly 2 punchy, high-impact bullet points** per project focusing on low-level C logic, system calls, protocols, and memory safety.
* **Experience Section**: Professional descriptions highlighting test automation architecture, CI/CD performance monitoring, data validation scripts, and security assessments.

### B. `emertxe.tex` — Exhaustive Multi-Page Technical Portfolio Resume
* **Page Limit**: **Multi-page** (can be as many pages as needed for full technical depth).
* **Tone & Depth**: Comprehensive, granular, and deeply technical portfolio format.
* **Projects Section**: Exhaustive catalog of all projects completed at Emertxe (Car Dashboard, Minishell, Lexical Analyzer, Inverted Search Engine, MP3 Tag Reader, Steganography, APC, Address Book, etc.).
* **Project Structure**: Every project contains:
  * `\resumeSubheading{Project Title}{\href{URL}{Github}}{Tech Stack}{}`
  * `\resumeItem{\textbf{Project brief:} <comprehensive overview>}`
  * `\resumeItem{\textbf{Key challenges \& Learnings:}}`
  * Nested `\resumeItemListStart ... \resumeItemListEnd` with 3+ detailed sub-bullets detailing register-level configurations, system calls, IPC, data structures, algorithms, and debugging routines.

---

## 2. Positioning & Anti-Pivot Rule

* **Target Role**: Embedded Systems Developer / Firmware Engineer / Low-Level Linux Systems Engineer.
* **Strict Anti-Pivot Rule**:
  * **DO NOT** mention "pivoting", "transitioning", or shifting from SDET/QA to Embedded Systems anywhere in the objective, experience, or project descriptions.
  * Position directly as an Embedded Systems & Firmware Engineer with an Electronics and Communications Engineering (ECE) background, intensive embedded systems training, and professional software engineering experience.
  * Frame prior QA/QE roles purely in terms of technical excellence: automated test infrastructure architecture, backend data validation scripting, security vulnerability assessment, and quality discipline.

---

## 3. Section Sequence & Structure

Every resume produced in this repository should follow this precise section sequence:

1. **HEADING**
   * Centered: **Name** (Huge bold `\scshape`).
   * Contact Line: `Phone | Email | LinkedIn | GitHub | Portfolio` using `\href{...}` for all URLs.

2. **OBJECTIVE / CAREER OBJECTIVE**
   * Concise summary highlighting:
     * ECE background and intensive training in Advanced Embedded Systems.
     * Hands-on expertise in bare-metal C/C++ development on PIC microcontrollers.
     * Core competencies: hardware protocols (CAN, UART, SPI, I2C), memory-efficient data structures, Linux systems programming, and GDB debugging.
     * **No pivot mentions**.

3. **TECHNICAL SKILLS**
   * Positioned early (right after Objective) to immediately highlight core technical capabilities.
   * Grouped into clear categories:
     * **Languages / Programming Languages**: C, C++, Embedded C (and Java if relevant)
     * **Microcontrollers & Protocols**: PIC18F4580, UART, I2C, SPI, CAN Protocol
     * **Developer Tools & OS**: Linux (Fedora), GDB, CMake, Make, Git, Neovim, Vim
     * **Software Testing & Management**: Test Automation, JIRA, Octane

4. **PROJECTS / PROJECTS AT EMERTXE**
   * `main.tex`: Curated top projects with 2 concise bullet points each.
   * `emertxe.tex`: Full project catalog with Project Brief and Key Challenges & Learnings.

5. **EXPERIENCE / WORK EXPERIENCE**
   * Reverse chronological order.
   * Format: `\resumeSubheading{Role}{Dates}{Company}{Location}`.
   * Action-oriented bullet points focusing on engineering achievements, performance optimizations, test infrastructure, and data integrity.

6. **EDUCATION & TRAINING** (or **EDUCATION** + **COURSE WORK**)
   * **Emertxe Information Technologies**: Keep descriptions clean and focused (e.g., `Advanced Embedded Systems Training (PIC18F4580, C/C++, Protocols, Linux)` or `Aligned with Skill India / NSDC`). **Never** add qualification pack codes or sector skill council designations (e.g., QP ELE /Q1501).
   * **Amrita School of Engineering**: Bachelor of Technology in Electronics and Communications Engineering.

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

* **Car Dashboard (Automotive CAN Simulator)**: Bare-metal microcontrollers (PIC18F4580), CAN protocol communication, and CLCD dashboard ECU telemetry display.
* **Car Black Box (Event Data Recorder)**: Bare-metal PIC16F877A firmware, I2C communication (DS1307 RTC & AT24C04 EEPROM), ADC speed sampling, and UART PC telemetry export.
* **Minishell (Unix Command Shell)**: Linux systems programming, IPC ($N$-pipes via `pipe()` and `dup2()`), POSIX signal handling (`SIGINT`, `SIGTSTP`, `SIGCHLD`), and linked-list process job control (`jobs`, `fg`, `bg`).
* **Lexical Analyzer for C**: Stream-based lexical tokenization in C11, $O(\log N)$ binary search lookup tables for keywords/operators/symbols, bracket balance tracking, and lexical error handling.
* **Arbitrary Precision Calculator (APC)**: Infinite-precision arithmetic engine in C, dynamic memory allocation, doubly linked lists, and zero-memory-leak routines.
* **Inverted Search Engine**: High-performance text searching and indexing system using custom hash tables with linked lists, persistence, and $O(1)$ lookups.
* **Image Steganography (LSB)**: Bitwise manipulation (masking/shifting), 24-bit BMP header preservation, and secret message payload embedding.
* **MP3 Tag Reader & Editor**: Binary stream parsing, ID3v2.3 frame header navigation, and audio payload integrity preservation.
* **Address Book**: Dynamic memory allocation, CSV-like file persistence, and CLI contact management.
