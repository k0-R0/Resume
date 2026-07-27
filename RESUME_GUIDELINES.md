# Resume Structure & Formatting Guidelines

This workspace contains LaTeX resume templates based on Jake Gutierrez's clean single-page template. All AI sessions and resume updates for this repository **must** strictly adhere to the following rules and standards.

---

## 1. High-Level Resume Architecture & Layout Rules

* **Page Limit**: Strictly **1 page**. Never allow content to spill over to a second page.
* **Document Class**: `\documentclass[letterpaper,11pt]{article}`.
* **Margins**: Narrow margins (`-0.5in` side, `1.0in` total text height extension) with `\raggedbottom` and `\raggedright`.
* **ATS Compatibility**: `\pdfgentounicode=1` must always be included to ensure proper text parsing by Automated Tracking Systems.
* **Target Role Positioning**:
  * **Primary Target**: Embedded Systems Developer / Firmware Engineer / Low-Level Linux Systems Engineer.
  * **Narrative Pivot**: Emphasize an Electronics and Communications Engineering (ECE) background, intensive training at Emertxe in Advanced Embedded Systems, and 4 years of software testing/quality discipline (QA Automation / Senior QE I) combined with bare-metal C/C++, microcontrollers (PIC18F4580), hardware protocols (CAN, UART, SPI, I2C), build systems (CMake, Make), and debugging (GDB).

---

## 2. Standard Section Structure & Order

Every resume produced in this repository should follow this precise section sequence:

1. **HEADING**
   * Centered: **Name** (Huge bold `\scshape`).
   * Contact Line: `Phone | Email | LinkedIn | GitHub | Portfolio` using `\href{...}` for all URLs.

2. **OBJECTIVE**
   * A concise summary highlighting:
     * Background as an ECE graduate with specialized embedded systems training.
     * Hands-on expertise in bare-metal C/C++ development on PIC microcontrollers.
     * Core technical competencies: hardware protocols (CAN, UART, SPI, I2C), memory-efficient data structures, GDB debugging on Linux, and hardware-software integration.

3. **TECHNICAL SKILLS**
   * Positioned early (right after Objective) to immediately highlight core technical capabilities.
   * Grouped into clear categories:
     * **Languages**: C, C++, Embedded C
     * **Microcontrollers & Protocols**: PIC18F4580, UART, I2C, SPI, CAN Protocol
     * **Developer Tools & OS**: Linux (Fedora), GDB, CMake, Make, Git, Neovim, Vim
     * **Software Testing & Management**: Test Automation, JIRA, Octane

4. **PROJECTS**
   * Positioned before Experience to emphasize core low-level programming and microcontroller achievements.
   * **Rule**: Limit to the **top 4 projects** specifically chosen to highlight C, microcontrollers, protocols, memory safety, bit manipulation, and binary parsing.
   * Format: `\resumeSubheading{Project Title (\href{URL}{GitHub})}{}{Tech Stack}{}`.
   * 2 high-impact bullet points (`\resumeItem`) per project detailing design implementation, low-level logic, memory management, and hardware interaction.

5. **EXPERIENCE**
   * Reverse chronological order.
   * Format: `\resumeSubheading{Role}{Dates}{Company}{Location}`.
   * Action-oriented bullet points (`\resumeItem`) focusing on technical achievements, performance optimizations, test infrastructure, and data integrity.

6. **EDUCATION & TRAINING**
   * Combines institutional education and specialized embedded systems training.
   * Format: `\resumeSubheading{Institution / University}{Location}{Degree / Program Title}{Dates}`.
   * Includes:
     * **Emertxe Information Technologies**: Advanced Embedded Systems Training (PIC18F4580, C/C++, Protocols, Linux).
     * **Amrita School of Engineering**: Bachelor of Technology in Electronics and Communications Engineering.

---

## 3. LaTeX Custom Macros Reference

Always use these custom LaTeX commands defined in `main.tex`:

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

## 4. Key Content Guidelines for Future Updates

1. **Top 4 Projects Selection**:
   * **Car Dashboard (Automotive CAN Simulator)**: Demonstrates bare-metal microcontrollers (PIC18F4580), CAN protocol communication, and ECU display logic.
   * **Arbitrary Precision Calculator (APC)**: Demonstrates advanced C programming, dynamic memory management, doubly linked lists, and zero-memory-leak logic.
   * **Image Steganography (LSB)**: Demonstrates bitwise manipulation, header integrity, and image data processing in C.
   * **MP3 Tag Reader & Editor**: Demonstrates binary file parsing, ID3v2 header navigation, and byte offset manipulation.

2. **Skill Keyword Alignment**:
   * Keep skills aligned with `https://k0-r0.github.io/` and GitHub repository `https://github.com/k0-R0`.
   * Highlight C, C++, Embedded C, PIC18F4580, UART, I2C, SPI, CAN, GDB, CMake, Make, Git, Fedora Linux, Neovim, Vim, Test Automation.

