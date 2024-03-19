# automake

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><!-- Created by GNU Texinfo 6.8, https://www.gnu.org/software/texinfo/ --><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="automake">
<meta name="keywords" content="automake">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#Macro-and-Variable-Index" rel="index" title="Macro and Variable Index">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<link href="https://www.gnu.org/savannah-checkouts/gnu/automake/manual/1.6/dir.html#Top" rel="up" title="(dir)">
<link href="#Introduction" rel="next" title="Introduction">
<link href="https://www.gnu.org/savannah-checkouts/gnu/automake/manual/1.6/dir.html#Top" rel="prev" title="(dir)">
<link rel="stylesheet" type="text/css" href="README_files/manual.css">


</head>

<body lang="en">
<h1 class="settitle" align="center">automake</h1>










<div class="top" id="Top">
<div class="header">
<p>
Next: <a href="#Introduction" accesskey="n" rel="next">Introduction</a>, Previous: <a href="https://www.gnu.org/savannah-checkouts/gnu/automake/manual/1.6/dir.html#Top" accesskey="p" rel="prev">(dir)</a>, Up: <a href="https://www.gnu.org/savannah-checkouts/gnu/automake/manual/1.6/dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="GNU-Automake"></span><h1 class="top">GNU Automake</h1>

<p>This file documents the GNU Automake package.  Automake is a program
which creates GNU standards-compliant Makefiles from template files.
This edition documents version 1.6.
</p>



<div class="Contents_element" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="no-bullet">
  <li><a id="toc-Introduction-1" href="#Introduction">1 Introduction</a></li>
  <li><a id="toc-General-ideas" href="#Generalities">2 General ideas</a>
  <ul class="no-bullet">
    <li><a id="toc-General-Operation-1" href="#General-Operation">2.1 General Operation</a></li>
    <li><a id="toc-Strictness-1" href="#Strictness">2.2 Strictness</a></li>
    <li><a id="toc-The-Uniform-Naming-Scheme" href="#Uniform">2.3 The Uniform Naming Scheme</a></li>
    <li><a id="toc-How-derived-variables-are-named" href="#Canonicalization">2.4 How derived variables are named</a></li>
    <li><a id="toc-Variables-reserved-for-the-user" href="#User-Variables">2.5 Variables reserved for the user</a></li>
    <li><a id="toc-Programs-automake-might-require" href="#Auxiliary-Programs">2.6 Programs automake might require</a></li>
  </ul></li>
  <li><a id="toc-Some-example-packages" href="#Examples">3 Some example packages</a>
  <ul class="no-bullet">
    <li><a id="toc-A-simple-example_002c-start-to-finish" href="#Complete">3.1 A simple example, start to finish</a></li>
    <li><a id="toc-A-classic-program" href="#Hello">3.2 A classic program</a></li>
    <li><a id="toc-Building-etags-and-ctags" href="#etags">3.3 Building etags and ctags</a></li>
  </ul></li>
  <li><a id="toc-Creating-a-Makefile_002ein" href="#Invoking-Automake">4 Creating a <samp>Makefile.in</samp></a></li>
  <li><a id="toc-Scanning-configure_002ein" href="#configure">5 Scanning <samp>configure.in</samp></a>
  <ul class="no-bullet">
    <li><a id="toc-Configuration-requirements" href="#Requirements">5.1 Configuration requirements</a></li>
    <li><a id="toc-Other-things-Automake-recognizes" href="#Optional">5.2 Other things Automake recognizes</a></li>
    <li><a id="toc-Auto_002dgenerating-aclocal_002em4" href="#Invoking-aclocal">5.3 Auto-generating aclocal.m4</a></li>
    <li><a id="toc-Autoconf-macros-supplied-with-Automake" href="#Macros">5.4 Autoconf macros supplied with Automake</a>
    <ul class="no-bullet">
      <li><a id="toc-Public-macros-1" href="#Public-macros">5.4.1 Public macros</a></li>
      <li><a id="toc-Private-macros-1" href="#Private-macros">5.4.2 Private macros</a></li>
    </ul></li>
    <li><a id="toc-Writing-your-own-aclocal-macros" href="#Extending-aclocal">5.5 Writing your own aclocal macros</a></li>
  </ul></li>
  <li><a id="toc-The-top_002dlevel-Makefile_002eam" href="#Top-level">6 The top-level <samp>Makefile.am</samp></a></li>
  <li><a id="toc-An-Alternative-Approach-to-Subdirectories" href="#Alternative">7 An Alternative Approach to Subdirectories</a></li>
  <li><a id="toc-Rebuilding-Makefiles" href="#Rebuilding">8 Rebuilding Makefiles</a></li>
  <li><a id="toc-Building-Programs-and-Libraries" href="#Programs">9 Building Programs and Libraries</a>
  <ul class="no-bullet">
    <li><a id="toc-Building-a-program" href="#A-Program">9.1 Building a program</a>
    <ul class="no-bullet">
      <li><a id="toc-Introductory-blathering" href="#Introductory-blathering">9.1.1 Introductory blathering</a></li>
      <li><a id="toc-Conditional-compilations" href="#Conditional-compilations">9.1.2 Conditional compilations</a></li>
      <li><a id="toc-Linking-the-program" href="#Linking-the-program">9.1.3 Linking the program</a></li>
    </ul></li>
    <li><a id="toc-Building-a-library" href="#A-Library">9.2 Building a library</a></li>
    <li><a id="toc-Building-a-Shared-Library" href="#A-Shared-Library">9.3 Building a Shared Library</a></li>
    <li><a id="toc-Program-and-Library-Variables-1" href="#Program-and-Library-Variables">9.4 Program and Library Variables</a></li>
    <li><a id="toc-Special-handling-for-LIBOBJS-and-ALLOCA" href="#LIBOBJS">9.5 Special handling for LIBOBJS and ALLOCA</a></li>
    <li><a id="toc-Variables-used-when-building-a-program" href="#Program-variables">9.6 Variables used when building a program</a></li>
    <li><a id="toc-Yacc-and-Lex-support" href="#Yacc-and-Lex">9.7 Yacc and Lex support</a></li>
    <li><a id="toc-C_002b_002b-Support-1" href="#C_002b_002b-Support">9.8 C++ Support</a></li>
    <li><a id="toc-Assembly-Support-1" href="#Assembly-Support">9.9 Assembly Support</a></li>
    <li><a id="toc-Fortran-77-Support-1" href="#Fortran-77-Support">9.10 Fortran 77 Support</a>
    <ul class="no-bullet">
      <li><a id="toc-Preprocessing-Fortran-77-1" href="#Preprocessing-Fortran-77">9.10.1 Preprocessing Fortran 77</a></li>
      <li><a id="toc-Compiling-Fortran-77-Files-1" href="#Compiling-Fortran-77-Files">9.10.2 Compiling Fortran 77 Files</a></li>
      <li><a id="toc-Mixing-Fortran-77-With-C-and-C_002b_002b-1" href="#Mixing-Fortran-77-With-C-and-C_002b_002b">9.10.3 Mixing Fortran 77 With C and C++</a>
      <ul class="no-bullet">
        <li><a id="toc-How-the-Linker-is-Chosen-1" href="#How-the-Linker-is-Chosen">9.10.3.1 How the Linker is Chosen</a></li>
      </ul></li>
      <li><a id="toc-Fortran-77-and-Autoconf-1" href="#Fortran-77-and-Autoconf">9.10.4 Fortran 77 and Autoconf</a></li>
    </ul></li>
    <li><a id="toc-Java-Support-1" href="#Java-Support">9.11 Java Support</a></li>
    <li><a id="toc-Support-for-Other-Languages-1" href="#Support-for-Other-Languages">9.12 Support for Other Languages</a></li>
    <li><a id="toc-Automatic-de_002dANSI_002dfication" href="#ANSI">9.13 Automatic de-ANSI-fication</a></li>
    <li><a id="toc-Automatic-dependency-tracking" href="#Dependencies">9.14 Automatic dependency tracking</a></li>
    <li><a id="toc-Support-for-executable-extensions" href="#EXEEXT">9.15 Support for executable extensions</a></li>
  </ul></li>
  <li><a id="toc-Other-Derived-Objects" href="#Other-objects">10 Other Derived Objects</a>
  <ul class="no-bullet">
    <li><a id="toc-Executable-Scripts" href="#Scripts">10.1 Executable Scripts</a></li>
    <li><a id="toc-Header-files" href="#Headers">10.2 Header files</a></li>
    <li><a id="toc-Architecture_002dindependent-data-files" href="#Data">10.3 Architecture-independent data files</a></li>
    <li><a id="toc-Built-sources" href="#Sources">10.4 Built sources</a></li>
  </ul></li>
  <li><a id="toc-Other-GNU-Tools-1" href="#Other-GNU-Tools">11 Other GNU Tools</a>
  <ul class="no-bullet">
    <li><a id="toc-Emacs-Lisp-1" href="#Emacs-Lisp">11.1 Emacs Lisp</a></li>
    <li><a id="toc-Gettext" href="#gettext">11.2 Gettext</a></li>
    <li><a id="toc-Libtool-1" href="#Libtool">11.3 Libtool</a></li>
    <li><a id="toc-Java-1" href="#Java">11.4 Java</a></li>
    <li><a id="toc-Python-1" href="#Python">11.5 Python</a></li>
  </ul></li>
  <li><a id="toc-Building-documentation" href="#Documentation">12 Building documentation</a>
  <ul class="no-bullet">
    <li><a id="toc-Texinfo-1" href="#Texinfo">12.1 Texinfo</a></li>
    <li><a id="toc-Man-pages-1" href="#Man-pages">12.2 Man pages</a></li>
  </ul></li>
  <li><a id="toc-What-Gets-Installed" href="#Install">13 What Gets Installed</a>
  <ul class="no-bullet">
    <li><a id="toc-Basics-of-installation" href="#Basics-of-installation">13.1 Basics of installation</a></li>
    <li><a id="toc-The-two-parts-of-install" href="#The-two-parts-of-install">13.2 The two parts of install</a></li>
    <li><a id="toc-Extending-installation" href="#Extending-installation">13.3 Extending installation</a></li>
    <li><a id="toc-Staged-installs" href="#Staged-installs">13.4 Staged installs</a></li>
    <li><a id="toc-Rules-for-the-user" href="#Rules-for-the-user">13.5 Rules for the user</a></li>
  </ul></li>
  <li><a id="toc-What-Gets-Cleaned" href="#Clean">14 What Gets Cleaned</a></li>
  <li><a id="toc-What-Goes-in-a-Distribution" href="#Dist">15 What Goes in a Distribution</a>
  <ul class="no-bullet">
    <li><a id="toc-Basics-of-distribution" href="#Basics-of-distribution">15.1 Basics of distribution</a></li>
    <li><a id="toc-Fine_002dgrained-distribution-control" href="#Fine_002dgrained-distribution-control">15.2 Fine-grained distribution control</a></li>
    <li><a id="toc-The-dist-hook" href="#The-dist-hook">15.3 The dist hook</a></li>
    <li><a id="toc-Checking-the-distribution" href="#Checking-the-distribution">15.4 Checking the distribution</a></li>
    <li><a id="toc-The-types-of-distributions" href="#The-types-of-distributions">15.5 The types of distributions</a></li>
  </ul></li>
  <li><a id="toc-Support-for-test-suites" href="#Tests">16 Support for test suites</a>
  <ul class="no-bullet">
    <li><a id="toc-Simple-Tests" href="#Simple-Tests">16.1 Simple Tests</a></li>
    <li><a id="toc-DejaGNU-Tests" href="#DejaGNU-Tests">16.2 DejaGNU Tests</a></li>
    <li><a id="toc-Install-Tests" href="#Install-Tests">16.3 Install Tests</a></li>
  </ul></li>
  <li><a id="toc-Changing-Automake_0027s-Behavior" href="#Options">17 Changing Automake’s Behavior</a></li>
  <li><a id="toc-Miscellaneous-Rules" href="#Miscellaneous">18 Miscellaneous Rules</a>
  <ul class="no-bullet">
    <li><a id="toc-Interfacing-to-etags" href="#Tags">18.1 Interfacing to <code>etags</code></a></li>
    <li><a id="toc-Handling-new-file-extensions" href="#Suffixes">18.2 Handling new file extensions</a></li>
    <li><a id="toc-Support-for-Multilibs" href="#Multilibs">18.3 Support for Multilibs</a></li>
  </ul></li>
  <li><a id="toc-Include-1" href="#Include">19 Include</a></li>
  <li><a id="toc-Conditionals-1" href="#Conditionals">20 Conditionals</a></li>
  <li><a id="toc-The-effect-of-_002d_002dgnu-and-_002d_002dgnits" href="#Gnits">21 The effect of <code>--gnu</code> and <code>--gnits</code></a></li>
  <li><a id="toc-The-effect-of-_002d_002dcygnus" href="#Cygnus">22 The effect of <code>--cygnus</code></a></li>
  <li><a id="toc-When-Automake-Isn_0027t-Enough" href="#Extending">23 When Automake Isn’t Enough</a></li>
  <li><a id="toc-Distributing-Makefile_002eins" href="#Distributing">24 Distributing <samp>Makefile.in</samp>s</a></li>
  <li><a id="toc-Automake-API-versioning" href="#API-versioning">25 Automake API versioning</a></li>
  <li><a id="toc-Macro-and-Variable-Index-1" href="#Macro-and-Variable-Index" rel="index">Macro and Variable Index</a></li>
  <li><a id="toc-General-Index-1" href="#General-Index" rel="index">General Index</a></li>
</ul>
</div>
</div>
<hr>
<div class="chapter" id="Introduction">
<div class="header">
<p>
Next: <a href="#Generalities" accesskey="n" rel="next">General ideas</a>, Previous: <a href="#Top" accesskey="p" rel="prev">GNU Automake</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Introduction-1"></span><h2 class="chapter">1 Introduction</h2>

<p>Automake is a tool for automatically generating <samp>Makefile.in</samp>s from
files called <samp>Makefile.am</samp>.  Each <samp>Makefile.am</samp> is basically a
series of <code>make</code> macro definitions (with rules being thrown in
occasionally).  The generated <samp>Makefile.in</samp>s are compliant with the
GNU Makefile standards.
</p>
<span id="index-GNU-Makefile-standards"></span>

<p>The GNU Makefile Standards Document
(see <a data-manual="standards" href="https://www.gnu.org/prep/standards/standards.html#Makefile-Conventions">Makefile Conventions</a> in <cite>The GNU Coding Standards</cite>)
is long, complicated, and subject to change.  The goal of Automake is to
remove the burden of Makefile maintenance from the back of the
individual GNU maintainer (and put it on the back of the Automake
maintainer).
</p>
<p>The typical Automake input file is simply a series of macro definitions.
Each such file is processed to create a <samp>Makefile.in</samp>.  There
should generally be one <samp>Makefile.am</samp> per directory of a project.
</p>
<span id="index-Constraints-of-Automake"></span>
<span id="index-Automake-constraints"></span>

<p>Automake does constrain a project in certain ways; for instance it
assumes that the project uses Autoconf (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Top">Introduction</a> in <cite>The Autoconf Manual</cite>), and enforces certain restrictions on
the <samp>configure.in</samp> contents<a id="DOCF1" href="#FOOT1"><sup>1</sup></a>.
</p>
<span id="index-Automake-requirements"></span>
<span id="index-Requirements_002c-Automake"></span>

<p>Automake requires <code>perl</code> in order to generate the
<samp>Makefile.in</samp>s.  However, the distributions created by Automake are
fully GNU standards-compliant, and do not require <code>perl</code> in order
to be built.
</p>
<span id="index-BUGS_002c-reporting"></span>
<span id="index-Reporting-BUGS"></span>
<span id="index-E_002dmail_002c-bug-reports"></span>

<p>Mail suggestions and bug reports for Automake to
<a href="mailto:bug-automake@gnu.org">bug-automake@gnu.org</a>.
</p>

<hr>
</div>
<div class="chapter" id="Generalities">
<div class="header">
<p>
Next: <a href="#Examples" accesskey="n" rel="next">Some example packages</a>, Previous: <a href="#Introduction" accesskey="p" rel="prev">Introduction</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="General-ideas"></span><h2 class="chapter">2 General ideas</h2>

<p>The following sections cover a few basic ideas that will help you
understand how Automake works.
</p>


<ul class="section-toc">
<li><a href="#General-Operation" accesskey="1">General Operation</a></li>
<li><a href="#Strictness" accesskey="2">Strictness</a></li>
<li><a href="#Uniform" accesskey="3">The Uniform Naming Scheme</a></li>
<li><a href="#Canonicalization" accesskey="4">How derived variables are named</a></li>
<li><a href="#User-Variables" accesskey="5">Variables reserved for the user</a></li>
<li><a href="#Auxiliary-Programs" accesskey="6">Programs automake might require</a></li>
</ul>
<hr>
<div class="section" id="General-Operation">
<div class="header">
<p>
Next: <a href="#Strictness" accesskey="n" rel="next">Strictness</a>, Previous: <a href="#Generalities" accesskey="p" rel="prev">General ideas</a>, Up: <a href="#Generalities" accesskey="u" rel="up">General ideas</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="General-Operation-1"></span><h3 class="section">2.1 General Operation</h3>

<p>Automake works by reading a <samp>Makefile.am</samp> and generating a
<samp>Makefile.in</samp>.  Certain macros and targets defined in the
<samp>Makefile.am</samp> instruct Automake to generate more specialized code;
for instance, a ‘<samp>bin_PROGRAMS</samp>’ macro definition will cause targets
for compiling and linking programs to be generated.
</p>
<span id="index-Non_002dstandard-targets"></span>
<span id="index-cvs_002ddist_002c-non_002dstandard-example"></span>
<span id="index-cvs_002ddist"></span>

<p>The macro definitions and targets in the <samp>Makefile.am</samp> are copied
verbatim into the generated file.  This allows you to add arbitrary code
into the generated <samp>Makefile.in</samp>.  For instance the Automake
distribution includes a non-standard <code>cvs-dist</code> target, which the
Automake maintainer uses to make distributions from his source control
system.
</p>
<span id="index-GNU-make-extensions"></span>

<p>Note that GNU make extensions are not recognized by Automake.  Using
such extensions in a <samp>Makefile.am</samp> will lead to errors or confusing
behavior.
</p>
<p>Automake tries to group comments with adjoining targets and macro
definitions in an intelligent way.
</p>
<span id="index-Make-targets_002c-overriding"></span>
<span id="index-Overriding-make-targets"></span>

<p>A target defined in <samp>Makefile.am</samp> generally overrides any such
target of a similar name that would be automatically generated by
<code>automake</code>.  Although this is a supported feature, it is generally
best to avoid making use of it, as sometimes the generated rules are
very particular.
</p>
<span id="index-Macros_002c-overriding"></span>
<span id="index-Overriding-make-macros"></span>

<p>Similarly, a macro defined in <samp>Makefile.am</samp> or <code>AC_SUBST</code>’ed
from <samp>configure.in</samp> will override any definition of the macro that
<code>automake</code> would ordinarily create.  This feature is more often
useful than the ability to override a target definition.  Be warned that
many of the macros generated by <code>automake</code> are considered to be for
internal use only, and their names might change in future releases.
</p>
<span id="index-Recursive-operation-of-Automake"></span>
<span id="index-Automake_002c-recursive-operation"></span>
<span id="index-Example-of-recursive-operation"></span>

<p>When examining a macro definition, Automake will recursively examine
macros referenced in the definition.  For example, if Automake is
looking at the content of <code>foo_SOURCES</code> in this snippet
</p>
<div class="example">
<pre class="example">xs = a.c b.c
foo_SOURCES = c.c $(xs)
</pre></div>

<p>it would use the files <samp>a.c</samp>, <samp>b.c</samp>, and <samp>c.c</samp> as the
contents of <code>foo_SOURCES</code>.
</p>
<span id="index-_0023_0023-_0028special-Automake-comment_0029"></span>
<span id="index-Special-Automake-comment"></span>
<span id="index-Comment_002c-special-to-Automake"></span>

<p>Automake also allows a form of comment which is <em>not</em> copied into
the output; all lines beginning with ‘<samp>##</samp>’ (leading spaces allowed)
are completely ignored by Automake.
</p>
<p>It is customary to make the first line of <samp>Makefile.am</samp> read:
</p>
<span id="index-Makefile_002eam_002c-first-line"></span>
<span id="index-First-line-of-Makefile_002eam"></span>

<div class="example">
<pre class="example">## Process this file with automake to produce Makefile.in
</pre></div>




<hr>
</div>
<div class="section" id="Strictness">
<div class="header">
<p>
Next: <a href="#Uniform" accesskey="n" rel="next">The Uniform Naming Scheme</a>, Previous: <a href="#General-Operation" accesskey="p" rel="prev">General Operation</a>, Up: <a href="#Generalities" accesskey="u" rel="up">General ideas</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Strictness-1"></span><h3 class="section">2.2 Strictness</h3>

<span id="index-Non_002dGNU-packages"></span>

<p>While Automake is intended to be used by maintainers of GNU packages, it
does make some effort to accommodate those who wish to use it, but do
not want to use all the GNU conventions.
</p>
<span id="index-Strictness_002c-defined"></span>
<span id="index-Strictness_002c-foreign"></span>
<span id="index-foreign-strictness"></span>
<span id="index-Strictness_002c-gnu"></span>
<span id="index-gnu-strictness"></span>
<span id="index-Strictness_002c-gnits"></span>
<span id="index-gnits-strictness"></span>

<p>To this end, Automake supports three levels of <em>strictness</em>—the
strictness indicating how stringently Automake should check standards
conformance.
</p>
<p>The valid strictness levels are:
</p>
<dl compact="compact">
<dt><span>‘<samp>foreign</samp>’</span></dt>
<dd><p>Automake will check for only those things which are absolutely
required for proper operations.  For instance, whereas GNU standards
dictate the existence of a <samp>NEWS</samp> file, it will not be required in
this mode.  The name comes from the fact that Automake is intended to be
used for GNU programs; these relaxed rules are not the standard mode of
operation.
</p>
</dd>
<dt><span>‘<samp>gnu</samp>’</span></dt>
<dd><p>Automake will check—as much as possible—for compliance to the GNU
standards for packages.  This is the default.
</p>
</dd>
<dt><span>‘<samp>gnits</samp>’</span></dt>
<dd><p>Automake will check for compliance to the as-yet-unwritten <em>Gnits
standards</em>.  These are based on the GNU standards, but are even more
detailed.  Unless you are a Gnits standards contributor, it is
recommended that you avoid this option until such time as the Gnits
standard is actually published (which may never happen).
</p></dd>
</dl>

<p>For more information on the precise implications of the strictness
level, see <a href="#Gnits">The effect of <code>--gnu</code> and <code>--gnits</code></a>.
</p>
<p>Automake also has a special “cygnus” mode which is similar to
strictness but handled differently.  This mode is useful for packages
which are put into a “Cygnus” style tree (e.g., the GCC tree).  For
more information on this mode, see <a href="#Cygnus">The effect of <code>--cygnus</code></a>.
</p>

<hr>
</div>
<div class="section" id="Uniform">
<div class="header">
<p>
Next: <a href="#Canonicalization" accesskey="n" rel="next">How derived variables are named</a>, Previous: <a href="#Strictness" accesskey="p" rel="prev">Strictness</a>, Up: <a href="#Generalities" accesskey="u" rel="up">General ideas</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="The-Uniform-Naming-Scheme"></span><h3 class="section">2.3 The Uniform Naming Scheme</h3>

<span id="index-Uniform-naming-scheme"></span>

<p>Automake macros (from here on referred to as <em>variables</em>) generally
follow a <em>uniform naming scheme</em> that makes it easy to decide how
programs (and other derived objects) are built, and how they are
installed.  This scheme also supports <code>configure</code> time
determination of what should be built.
</p>
<span id="index-_005fPROGRAMS-primary-variable"></span>
<span id="index-PROGRAMS-primary-variable"></span>
<span id="index-Primary-variable_002c-PROGRAMS"></span>
<span id="index-Primary-variable_002c-defined"></span>

<p>At <code>make</code> time, certain variables are used to determine which
objects are to be built.  The variable names are made of several pieces
which are concatenated together.
</p>
<p>The piece which tells automake what is being built is commonly called
the <em>primary</em>.  For instance, the primary <code>PROGRAMS</code> holds a
list of programs which are to be compiled and linked.
<span id="index-PROGRAMS"></span>
</p>
<span id="index-pkglibdir_002c-defined"></span>
<span id="index-pkgincludedir_002c-defined"></span>
<span id="index-pkgdatadir_002c-defined"></span>

<span id="index-pkglibdir"></span>
<span id="index-pkgincludedir"></span>
<span id="index-pkgdatadir"></span>

<p>A different set of names is used to decide where the built objects
should be installed.  These names are prefixes to the primary which
indicate which standard directory should be used as the installation
directory.  The standard directory names are given in the GNU standards
(see <a data-manual="standards" href="https://www.gnu.org/prep/standards/standards.html#Directory-Variables">Directory Variables</a> in <cite>The GNU Coding Standards</cite>).
Automake extends this list with <code>pkglibdir</code>, <code>pkgincludedir</code>,
and <code>pkgdatadir</code>; these are the same as the non-‘<samp>pkg</samp>’
versions, but with ‘<samp>@PACKAGE@</samp>’ appended.  For instance,
<code>pkglibdir</code> is defined as <code>$(libdir)/@PACKAGE@</code>.
<span id="index-PACKAGE_002c-directory"></span>
</p>
<span id="index-EXTRA_005f_002c-prepending"></span>

<p>For each primary, there is one additional variable named by prepending
‘<samp>EXTRA_</samp>’ to the primary name.  This variable is used to list
objects which may or may not be built, depending on what
<code>configure</code> decides.  This variable is required because Automake
must statically know the entire list of objects that may be built in
order to generate a <samp>Makefile.in</samp> that will work in all cases.
</p>
<span id="index-EXTRA_005fPROGRAMS_002c-defined"></span>
<span id="index-Example_002c-EXTRA_005fPROGRAMS"></span>
<span id="index-cpio-example"></span>

<p>For instance, <code>cpio</code> decides at configure time which programs are
built.  Some of the programs are installed in <code>bindir</code>, and some
are installed in <code>sbindir</code>:
</p>
<div class="example">
<pre class="example">EXTRA_PROGRAMS = mt rmt
bin_PROGRAMS = cpio pax
sbin_PROGRAMS = @MORE_PROGRAMS@
</pre></div>

<p>Defining a primary without a prefix as a variable, e.g.,
<code>PROGRAMS</code>, is an error.
</p>
<p>Note that the common ‘<samp>dir</samp>’ suffix is left off when constructing the
variable names; thus one writes ‘<samp>bin_PROGRAMS</samp>’ and not
‘<samp>bindir_PROGRAMS</samp>’.
</p>
<p>Not every sort of object can be installed in every directory.  Automake
will flag those attempts it finds in error.
Automake will also diagnose obvious misspellings in directory names.
</p>
<span id="index-Extending-list-of-installation-directories"></span>
<span id="index-Installation-directories_002c-extending-list"></span>

<p>Sometimes the standard directories—even as augmented by Automake—
are not enough.  In particular it is sometimes useful, for clarity, to
install objects in a subdirectory of some predefined directory.  To this
end, Automake allows you to extend the list of possible installation
directories.  A given prefix (e.g. ‘<samp>zar</samp>’) is valid if a variable of
the same name with ‘<samp>dir</samp>’ appended is defined (e.g. <code>zardir</code>).
</p>
<span id="index-HTML-support_002c-example"></span>

<p>For instance, until HTML support is part of Automake, you could use this
to install raw HTML documentation:
</p>
<div class="example">
<pre class="example">htmldir = $(prefix)/html
html_DATA = automake.html
</pre></div>

<span id="index-noinst-primary-prefix_002c-definition"></span>

<p>The special prefix ‘<samp>noinst</samp>’ indicates that the objects in question
should be built but not installed at all.  This is usually used for
objects required to build the rest of your package, for instance static
libraries (see <a href="#A-Library">Building a library</a>), or helper scripts.
</p>
<span id="index-check-primary-prefix_002c-definition"></span>

<p>The special prefix ‘<samp>check</samp>’ indicates that the objects in question
should not be built until the <code>make check</code> command is run.  Those
objects are not installed either.
</p>
<p>The current primary names are ‘<samp>PROGRAMS</samp>’, ‘<samp>LIBRARIES</samp>’,
‘<samp>LISP</samp>’, ‘<samp>PYTHON</samp>’, ‘<samp>JAVA</samp>’, ‘<samp>SCRIPTS</samp>’, ‘<samp>DATA</samp>’,
‘<samp>HEADERS</samp>’, ‘<samp>MANS</samp>’, and ‘<samp>TEXINFOS</samp>’.
<span id="index-PROGRAMS-1"></span>
<span id="index-LIBRARIES"></span>
<span id="index-LISP"></span>
<span id="index-PYTHON"></span>
<span id="index-JAVA"></span>
<span id="index-SCRIPTS"></span>
<span id="index-DATA"></span>
<span id="index-HEADERS"></span>
<span id="index-MANS"></span>
<span id="index-TEXINFOS"></span>
</p>
<p>Some primaries also allow additional prefixes which control other
aspects of <code>automake</code>’s behavior.  The currently defined prefixes
are ‘<samp>dist_</samp>’, ‘<samp>nodist_</samp>’, and ‘<samp>nobase_</samp>’.  These prefixes
are explained later (see <a href="#Program-and-Library-Variables">Program and Library Variables</a>).
</p>

<hr>
</div>
<div class="section" id="Canonicalization">
<div class="header">
<p>
Next: <a href="#User-Variables" accesskey="n" rel="next">Variables reserved for the user</a>, Previous: <a href="#Uniform" accesskey="p" rel="prev">The Uniform Naming Scheme</a>, Up: <a href="#Generalities" accesskey="u" rel="up">General ideas</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="How-derived-variables-are-named"></span><h3 class="section">2.4 How derived variables are named</h3>

<span id="index-canonicalizing-Automake-macros"></span>

<p>Sometimes a Makefile variable name is derived from some text the
maintainer supplies.  For instance, a program name listed in
‘<samp>_PROGRAMS</samp>’ is rewritten into the name of a ‘<samp>_SOURCES</samp>’
variable.  In cases like this, Automake canonicalizes the text, so that
program names and the like do not have to follow Makefile macro naming
rules.  All characters in the name except for letters, numbers, the
strudel (@), and the underscore are turned into underscores when making
macro references.
</p>
<p>For example, if your program is named <code>sniff-glue</code>, the derived
variable name would be <code>sniff_glue_SOURCES</code>, not
<code>sniff-glue_SOURCES</code>.
</p>
<p>The strudel is an addition, to make the use of Autoconf substitutions in
macro names less obfuscating.
</p>

<hr>
</div>
<div class="section" id="User-Variables">
<div class="header">
<p>
Next: <a href="#Auxiliary-Programs" accesskey="n" rel="next">Programs automake might require</a>, Previous: <a href="#Canonicalization" accesskey="p" rel="prev">How derived variables are named</a>, Up: <a href="#Generalities" accesskey="u" rel="up">General ideas</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Variables-reserved-for-the-user"></span><h3 class="section">2.5 Variables reserved for the user</h3>

<span id="index-variables_002c-reserved-for-the-user"></span>
<span id="index-user-variables"></span>

<p>Some <code>Makefile</code> variables are reserved by the GNU Coding Standards
for the use of the “user” – the person building the package.  For
instance, <code>CFLAGS</code> is one such variable.
</p>
<p>Sometimes package developers are tempted to set user variables such as
<code>CFLAGS</code> because it appears to make their job easier – they don’t
have to introduce a second variable into every target.
</p>
<p>However, the package itself should never set a user variable,
particularly not to include switches which are required for proper
compilation of the package.  Since these variables are documented as
being for the package builder, that person rightfully expects to be able
to override any of these variables at build time.
</p>
<p>To get around this problem, automake introduces an automake-specific
shadow variable for each user flag variable.  (Shadow variables are not
introduced for variables like <code>CC</code>, where they would make no
sense.)  The shadow variable is named by prepending ‘<samp>AM_</samp>’ to the
user variable’s name.  For instance, the shadow variable for
<code>YFLAGS</code> is <code>AM_YFLAGS</code>.
</p>

<hr>
</div>
<div class="section" id="Auxiliary-Programs">
<div class="header">
<p>
Previous: <a href="#User-Variables" accesskey="p" rel="prev">Variables reserved for the user</a>, Up: <a href="#Generalities" accesskey="u" rel="up">General ideas</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Programs-automake-might-require"></span><h3 class="section">2.6 Programs automake might require</h3>

<span id="index-Programs_002c-auxiliary"></span>
<span id="index-Auxiliary-programs"></span>

<p>Automake sometimes requires helper programs so that the generated
<samp>Makefile</samp> can do its work properly.  There are a fairly large
number of them, and we list them here.
</p>
<dl compact="compact">
<dt><span><code>ansi2knr.c</code></span></dt>
<dt><span><code>ansi2knr.1</code></span></dt>
<dd><p>These two files are used by the automatic de-ANSI-fication support
(see <a href="#ANSI">Automatic de-ANSI-fication</a>).
</p>
</dd>
<dt><span><code>compile</code></span></dt>
<dd><p>This is a wrapper for compilers which don’t accept both ‘<samp>-c</samp>’ and
‘<samp>-o</samp>’ at the same time.  It is only used when absolutely required.
Such compilers are rare.
</p>
</dd>
<dt><span><code>config.guess</code></span></dt>
<dt><span><code>config.sub</code></span></dt>
<dd><p>These programs compute the canonical triplets for the given build, host,
or target architecture.  These programs are updated regulary to support
new architectures and fix probes broken by changes in new kernel
versions.  You are encouraged to fetch the latest versions of these
files from <a href="ftp://ftp.gnu.org/gnu/config/">ftp://ftp.gnu.org/gnu/config/</a> before making a release.
</p>
</dd>
<dt><span><code>depcomp</code></span></dt>
<dd><p>This program understands how to run a compiler so that it will generate
not only the desired output but also dependency information which is
then used by the automatic dependency tracking feature.
</p>
</dd>
<dt><span><code>elisp-comp</code></span></dt>
<dd><p>This program is used to byte-compile Emacs Lisp code.
</p>
</dd>
<dt><span><code>install-sh</code></span></dt>
<dd><p>This is a replacement for the <code>install</code> program which works on
platforms where <code>install</code> is unavailable or unusable.
</p>
</dd>
<dt><span><code>mdate-sh</code></span></dt>
<dd><p>This script is used to generate a <samp>version.texi</samp> file.  It examines
a file and prints some date information about it.
</p>
</dd>
<dt><span><code>missing</code></span></dt>
<dd><p>This wraps a number of programs which are typically only required by
maintainers.  If the program in question doesn’t exist, <code>missing</code>
prints an informative warning and attempts to fix things so that the
build can continue.
</p>
</dd>
<dt><span><code>mkinstalldirs</code></span></dt>
<dd><p>This works around the fact that <code>mkdir -p</code> is not portable.
</p>
</dd>
<dt><span><code>py-compile</code></span></dt>
<dd><p>This is used to byte-compile Python scripts.
</p>
</dd>
<dt><span><code>texinfo.tex</code></span></dt>
<dd><p>Not a program, this file is required for <code>make dvi</code> to work when
Texinfo sources are in the package.
</p>
</dd>
<dt><span><code>ylwrap</code></span></dt>
<dd><p>This program wraps <code>lex</code> and <code>yacc</code> and ensures that, for
instance, multiple <code>yacc</code> instances can be invoked in a single
directory in parallel.
</p>
</dd>
</dl>


<hr>
</div>
</div>
<div class="chapter" id="Examples">
<div class="header">
<p>
Next: <a href="#Invoking-Automake" accesskey="n" rel="next">Creating a <samp>Makefile.in</samp></a>, Previous: <a href="#Generalities" accesskey="p" rel="prev">General ideas</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Some-example-packages"></span><h2 class="chapter">3 Some example packages</h2>



<ul class="section-toc">
<li><a href="#Complete" accesskey="1">A simple example, start to finish</a></li>
<li><a href="#Hello" accesskey="2">A classic program</a></li>
<li><a href="#etags" accesskey="3">Building etags and ctags</a></li>
</ul>
<hr>
<div class="section" id="Complete">
<div class="header">
<p>
Next: <a href="#Hello" accesskey="n" rel="next">A classic program</a>, Previous: <a href="#Examples" accesskey="p" rel="prev">Some example packages</a>, Up: <a href="#Examples" accesskey="u" rel="up">Some example packages</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="A-simple-example_002c-start-to-finish"></span><h3 class="section">3.1 A simple example, start to finish</h3>

<span id="index-Complete-example"></span>

<p>Let’s suppose you just finished writing <code>zardoz</code>, a program to make
your head float from vortex to vortex.  You’ve been using Autoconf to
provide a portability framework, but your <samp>Makefile.in</samp>s have been
ad-hoc.  You want to make them bulletproof, so you turn to Automake.
</p>
<span id="index-AM_005fINIT_005fAUTOMAKE_002c-example-use"></span>

<p>The first step is to update your <samp>configure.in</samp> to include the
commands that <code>automake</code> needs.  The way to do this is to add an
<code>AM_INIT_AUTOMAKE</code> call just after <code>AC_INIT</code>:
</p>
<div class="example">
<pre class="example">AC_INIT(zardoz, 1.0)
AM_INIT_AUTOMAKE
...
</pre></div>

<p>Since your program doesn’t have any complicating factors (e.g., it
doesn’t use <code>gettext</code>, it doesn’t want to build a shared library),
you’re done with this part.  That was easy!
</p>
<span id="index-aclocal-program_002c-introduction"></span>
<span id="index-aclocal_002em4_002c-preexisting"></span>
<span id="index-acinclude_002em4_002c-defined"></span>

<p>Now you must regenerate <samp>configure</samp>.  But to do that, you’ll need
to tell <code>autoconf</code> how to find the new macro you’ve used.  The
easiest way to do this is to use the <code>aclocal</code> program to generate
your <samp>aclocal.m4</samp> for you.  But wait... maybe you already have an
<samp>aclocal.m4</samp>, because you had to write some hairy macros for your
program.  The <code>aclocal</code> program lets you put your own macros into
<samp>acinclude.m4</samp>, so simply rename and then run:
</p>
<div class="example">
<pre class="example">mv aclocal.m4 acinclude.m4
aclocal
autoconf
</pre></div>

<span id="index-zardoz-example"></span>

<p>Now it is time to write your <samp>Makefile.am</samp> for <code>zardoz</code>.
Since <code>zardoz</code> is a user program, you want to install it where the
rest of the user programs go: <code>bindir</code>.  Additionally,
<code>zardoz</code> has some Texinfo documentation.  Your <samp>configure.in</samp>
script uses <code>AC_REPLACE_FUNCS</code>, so you need to link against
‘<samp>@LIBOBJS@</samp>’.  So here’s what you’d write:
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = zardoz
zardoz_SOURCES = main.c head.c float.c vortex9.c gun.c
zardoz_LDADD = @LIBOBJS@

info_TEXINFOS = zardoz.texi
</pre></div>

<p>Now you can run <code>automake --add-missing</code> to generate your
<samp>Makefile.in</samp> and grab any auxiliary files you might need, and
you’re done!
</p>

<hr>
</div>
<div class="section" id="Hello">
<div class="header">
<p>
Next: <a href="#etags" accesskey="n" rel="next">Building etags and ctags</a>, Previous: <a href="#Complete" accesskey="p" rel="prev">A simple example, start to finish</a>, Up: <a href="#Examples" accesskey="u" rel="up">Some example packages</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="A-classic-program"></span><h3 class="section">3.2 A classic program</h3>

<span id="index-Example_002c-GNU-Hello"></span>
<span id="index-Hello-example"></span>
<span id="index-GNU-Hello_002c-example"></span>

<p><a href="ftp://prep.ai.mit.edu/pub/gnu/hello-1.3.tar.gz">GNU hello</a> is
renowned for its classic simplicity and versatility.  This section shows
how Automake could be used with the GNU Hello package.  The examples
below are from the latest beta version of GNU Hello, but with all of the
maintainer-only code stripped out, as well as all copyright comments.
</p>
<p>Of course, GNU Hello is somewhat more featureful than your traditional
two-liner.  GNU Hello is internationalized, does option processing, and
has a manual and a test suite.
</p>
<span id="index-configure_002ein_002c-from-GNU-Hello"></span>
<span id="index-GNU-Hello_002c-configure_002ein"></span>
<span id="index-Hello_002c-configure_002ein"></span>

<p>Here is the <samp>configure.in</samp> from GNU Hello:
</p>
<div class="example">
<pre class="example">dnl Process this file with autoconf to produce a configure script.
AC_INIT(src/hello.c)
AM_INIT_AUTOMAKE(hello, 1.3.11)
AM_CONFIG_HEADER(config.h)

dnl Set of available languages.
ALL_LINGUAS="de fr es ko nl no pl pt sl sv"

dnl Checks for programs.
AC_PROG_CC
AC_ISC_POSIX

dnl Checks for libraries.

dnl Checks for header files.
AC_STDC_HEADERS
AC_HAVE_HEADERS(string.h fcntl.h sys/file.h sys/param.h)

dnl Checks for library functions.
AC_FUNC_ALLOCA

dnl Check for st_blksize in struct stat
AC_ST_BLKSIZE

dnl internationalization macros
AM_GNU_GETTEXT
AC_OUTPUT([Makefile doc/Makefile intl/Makefile po/Makefile.in \
           src/Makefile tests/Makefile tests/hello],
   [chmod +x tests/hello])
</pre></div>

<p>The ‘<samp>AM_</samp>’ macros are provided by Automake (or the Gettext library);
the rest are standard Autoconf macros.
</p>

<p>The top-level <samp>Makefile.am</samp>:
</p>
<div class="example">
<pre class="example">EXTRA_DIST = BUGS ChangeLog.O
SUBDIRS = doc intl po src tests
</pre></div>

<p>As you can see, all the work here is really done in subdirectories.
</p>
<p>The <samp>po</samp> and <samp>intl</samp> directories are automatically generated
using <code>gettextize</code>; they will not be discussed here.
</p>
<span id="index-Texinfo-file-handling-example"></span>
<span id="index-Example_002c-handling-Texinfo-files"></span>

<p>In <samp>doc/Makefile.am</samp> we see:
</p>
<div class="example">
<pre class="example">info_TEXINFOS = hello.texi
hello_TEXINFOS = gpl.texi
</pre></div>

<p>This is sufficient to build, install, and distribute the GNU Hello
manual.
</p>
<span id="index-Regression-test-example"></span>
<span id="index-Example_002c-regression-test"></span>

<p>Here is <samp>tests/Makefile.am</samp>:
</p>
<div class="example">
<pre class="example">TESTS = hello
EXTRA_DIST = hello.in testdata
</pre></div>

<p>The script <samp>hello</samp> is generated by <code>configure</code>, and is the
only test case.  <code>make check</code> will run this test.
</p>
<span id="index-INCLUDES_002c-example-usage"></span>

<p>Last we have <samp>src/Makefile.am</samp>, where all the real work is done:
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = hello
hello_SOURCES = hello.c version.c getopt.c getopt1.c getopt.h system.h
hello_LDADD = @INTLLIBS@ @ALLOCA@
localedir = $(datadir)/locale
INCLUDES = -I../intl -DLOCALEDIR=\"$(localedir)\"
</pre></div>


<hr>
</div>
<div class="section" id="etags">
<div class="header">
<p>
Previous: <a href="#Hello" accesskey="p" rel="prev">A classic program</a>, Up: <a href="#Examples" accesskey="u" rel="up">Some example packages</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Building-etags-and-ctags"></span><h3 class="section">3.3 Building etags and ctags</h3>

<span id="index-Example_002c-ctags-and-etags"></span>
<span id="index-ctags-Example"></span>
<span id="index-etags-Example"></span>

<p>Here is another, trickier example.  It shows how to generate two
programs (<code>ctags</code> and <code>etags</code>) from the same source file
(<samp>etags.c</samp>).  The difficult part is that each compilation of
<samp>etags.c</samp> requires different <code>cpp</code> flags.
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = etags ctags
ctags_SOURCES =
ctags_LDADD = ctags.o

etags.o: etags.c
        $(COMPILE) -DETAGS_REGEXPS -c etags.c

ctags.o: etags.c
        $(COMPILE) -DCTAGS -o ctags.o -c etags.c
</pre></div>

<p>Note that there is no <code>etags_SOURCES</code> definition.  Automake will
implicitly assume that there is a source file named <samp>etags.c</samp>, and
define rules to compile <samp>etags.o</samp> and link <samp>etags</samp>.  The
<code>etags.o: etags.c</code> rule supplied by the above <samp>Makefile.am</samp>,
will override the Automake generated rule to build <samp>etags.o</samp>.
</p>
<p><code>ctags_SOURCES</code> is defined to be empty—that way no implicit value
is substituted.  Because we have not listed the source of
<samp>ctags</samp>, we have to tell Automake how to link the program.  This is
the purpose of the <code>ctags_LDADD</code> line.  A <code>ctags_DEPENDENCIES</code>
variable, holding the dependencies of the <samp>ctags</samp> target will be
automatically generated by Automake from the contant of
<code>ctags_LDADD</code>.
</p>
<p>The above rules won’t work if your compiler doesn’t accept both
‘<samp>-c</samp>’ and ‘<samp>-o</samp>’.  The simplest fix for this is to introduce a
bogus dependency (to avoid problems with a parallel <code>make</code>):
</p>
<div class="example">
<pre class="example">etags.o: etags.c ctags.o
        $(COMPILE) -DETAGS_REGEXPS -c etags.c

ctags.o: etags.c
        $(COMPILE) -DCTAGS -c etags.c &amp;&amp; mv etags.o ctags.o
</pre></div>

<p>Also, these explicit rules do not work if the de-ANSI-fication feature
is used (see <a href="#ANSI">Automatic de-ANSI-fication</a>).  Supporting de-ANSI-fication requires a little
more work:
</p>
<div class="example">
<pre class="example">etags._o: etags._c ctags.o
        $(COMPILE) -DETAGS_REGEXPS -c etags.c

ctags._o: etags._c
        $(COMPILE) -DCTAGS -c etags.c &amp;&amp; mv etags._o ctags.o
</pre></div>

<p>As it turns out, there is also a much easier way to do this same task.
Some of the above techniques are useful enough that we’ve kept the
example in the manual.  However if you were to build <code>etags</code> and
<code>ctags</code> in real life, you would probably use per-program
compilation flags, like so:
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = ctags etags

ctags_SOURCES = etags.c
ctags_CFLAGS = -DCTAGS

etags_SOURCES = etags.c
etags_CFLAGS = -DETAGS_REGEXPS
</pre></div>

<p>In this case Automake will cause <samp>etags.c</samp> to be compiled twice,
with different flags.  De-ANSI-fication will work automatically.  In
this instance, the names of the object files would be chosen by
automake; they would be <samp>ctags-etags.o</samp> and <samp>etags-etags.o</samp>.
(The name of the object files rarely matters.)
</p>

<hr>
</div>
</div>
<div class="chapter" id="Invoking-Automake">
<div class="header">
<p>
Next: <a href="#configure" accesskey="n" rel="next">Scanning <samp>configure.in</samp></a>, Previous: <a href="#Examples" accesskey="p" rel="prev">Some example packages</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Creating-a-Makefile_002ein"></span><h2 class="chapter">4 Creating a <samp>Makefile.in</samp></h2>

<span id="index-Multiple-configure_002ein-files"></span>
<span id="index-Invoking-Automake"></span>
<span id="index-Automake_002c-invoking"></span>

<p>To create all the <samp>Makefile.in</samp>s for a package, run the
<code>automake</code> program in the top level directory, with no arguments.
<code>automake</code> will automatically find each appropriate
<samp>Makefile.am</samp> (by scanning <samp>configure.in</samp>; see <a href="#configure">Scanning <samp>configure.in</samp></a>)
and generate the corresponding <samp>Makefile.in</samp>.  Note that
<code>automake</code> has a rather simplistic view of what constitutes a
package; it assumes that a package has only one <samp>configure.in</samp>, at
the top.  If your package has multiple <samp>configure.in</samp>s, then you
must run <code>automake</code> in each directory holding a
<samp>configure.in</samp>.  (Alteratively, you may rely on Autoconf’s
<code>autoreconf</code>, which is able to recurse your package tree and run
<code>automake</code> where appropriate.)
</p>
<p>You can optionally give <code>automake</code> an argument; <samp>.am</samp> is
appended to the argument and the result is used as the name of the input
file.  This feature is generally only used to automatically rebuild an
out-of-date <samp>Makefile.in</samp>.  Note that <code>automake</code> must always
be run from the topmost directory of a project, even if being used to
regenerate the <samp>Makefile.in</samp> in some subdirectory.  This is
necessary because <code>automake</code> must scan <samp>configure.in</samp>, and
because <code>automake</code> uses the knowledge that a <samp>Makefile.in</samp> is
in a subdirectory to change its behavior in some cases.
</p>
<span id="index-Automake-options"></span>
<span id="index-Options_002c-Automake"></span>
<span id="index-Strictness_002c-command-line"></span>

<p><code>automake</code> accepts the following options:
</p>
<span id="index-Extra-files-distributed-with-Automake"></span>
<span id="index-Files-distributed-with-Automake"></span>
<span id="index-config_002eguess"></span>

<dl compact="compact">
<dt id="index-_002da"><span>‘<samp>-a</samp>’<a href="#index-_002da" class="copiable-anchor"> ¶</a></span></dt>
<dt><span>‘<samp>--add-missing</samp>’</span></dt>
<dd><span id="index-_002d_002dadd_002dmissing"></span>
<p>Automake requires certain common files to exist in certain situations;
for instance <samp>config.guess</samp> is required if <samp>configure.in</samp> runs
<code>AC_CANONICAL_HOST</code>.  Automake is distributed with several of these
files (see <a href="#Auxiliary-Programs">Programs automake might require</a>); this option will cause the missing
ones to be automatically added to the package, whenever possible.  In
general if Automake tells you a file is missing, try using this option.
By default Automake tries to make a symbolic link pointing to its own
copy of the missing file; this can be changed with <code>--copy</code>.
</p>
</dd>
<dt id="index-_002d_002dlibdir"><span>‘<samp>--libdir=<var>dir</var></samp>’<a href="#index-_002d_002dlibdir" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Look for Automake data files in directory <var>dir</var> instead of in the
installation directory.  This is typically used for debugging.
</p>
</dd>
<dt id="index-_002d_002dcopy"><span>‘<samp>-c</samp>’<a href="#index-_002d_002dcopy" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-_002dc"></span>
</dd>
<dt><span>‘<samp>--copy</samp>’</span></dt>
<dd><p>When used with <code>--add-missing</code>, causes installed files to be
copied.  The default is to make a symbolic link.
</p>
</dd>
<dt id="index-_002d_002dcygnus"><span>‘<samp>--cygnus</samp>’<a href="#index-_002d_002dcygnus" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Causes the generated <samp>Makefile.in</samp>s to follow Cygnus rules, instead
of GNU or Gnits rules.  For more information, see <a href="#Cygnus">The effect of <code>--cygnus</code></a>.
</p>
</dd>
<dt id="index-_002d_002dforce_002dmissing"><span>‘<samp>-f</samp>’<a href="#index-_002d_002dforce_002dmissing" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-_002df"></span>
</dd>
<dt><span>‘<samp>--force-missing</samp>’</span></dt>
<dd><p>When used with <code>--add-missing</code>, causes standard files to be reinstalled
even if they already exist in the source tree.  This involves removing
the file from the source tree before creating the new symlink (or, with
<code>--copy</code>, copying the new file).
</p>
</dd>
<dt id="index-_002d_002dforeign"><span>‘<samp>--foreign</samp>’<a href="#index-_002d_002dforeign" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Set the global strictness to ‘<samp>foreign</samp>’.  For more information, see
<a href="#Strictness">Strictness</a>.
</p>
</dd>
<dt id="index-_002d_002dgnits"><span>‘<samp>--gnits</samp>’<a href="#index-_002d_002dgnits" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Set the global strictness to ‘<samp>gnits</samp>’.  For more information, see
<a href="#Gnits">The effect of <code>--gnu</code> and <code>--gnits</code></a>.
</p>
</dd>
<dt id="index-_002d_002dgnu"><span>‘<samp>--gnu</samp>’<a href="#index-_002d_002dgnu" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Set the global strictness to ‘<samp>gnu</samp>’.  For more information, see
<a href="#Gnits">The effect of <code>--gnu</code> and <code>--gnits</code></a>.  This is the default strictness.
</p>
</dd>
<dt id="index-_002d_002dhelp"><span>‘<samp>--help</samp>’<a href="#index-_002d_002dhelp" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Print a summary of the command line options and exit.
</p>
</dd>
<dt id="index-_002di"><span>‘<samp>-i</samp>’<a href="#index-_002di" class="copiable-anchor"> ¶</a></span></dt>
<dt><span>‘<samp>--ignore-deps</samp>’</span></dt>
<dd><p>This disables the dependency tracking feature in generated
<samp>Makefile</samp>s; see <a href="#Dependencies">Automatic dependency tracking</a>.
</p>
</dd>
<dt id="index-_002d_002dinclude_002ddeps"><span>‘<samp>--include-deps</samp>’<a href="#index-_002d_002dinclude_002ddeps" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This enables the dependency tracking feature.  This feature is enabled
by default.  This option is provided for historical reasons only and
probably should not be used.
</p>
</dd>
<dt id="index-_002d_002dno_002dforce"><span>‘<samp>--no-force</samp>’<a href="#index-_002d_002dno_002dforce" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Ordinarily <code>automake</code> creates all <samp>Makefile.in</samp>s mentioned in
<samp>configure.in</samp>.  This option causes it to only update those
<samp>Makefile.in</samp>s which are out of date with respect to one of their
dependents.
</p>
</dd>
<dt id="index-_002do"><span>‘<samp>-o <var>dir</var></samp>’<a href="#index-_002do" class="copiable-anchor"> ¶</a></span></dt>
<dt><span>‘<samp>--output-dir=<var>dir</var></samp>’</span></dt>
<dd><span id="index-_002d_002doutput_002ddir"></span>
<p>Put the generated <samp>Makefile.in</samp> in the directory <var>dir</var>.
Ordinarily each <samp>Makefile.in</samp> is created in the directory of the
corresponding <samp>Makefile.am</samp>.  This option is used when making
distributions.
</p>
</dd>
<dt id="index-_002dv"><span>‘<samp>-v</samp>’<a href="#index-_002dv" class="copiable-anchor"> ¶</a></span></dt>
<dt><span>‘<samp>--verbose</samp>’</span></dt>
<dd><span id="index-_002d_002dverbose"></span>
<p>Cause Automake to print information about which files are being read or
created.
</p>
</dd>
<dt id="index-_002d_002dversion"><span>‘<samp>--version</samp>’<a href="#index-_002d_002dversion" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Print the version number of Automake and exit.
</p>
</dd>
<dt id="index-_002d_002dWerror"><span>‘<samp>--Werror</samp>’<a href="#index-_002d_002dWerror" class="copiable-anchor"> ¶</a></span></dt>
<dt><span>‘<samp>--Wno-error</samp>’</span></dt>
<dd><span id="index-_002d_002dWno_002derror"></span>
<p>‘<samp>--Werror</samp>’ will cause all warnings issued by <code>automake</code> to
become errors.  Errors affect the exit status of <code>automake</code>, while
warnings do not.  ‘<samp>--Wno-error</samp>’, the default, causes warnings to be
treated as warnings only.
</p></dd>
</dl>


<hr>
</div>
<div class="chapter" id="configure">
<div class="header">
<p>
Next: <a href="#Top-level" accesskey="n" rel="next">The top-level <samp>Makefile.am</samp></a>, Previous: <a href="#Invoking-Automake" accesskey="p" rel="prev">Creating a <samp>Makefile.in</samp></a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Scanning-configure_002ein"></span><h2 class="chapter">5 Scanning <samp>configure.in</samp></h2>

<span id="index-configure_002ein_002c-scanning"></span>
<span id="index-Scanning-configure_002ein"></span>

<p>Automake scans the package’s <samp>configure.in</samp> to determine certain
information about the package.  Some <code>autoconf</code> macros are required
and some variables must be defined in <samp>configure.in</samp>.  Automake
will also use information from <samp>configure.in</samp> to further tailor its
output.
</p>
<p>Automake also supplies some Autoconf macros to make the maintenance
easier.  These macros can automatically be put into your
<samp>aclocal.m4</samp> using the <code>aclocal</code> program.
</p>


<ul class="section-toc">
<li><a href="#Requirements" accesskey="1">Configuration requirements</a></li>
<li><a href="#Optional" accesskey="2">Other things Automake recognizes</a></li>
<li><a href="#Invoking-aclocal" accesskey="3">Auto-generating aclocal.m4</a></li>
<li><a href="#Macros" accesskey="4">Autoconf macros supplied with Automake</a></li>
<li><a href="#Extending-aclocal" accesskey="5">Writing your own aclocal macros</a></li>
</ul>
<hr>
<div class="section" id="Requirements">
<div class="header">
<p>
Next: <a href="#Optional" accesskey="n" rel="next">Other things Automake recognizes</a>, Previous: <a href="#configure" accesskey="p" rel="prev">Scanning <samp>configure.in</samp></a>, Up: <a href="#configure" accesskey="u" rel="up">Scanning <samp>configure.in</samp></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Configuration-requirements"></span><h3 class="section">5.1 Configuration requirements</h3>

<span id="index-Automake-requirements-1"></span>
<span id="index-Requirements-of-Automake"></span>

<p>The one real requirement of Automake is that your <samp>configure.in</samp>
call <code>AM_INIT_AUTOMAKE</code>.  This macro does several things which are
required for proper Automake operation (see <a href="#Macros">Autoconf macros supplied with Automake</a>).
<span id="index-AM_005fINIT_005fAUTOMAKE"></span>
</p>
<p>Here are the other macros which Automake requires but which are not run
by <code>AM_INIT_AUTOMAKE</code>:
</p>
<span id="index-AC_005fOUTPUT_002c-scanning"></span>

<dl compact="compact">
<dt><span><code>AC_CONFIG_FILES</code></span></dt>
<dt><span><code>AC_OUTPUT</code></span></dt>
<dd><p>Automake uses these to determine which files to create (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Output">Creating Output Files</a> in <cite>The Autoconf Manual</cite>).  A listed file
is considered to be an Automake generated <samp>Makefile</samp> if there
exists a file with the same name and the <samp>.am</samp> extension appended.
Typically, <code>AC_CONFIG_FILES([foo/Makefile])</code> will cause Automake to
generate <samp>foo/Makefile.in</samp> if <samp>foo/Makefile.am</samp> exists.
</p>
<p>Other listed files are treated differently.  Currently the only
difference is that an Automake <samp>Makefile</samp> is removed by <code>make
distclean</code>, while other files are removed by <code>make clean</code>.
<span id="index-AC_005fOUTPUT"></span>
</p></dd>
</dl>


<hr>
</div>
<div class="section" id="Optional">
<div class="header">
<p>
Next: <a href="#Invoking-aclocal" accesskey="n" rel="next">Auto-generating aclocal.m4</a>, Previous: <a href="#Requirements" accesskey="p" rel="prev">Configuration requirements</a>, Up: <a href="#configure" accesskey="u" rel="up">Scanning <samp>configure.in</samp></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Other-things-Automake-recognizes"></span><h3 class="section">5.2 Other things Automake recognizes</h3>

<span id="index-Macros-Automake-recognizes"></span>
<span id="index-Recognized-macros-by-Automake"></span>

<p>Automake will also recognize the use of certain macros and tailor the
generated <samp>Makefile.in</samp> appropriately.  Currently recognized macros
and their effects are:
</p>
<dl compact="compact">
<dt><span><code>AC_CONFIG_HEADER</code></span></dt>
<dd><p>Automake requires the use of <code>AM_CONFIG_HEADER</code> (see <a href="#Macros">Autoconf macros supplied with Automake</a>),
which is similar to <code>AC_CONFIG_HEADER</code> (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Configuration-Headers">Configuration Header Files</a> in <cite>The Autoconf Manual</cite>),
but does some useful Automake-specific work.
<span id="index-AC_005fCONFIG_005fHEADER"></span>
</p>
</dd>
<dt><span><code>AC_CONFIG_AUX_DIR</code></span></dt>
<dd><p>Automake will look for various helper scripts, such as
<samp>mkinstalldirs</samp>, in the directory named in this macro invocation.
If not seen, the scripts are looked for in their ‘<samp>standard</samp>’
locations (either the top source directory, or in the source directory
corresponding to the current <samp>Makefile.am</samp>, whichever is
appropriate).  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Input">Finding ‘configure’ Input</a> in <cite>The
Autoconf Manual</cite>.
<span id="index-AC_005fCONFIG_005fAUX_005fDIR"></span>
FIXME: give complete list of things looked for in this directory
</p>
</dd>
<dt><span><code>AC_PATH_XTRA</code></span></dt>
<dd><p>Automake will insert definitions for the variables defined by
<code>AC_PATH_XTRA</code> into each <samp>Makefile.in</samp> that builds a C program
or library.  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#System-Services">System Services</a> in <cite>The
Autoconf Manual</cite>.
<span id="index-AC_005fPATH_005fXTRA"></span>
</p>
</dd>
<dt><span><code>AC_CANONICAL_HOST</code></span></dt>
<dd><p>Automake will ensure that <samp>config.guess</samp> and <samp>config.sub</samp>
exist.  Also, the <samp>Makefile</samp> variables ‘<samp>host_alias</samp>’ and
‘<samp>host_triplet</samp>’ are introduced.  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Canonicalizing">Getting the Canonical System Type</a> in <cite>The Autoconf Manual</cite>.
<span id="index-AC_005fCANONICAL_005fHOST"></span>
<span id="index-host_005falias"></span>
<span id="index-host_005ftriplet"></span>
</p>
</dd>
<dt><span><code>AC_CANONICAL_SYSTEM</code></span></dt>
<dd><p>This is similar to <code>AC_CANONICAL_HOST</code>, but also defines the
<samp>Makefile</samp> variables ‘<samp>build_alias</samp>’ and ‘<samp>target_alias</samp>’.
See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Canonicalizing">Getting the Canonical System Type</a> in <cite>The
Autoconf Manual</cite>.
<span id="index-AC_005fCANONICAL_005fSYSTEM"></span>
<span id="index-build_005falias"></span>
<span id="index-target_005falias"></span>
</p>
</dd>
<dt><span><code>AC_FUNC_ALLOCA</code></span></dt>
<dt><span><code>AC_FUNC_ERROR_AT_LINE</code></span></dt>
<dt><span><code>AC_FUNC_FNMATCH</code></span></dt>
<dt><span><code>AC_FUNC_GETLOADAVG</code></span></dt>
<dt><span><code>AC_FUNC_MEMCMP</code></span></dt>
<dt><span><code>AC_FUNC_MKTIME</code></span></dt>
<dt><span><code>AC_FUNC_OBSTACK</code></span></dt>
<dt><span><code>AC_FUNC_STRTOD</code></span></dt>
<dt><span><code>AC_REPLACE_FUNCS</code></span></dt>
<dt><span><code>AC_REPLACE_GNU_GETOPT</code></span></dt>
<dt><span><code>AC_STRUCT_ST_BLOCKS</code></span></dt>
<dt><span><code>AM_WITH_REGEX</code></span></dt>
<dd><p>Automake will ensure that the appropriate dependencies are generated for
the objects corresponding to these macros.  Also, Automake will verify
that the appropriate source files are part of the distribution.  Note
that Automake does not come with any of the C sources required to use
these macros, so <code>automake -a</code> will not install the sources.
See <a href="#A-Library">Building a library</a>, for more information.  Also, see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Functions">Particular Function Checks</a> in <cite>The Autoconf Manual</cite>.
<span id="index-AC_005fFUNC_005fALLOCA"></span>
<span id="index-AC_005fFUNC_005fERROR_005fAT_005fLINE"></span>
<span id="index-AC_005fFUNC_005fFNMATCH"></span>
<span id="index-AC_005fFUNC_005fGETLOADAVG"></span>
<span id="index-AC_005fFUNC_005fMEMCMP"></span>
<span id="index-AC_005fFUNC_005fMKTIME"></span>
<span id="index-AC_005fFUNC_005fOBSTACK"></span>
<span id="index-AC_005fFUNC_005fSTRTOD"></span>
<span id="index-AC_005fREPLACE_005fFUNCS"></span>
<span id="index-AC_005fREPLACE_005fGNU_005fGETOPT"></span>
<span id="index-AC_005fSTRUCT_005fST_005fBLOCKS"></span>
<span id="index-AM_005fWITH_005fREGEX"></span>
</p>
</dd>
<dt><span><code>AC_LIBOBJ</code></span></dt>
<dt><span><code>LIBOBJS</code></span></dt>
<dt><span><code>AC_LIBSOURCE</code></span></dt>
<dt><span><code>AC_LIBSOURCES</code></span></dt>
<dd><p>Automake will detect statements which put <samp>.o</samp> files into
<code>LIBOBJS</code>, or pass <samp>.o</samp> files to <code>AC_LIBOBJ</code>, and will
treat these additional files as if they were discovered via
<code>AC_REPLACE_FUNCS</code>.  Similarly, Automake will also distribute file
listed in <code>AC_LIBSOURCE</code> and <code>AC_LIBSOURCES</code>.
</p>
<p>Note that assignments to <code>LIBOBJS</code> is a construct which is being
phased out; they will be ignored in a future release of Automake.  You
should call the <code>AC_LIBOBJ</code> macro instead.  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Generic-Functions">Generic Function Checks</a> in <cite>The Autoconf Manual</cite>.
</p>
<span id="index-AC_005fLIBOBJ"></span>
<span id="index-AC_005fLIBSOURCE"></span>
<span id="index-AC_005fLIBSOURCES"></span>
<span id="index-LIBOBJS"></span>

</dd>
<dt><span><code>AC_PROG_RANLIB</code></span></dt>
<dd><p>This is required if any libraries are built in the package.
See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular Program Checks</a> in <cite>The
Autoconf Manual</cite>.
<span id="index-AC_005fPROG_005fRANLIB"></span>
</p>
</dd>
<dt><span><code>AC_PROG_CXX</code></span></dt>
<dd><p>This is required if any C++ source is included.  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular Program Checks</a> in <cite>The Autoconf Manual</cite>.
<span id="index-AC_005fPROG_005fCXX"></span>
</p>
</dd>
<dt><span><code>AC_PROG_F77</code></span></dt>
<dd><p>This is required if any Fortran 77 source is included.  This macro is
distributed with Autoconf version 2.13 and later.  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular Program Checks</a> in <cite>The Autoconf Manual</cite>.
<span id="index-AC_005fPROG_005fF77"></span>
</p>
</dd>
<dt><span><code>AC_F77_LIBRARY_LDFLAGS</code></span></dt>
<dd><p>This is required for programs and shared libraries that are a mixture of
languages that include Fortran 77 (see <a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a>).  See <a href="#Macros">Autoconf macros supplied with Automake</a>.
<span id="index-AC_005fF77_005fLIBRARY_005fLDFLAGS"></span>
</p>
</dd>
<dt><span><code>AC_PROG_LIBTOOL</code></span></dt>
<dd><p>Automake will turn on processing for <code>libtool</code> (see <a data-manual="libtool" href="https://www.gnu.org/software/libtool/manual/libtool.html#Top">Introduction</a> in <cite>The Libtool Manual</cite>).
<span id="index-AC_005fPROG_005fLIBTOOL"></span>
</p>
</dd>
<dt><span><code>AC_PROG_YACC</code></span></dt>
<dd><p>If a Yacc source file is seen, then you must either use this macro or
define the variable ‘<samp>YACC</samp>’ in <samp>configure.in</samp>.  The former is
preferred (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular Program Checks</a> in <cite>The Autoconf Manual</cite>).
<span id="index-AC_005fPROG_005fYACC"></span>
<span id="index-YACC"></span>
</p>
</dd>
<dt><span><code>AC_PROG_LEX</code></span></dt>
<dd><p>If a Lex source file is seen, then this macro must be used.
See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular Program Checks</a> in <cite>The
Autoconf Manual</cite>.
<span id="index-AC_005fPROG_005fLEX"></span>
</p>
</dd>
<dt><span><code>AM_C_PROTOTYPES</code></span></dt>
<dd><p>This is required when using automatic de-ANSI-fication; see <a href="#ANSI">Automatic de-ANSI-fication</a>.
<span id="index-AM_005fC_005fPROTOTYPES"></span>
</p>
</dd>
<dt><span><code>AM_GNU_GETTEXT</code></span></dt>
<dd><p>This macro is required for packages which use GNU gettext
(see <a href="#gettext">Gettext</a>).  It is distributed with gettext.  If Automake sees
this macro it ensures that the package meets some of gettext’s
requirements.
<span id="index-AM_005fGNU_005fGETTEXT"></span>
</p>
</dd>
<dt id="index-_002d_002denable_002dmaintainer_002dmode"><span><code>AM_MAINTAINER_MODE</code><a href="#index-_002d_002denable_002dmaintainer_002dmode" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This macro adds a ‘<samp>--enable-maintainer-mode</samp>’ option to
<code>configure</code>.  If this is used, <code>automake</code> will cause
‘<samp>maintainer-only</samp>’ rules to be turned off by default in the
generated <samp>Makefile.in</samp>s.  This macro is disallowed in ‘<samp>Gnits</samp>’
mode (see <a href="#Gnits">The effect of <code>--gnu</code> and <code>--gnits</code></a>).  This macro defines the ‘<samp>MAINTAINER_MODE</samp>’
conditional, which you can use in your own <samp>Makefile.am</samp>.
<span id="index-AM_005fMAINTAINER_005fMODE"></span>
</p>
</dd>
<dt><span><code>AC_SUBST</code></span></dt>
<dt><span><code>AC_CHECK_TOOL</code></span></dt>
<dt><span><code>AC_CHECK_PROG</code></span></dt>
<dt><span><code>AC_CHECK_PROGS</code></span></dt>
<dt><span><code>AC_PATH_PROG</code></span></dt>
<dt><span><code>AC_PATH_PROGS</code></span></dt>
<dd><p>For each of these macros, the first argument is automatically defined as
a variable in each generated <samp>Makefile.in</samp>.  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Setting-Output-Variables">Setting Output Variables</a> in <cite>The Autoconf Manual</cite>,
and <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Generic-Programs">Generic Program Checks</a> in <cite>The
Autoconf Manual</cite>.
<span id="index-AC_005fSUBST"></span>
<span id="index-AC_005fCHECK_005fTOOL"></span>
<span id="index-AC_005fCHECK_005fPROG"></span>
<span id="index-AC_005fCHECK_005fPROGS"></span>
<span id="index-AC_005fPATH_005fPROG"></span>
<span id="index-AC_005fPATH_005fPROGS"></span>
</p>
</dd>
</dl>


<hr>
</div>
<div class="section" id="Invoking-aclocal">
<div class="header">
<p>
Next: <a href="#Macros" accesskey="n" rel="next">Autoconf macros supplied with Automake</a>, Previous: <a href="#Optional" accesskey="p" rel="prev">Other things Automake recognizes</a>, Up: <a href="#configure" accesskey="u" rel="up">Scanning <samp>configure.in</samp></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Auto_002dgenerating-aclocal_002em4"></span><h3 class="section">5.3 Auto-generating aclocal.m4</h3>

<span id="index-Invoking-aclocal"></span>
<span id="index-aclocal_002c-Invoking"></span>

<p>Automake includes a number of Autoconf macros which can be used in your
package; some of them are actually required by Automake in certain
situations.  These macros must be defined in your <samp>aclocal.m4</samp>;
otherwise they will not be seen by <code>autoconf</code>.
</p>
<p>The <code>aclocal</code> program will automatically generate <samp>aclocal.m4</samp>
files based on the contents of <samp>configure.in</samp>.  This provides a
convenient way to get Automake-provided macros, without having to
search around.  Also, the <code>aclocal</code> mechanism allows other packages
to supply their own macros.
</p>
<p>At startup, <code>aclocal</code> scans all the <samp>.m4</samp> files it can find,
looking for macro definitions.  Then it scans <samp>configure.in</samp>.  Any
mention of one of the macros found in the first step causes that macro,
and any macros it in turn requires, to be put into <samp>aclocal.m4</samp>.
</p>
<p>The contents of <samp>acinclude.m4</samp>, if it exists, are also
automatically included in <samp>aclocal.m4</samp>.  This is useful for
incorporating local macros into <samp>configure</samp>.
</p>
<p><code>aclocal</code> tries to be smart about looking for new <code>AC_DEFUN</code>s
in the files it scans.  It also
tries to copy the full text of the scanned file into <samp>aclocal.m4</samp>,
including both ‘<samp>#</samp>’ and ‘<samp>dnl</samp>’ comments.  If you want to make a
comment which will be completely ignored by <code>aclocal</code>, use
‘<samp>##</samp>’ as the comment leader.
</p>
<p><code>aclocal</code> accepts the following options:
</p>
<dl compact="compact">
<dt id="index-_002d_002dacdir"><span><code>--acdir=<var>dir</var></code><a href="#index-_002d_002dacdir" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Look for the macro files in <var>dir</var> instead of the installation
directory.  This is typically used for debugging.
</p>
</dd>
<dt id="index-_002d_002dhelp-1"><span><code>--help</code><a href="#index-_002d_002dhelp-1" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Print a summary of the command line options and exit.
</p>
</dd>
<dt id="index-_002dI"><span><code>-I <var>dir</var></code><a href="#index-_002dI" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Add the directory <var>dir</var> to the list of directories searched for
<samp>.m4</samp> files.
</p>
</dd>
<dt id="index-_002d_002doutput"><span><code>--output=<var>file</var></code><a href="#index-_002d_002doutput" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Cause the output to be put into <var>file</var> instead of <samp>aclocal.m4</samp>.
</p>
</dd>
<dt id="index-_002d_002dprint_002dac_002ddir"><span><code>--print-ac-dir</code><a href="#index-_002d_002dprint_002dac_002ddir" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Prints the name of the directory which <code>aclocal</code> will search to
find third-party <samp>.m4</samp> files.  When this option is given, normal
processing is suppressed.  This option can be used by a package to
determine where to install a macro file.
</p>
</dd>
<dt id="index-_002d_002dverbose-1"><span><code>--verbose</code><a href="#index-_002d_002dverbose-1" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Print the names of the files it examines.
</p>
</dd>
<dt id="index-_002d_002dversion-1"><span><code>--version</code><a href="#index-_002d_002dversion-1" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Print the version number of Automake and exit.
</p></dd>
</dl>


<hr>
</div>
<div class="section" id="Macros">
<div class="header">
<p>
Next: <a href="#Extending-aclocal" accesskey="n" rel="next">Writing your own aclocal macros</a>, Previous: <a href="#Invoking-aclocal" accesskey="p" rel="prev">Auto-generating aclocal.m4</a>, Up: <a href="#configure" accesskey="u" rel="up">Scanning <samp>configure.in</samp></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Autoconf-macros-supplied-with-Automake"></span><h3 class="section">5.4 Autoconf macros supplied with Automake</h3>

<p>Automake ships with several Autoconf macros that you can use from your
<samp>configure.in</samp>.  When you use one of them it will be included by
<code>aclocal</code> in <samp>aclocal.m4</samp>.
</p>


<ul class="section-toc">
<li><a href="#Public-macros" accesskey="1">Public macros</a></li>
<li><a href="#Private-macros" accesskey="2">Private macros</a></li>
</ul>
<hr>
<div class="subsection" id="Public-macros">
<div class="header">
<p>
Next: <a href="#Private-macros" accesskey="n" rel="next">Private macros</a>, Previous: <a href="#Macros" accesskey="p" rel="prev">Autoconf macros supplied with Automake</a>, Up: <a href="#Macros" accesskey="u" rel="up">Autoconf macros supplied with Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Public-macros-1"></span><h4 class="subsection">5.4.1 Public macros</h4>

<dl compact="compact">
<dt><span><code>AM_CONFIG_HEADER</code></span></dt>
<dd><p>Automake will generate rules to automatically regenerate the config
header.
<span id="index-AM_005fCONFIG_005fHEADER"></span>
</p>
</dd>
<dt><span><code>AM_ENABLE_MULTILIB</code></span></dt>
<dd><p>This is used when a “multilib” library is being built.  The first
optional argument is the name of the <samp>Makefile</samp> being generated; it
defaults to ‘<samp>Makefile</samp>’.  The second option argument is used to find
the top source directory; it defaults to the empty string (generally
this should not be used unless you are familiar with the internals).
See <a href="#Multilibs">Support for Multilibs</a>.
</p>
</dd>
<dt><span><code>AM_C_PROTOTYPES</code></span></dt>
<dd><p>Check to see if function prototypes are understood by the compiler.  If
so, define ‘<samp>PROTOTYPES</samp>’ and set the output variables ‘<samp>U</samp>’ and
‘<samp>ANSI2KNR</samp>’ to the empty string.  Otherwise, set ‘<samp>U</samp>’ to
‘<samp>_</samp>’ and ‘<samp>ANSI2KNR</samp>’ to ‘<samp>./ansi2knr</samp>’.  Automake uses these
values to implement automatic de-ANSI-fication.
<span id="index-AM_005fC_005fPROTOTYPES-1"></span>
</p>
</dd>
<dt><span><code>AM_HEADER_TIOCGWINSZ_NEEDS_SYS_IOCTL</code></span></dt>
<dd><p>If the use of <code>TIOCGWINSZ</code> requires <samp>&lt;sys/ioctl.h&gt;</samp>, then
define <code>GWINSZ_IN_SYS_IOCTL</code>.  Otherwise <code>TIOCGWINSZ</code> can be
found in <samp>&lt;termios.h&gt;</samp>.
<span id="index-AM_005fHEADER_005fTIOCGWINSZ_005fNEEDS_005fSYS_005fIOCTL"></span>
</p>
</dd>
<dt><span><code>AM_INIT_AUTOMAKE([OPTIONS])</code></span></dt>
<dt><span><code>AM_INIT_AUTOMAKE(PACKAGE, VERSION, [NO-DEFINE])</code></span></dt>
<dd><p>Runs many macros required for proper operation of the generated Makefiles.
</p>
<p>This macro has two forms, the second of which has two required
arguments: the package and the version number.  This latter form is
obsolete because the <var>package</var> and <var>version</var> can be obtained
from Autoconf’s <code>AC_INIT</code> macro (which itself has an old and a new
form).
</p>
<p>If your <samp>configure.in</samp> has:
</p><div class="example">
<pre class="example">AC_INIT(src/foo.c)
AM_INIT_AUTOMAKE(mumble, 1.5)
</pre></div>
<p>you can modernize it as follow:
</p><div class="example">
<pre class="example">AC_INIT(mumble, 1.5)
AC_CONFIG_SRCDIR(src/foo.c)
AM_INIT_AUTOMAKE
</pre></div>

<p>Note that if you’re upgrading your <samp>configure.in</samp> from an earlier
version of Automake, it is not always correct to simply move the package
and version arguments from <code>AM_INIT_AUTOMAKE</code> directly to
<code>AC_INIT</code>, as in the example above.  The first argument of
<code>AC_INIT</code> is the name of your package (e.g. ‘<samp>GNU Automake</samp>’),
not the tarball name (e.g. ‘<samp>automake</samp>’) you used to pass to
<code>AM_INIT_AUTOMAKE</code>.  Autoconf’s rule to derive a tarball name from
the package name should work for most but not all packages.  Especially,
if your tarball name is not all lower case, you will have to use the
four-argument form of <code>AC_INIT</code> (supported in Autoconf versions
greater than 2.52g).
</p>
<p>When <code>AM_INIT_AUTOMAKE</code> is called with a single argument, it is
interpreted as a space-separated list of Automake options which should
be applied to every <samp>Makefile.am</samp> in the tree.  The effect is as if
each option were listed in <code>AUTOMAKE_OPTIONS</code>.
</p>
<p>By default this macro <code>AC_DEFINE</code>’s ‘<samp>PACKAGE</samp>’ and
‘<samp>VERSION</samp>’.  This can be avoided by passing the ‘<samp>no-define</samp>’
option, as in:
</p><div class="example">
<pre class="example">AM_INIT_AUTOMAKE([gnits 1.5 no-define dist-bzip2])
</pre></div>
<p>or by passing a third non-empty argument to the obsolete form.
</p>
<span id="index-PACKAGE_002c-prevent-definition"></span>
<span id="index-VERSION_002c-prevent-definition"></span>


</dd>
<dt><span><code>AM_PATH_LISPDIR</code></span></dt>
<dd><p>Searches for the program <code>emacs</code>, and, if found, sets the output
variable <code>lispdir</code> to the full path to Emacs’ site-lisp directory.
</p>
<p>Note that this test assumes the <code>emacs</code> found to be a version that
supports Emacs Lisp (such as <small>GNU</small> Emacs or XEmacs).  Other emacsen
can cause this test to hang (some, like old versions of MicroEmacs,
start up in interactive mode, requiring ‘<samp>C-x C-c</samp>’ to exit, which
is hardly obvious for a non-emacs user).  In most cases, however, you
should be able to use ‘<samp>C-c</samp>’ to kill the test.  In order to avoid
problems, you can set <code>EMACS</code> to “no” in the environment, or
use the ‘<samp>--with-lispdir</samp>’ option to <code>configure</code> to
explictly set the correct path (if you’re sure you have an <code>emacs</code>
that supports Emacs Lisp.
<span id="index-AM_005fPATH_005fLISPDIR"></span>
</p>
</dd>
<dt><span><code>AM_PROG_AS</code></span></dt>
<dd><p>Use this macro when you have assembly code in your project.  This will
choose the assembler for you (by default the C compiler) and set
<code>CCAS</code>, and will also set <code>CCASFLAGS</code> if required.
</p>
</dd>
<dt><span><code>AM_PROG_CC_C_O</code></span></dt>
<dd><p>This is like <code>AC_PROG_CC_C_O</code>, but it generates its results in the
manner required by automake.  You must use this instead of
<code>AC_PROG_CC_C_O</code> when you need this functionality.
</p>
</dd>
<dt><span><code>AM_PROG_CC_STDC</code></span></dt>
<dd><p>If the C compiler is not in ANSI C mode by default, try to add an option
to output variable <code>CC</code> to make it so.  This macro tries various
options that select ANSI C on some system or another.  It considers the
compiler to be in ANSI C mode if it handles function prototypes correctly.
</p>
<p>If you use this macro, you should check after calling it whether the C
compiler has been set to accept ANSI C; if not, the shell variable
<code>am_cv_prog_cc_stdc</code> is set to ‘<samp>no</samp>’.  If you wrote your source
code in ANSI C, you can make an un-ANSIfied copy of it by using the
<code>ansi2knr</code> option (see <a href="#ANSI">Automatic de-ANSI-fication</a>).
</p>
</dd>
<dt id="index-HP_002dUX-10_002c-lex-problems"><span><code>AM_PROG_LEX</code><a href="#index-HP_002dUX-10_002c-lex-problems" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-lex-problems-with-HP_002dUX-10"></span>
<p>Like <code>AC_PROG_LEX</code> (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular
Program Checks</a> in <cite>The Autoconf Manual</cite>), but uses the
<code>missing</code> script on systems that do not have <code>lex</code>.
‘<samp>HP-UX 10</samp>’ is one such system.
</p>
</dd>
<dt><span><code>AM_PROG_GCJ</code></span></dt>
<dd><p>This macro finds the <code>gcj</code> program or causes an error.  It sets
‘<samp>GCJ</samp>’ and ‘<samp>GCJFLAGS</samp>’.  <code>gcj</code> is the Java front-end to the
GNU Compiler Collection.
<span id="index-AM_005fPROG_005fGCJ"></span>
</p>
</dd>
<dt id="index-am_005fcv_005fsys_005fposix_005ftermios"><span><code>AM_SYS_POSIX_TERMIOS</code><a href="#index-am_005fcv_005fsys_005fposix_005ftermios" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-POSIX-termios-headers"></span>
<span id="index-termios-POSIX-headers"></span>
<p>Check to see if POSIX termios headers and functions are available on the
system.  If so, set the shell variable <code>am_cv_sys_posix_termios</code> to
‘<samp>yes</samp>’.  If not, set the variable to ‘<samp>no</samp>’.
</p>
</dd>
<dt id="index-WITH_005fDMALLOC"><span><code>AM_WITH_DMALLOC</code><a href="#index-WITH_005fDMALLOC" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-dmalloc_002c-support-for"></span>
<span id="index-_002d_002dwith_002ddmalloc"></span>
<p>Add support for the
<a href="ftp://ftp.letters.com/src/dmalloc/dmalloc.tar.gz">dmalloc</a>
package.  If the user configures with ‘<samp>--with-dmalloc</samp>’, then define
<code>WITH_DMALLOC</code> and add ‘<samp>-ldmalloc</samp>’ to <code>LIBS</code>.
</p>
</dd>
<dt id="index-WITH_005fREGEX"><span><code>AM_WITH_REGEX</code><a href="#index-WITH_005fREGEX" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-_002d_002dwith_002dregex"></span>
<span id="index-regex-package"></span>
<span id="index-rx-package"></span>
<p>Adds ‘<samp>--with-regex</samp>’ to the <code>configure</code> command line.  If
specified (the default), then the ‘<samp>regex</samp>’ regular expression
library is used, <samp>regex.o</samp> is put into ‘<samp>LIBOBJS</samp>’, and
‘<samp>WITH_REGEX</samp>’ is defined.  If ‘<samp>--without-regex</samp>’ is given, then
the ‘<samp>rx</samp>’ regular expression library is used, and <samp>rx.o</samp> is put
into ‘<samp>LIBOBJS</samp>’.
</p>
</dd>
</dl>

<hr>
</div>
<div class="subsection" id="Private-macros">
<div class="header">
<p>
Previous: <a href="#Public-macros" accesskey="p" rel="prev">Public macros</a>, Up: <a href="#Macros" accesskey="u" rel="up">Autoconf macros supplied with Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Private-macros-1"></span><h4 class="subsection">5.4.2 Private macros</h4>

<p>The following macros are private macros you should not call directly.
They are called by the other public macros when appropriate.  Do not
rely on them, as they might be changed in a future version.  Consider
them as implementation details; or better, do not consider them at all:
skip this section!
</p>
<dl compact="compact">
<dt><span><code>_AM_DEPENDENCIES</code></span></dt>
<dt><span><code>AM_SET_DEPDIR</code></span></dt>
<dt><span><code>AM_DEP_TRACK</code></span></dt>
<dt><span><code>AM_OUTPUT_DEPENDENCY_COMMANDS</code></span></dt>
<dd><p>These macros are used to implement automake’s automatic dependency
tracking scheme.  They are called automatically by automake when
required, and there should be no need to invoke them manually.
</p>
</dd>
<dt><span><code>AM_MAKE_INCLUDE</code></span></dt>
<dd><p>This macro is used to discover how the user’s <code>make</code> handles
<code>include</code> statements.  This macro is automatically invoked when
needed; there should be no need to invoke it manually.
</p>
</dd>
<dt><span><code>AM_PROG_INSTALL_STRIP</code></span></dt>
<dd><p>This is used to find a version of <code>install</code> which can be used to
<code>strip</code> a program at installation time.  This macro is
automatically included when required.
</p>
</dd>
<dt><span><code>AM_SANITY_CHECK</code></span></dt>
<dd><p>This checks to make sure that a file created in the build directory is
newer than a file in the source directory.  This can fail on systems
where the clock is set incorrectly.  This macro is automatically run
from <code>AM_INIT_AUTOMAKE</code>.
</p>
</dd>
</dl>



<hr>
</div>
</div>
<div class="section" id="Extending-aclocal">
<div class="header">
<p>
Previous: <a href="#Macros" accesskey="p" rel="prev">Autoconf macros supplied with Automake</a>, Up: <a href="#configure" accesskey="u" rel="up">Scanning <samp>configure.in</samp></a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Writing-your-own-aclocal-macros"></span><h3 class="section">5.5 Writing your own aclocal macros</h3>

<span id="index-aclocal_002c-extending"></span>
<span id="index-Extending-aclocal"></span>

<p>The <code>aclocal</code> program doesn’t have any built-in knowledge of any
macros, so it is easy to extend it with your own macros.
</p>
<p>This is mostly used for libraries which want to supply their own
Autoconf macros for use by other programs.  For instance the
<code>gettext</code> library supplies a macro <code>AM_GNU_GETTEXT</code> which
should be used by any package using <code>gettext</code>.  When the library is
installed, it installs this macro so that <code>aclocal</code> will find it.
</p>
<p>A file of macros should be a series of <code>AC_DEFUN</code>’s.  The
<code>aclocal</code> programs also understands <code>AC_REQUIRE</code>, so it is
safe to put each macro in a separate file.  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Prerequisite-Macros">Prerequisite Macros</a> in <cite>The Autoconf Manual</cite>, and <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Macro-Definitions">Macro Definitions</a> in <cite>The Autoconf Manual</cite>.
</p>
<p>A macro file’s name should end in <samp>.m4</samp>.  Such files should be
installed in <code>`aclocal --print-ac-dir`</code> (which usually happens to
be <samp>$(datadir)/aclocal</samp>).
</p>

<hr>
</div>
</div>
<div class="chapter" id="Top-level">
<div class="header">
<p>
Next: <a href="#Alternative" accesskey="n" rel="next">An Alternative Approach to Subdirectories</a>, Previous: <a href="#configure" accesskey="p" rel="prev">Scanning <samp>configure.in</samp></a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="The-top_002dlevel-Makefile_002eam"></span><h2 class="chapter">6 The top-level <samp>Makefile.am</samp></h2>

<span id="index-SUBDIRS_002c-explained"></span>

<p>In packages with subdirectories, the top level <samp>Makefile.am</samp> must
tell Automake which subdirectories are to be built.  This is done via
the <code>SUBDIRS</code> variable.
<span id="index-SUBDIRS"></span>
</p>
<p>The <code>SUBDIRS</code> macro holds a list of subdirectories in which
building of various sorts can occur.  Many targets (e.g. <code>all</code>) in
the generated <samp>Makefile</samp> will run both locally and in all specified
subdirectories.  Note that the directories listed in <code>SUBDIRS</code> are
not required to contain <samp>Makefile.am</samp>s; only <samp>Makefile</samp>s
(after configuration).  This allows inclusion of libraries from packages
which do not use Automake (such as <code>gettext</code>).  The directories
mentioned in <code>SUBDIRS</code> must be direct children of the current
directory.  For instance, you cannot put ‘<samp>src/subdir</samp>’ into
<code>SUBDIRS</code>.
</p>
<p>In packages that use subdirectories, the top-level <samp>Makefile.am</samp> is
often very short.  For instance, here is the <samp>Makefile.am</samp> from the
GNU Hello distribution:
</p>
<div class="example">
<pre class="example">EXTRA_DIST = BUGS ChangeLog.O README-alpha
SUBDIRS = doc intl po src tests
</pre></div>

<span id="index-SUBDIRS_002c-overriding"></span>
<span id="index-Overriding-SUBDIRS"></span>

<p>It is possible to override the <code>SUBDIRS</code> variable if, like in the
case of GNU <code>Inetutils</code>, you want to only build a subset of the
entire package.  In your <samp>Makefile.am</samp> include:
</p>
<div class="example">
<pre class="example">SUBDIRS = @MY_SUBDIRS@
</pre></div>

<p>Then in your <samp>configure.in</samp> you can specify:
</p>
<div class="example">
<pre class="example">MY_SUBDIRS="src doc lib po"
AC_SUBST(MY_SUBDIRS)
</pre></div>

<p>(Note that we don’t use the variable name <code>SUBDIRS</code> in our
<samp>configure.in</samp>; that would cause Automake to believe that every
<samp>Makefile.in</samp> should recurse into the listed subdirectories.)
</p>
<p>The upshot of this is that Automake is tricked into building the package
to take the subdirs, but doesn’t actually bind that list until
<code>configure</code> is run.
</p>
<p>Although the <code>SUBDIRS</code> macro can contain configure substitutions
(e.g. ‘<samp>@DIRS@</samp>’); Automake itself does not actually examine the
contents of this variable.
</p>
<p>If <code>SUBDIRS</code> is defined, then your <samp>configure.in</samp> must include
<code>AC_PROG_MAKE_SET</code>.  When Automake invokes <code>make</code> in a
subdirectory, it uses the value of the <code>MAKE</code> variable.  It passes
the value of the variable <code>AM_MAKEFLAGS</code> to the <code>make</code>
invocation; this can be set in <samp>Makefile.am</samp> if there are flags you
must always pass to <code>make</code>.
<span id="index-MAKE"></span>
<span id="index-MAKEFLAGS"></span>
</p>
<p>The use of <code>SUBDIRS</code> is not restricted to just the top-level
<samp>Makefile.am</samp>.  Automake can be used to construct packages of
arbitrary depth.
</p>
<p>By default, Automake generates <samp>Makefiles</samp> which work depth-first
(‘<samp>postfix</samp>’).  However, it is possible to change this ordering.  You
can do this by putting ‘<samp>.</samp>’ into <code>SUBDIRS</code>.  For instance,
putting ‘<samp>.</samp>’  first will cause a ‘<samp>prefix</samp>’ ordering of
directories.  All ‘<samp>clean</samp>’ targets are run in reverse order of build
targets.
</p>
<p>Sometimes, such as when running <code>make dist</code>, you want all possible
subdirectories to be examined.  In this case Automake will use
<code>DIST_SUBDIRS</code>, instead of <code>SUBDIRS</code>, to determine where to
recurse.  This variable will also be used when the user runs
<code>distclean</code> or <code>maintainer-clean</code>.  It should be set to the
full list of subdirectories in the project.  If this macro is not set,
Automake will attempt to set it for you.
</p>

<hr>
</div>
<div class="chapter" id="Alternative">
<div class="header">
<p>
Next: <a href="#Rebuilding" accesskey="n" rel="next">Rebuilding Makefiles</a>, Previous: <a href="#Top-level" accesskey="p" rel="prev">The top-level <samp>Makefile.am</samp></a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="An-Alternative-Approach-to-Subdirectories"></span><h2 class="chapter">7 An Alternative Approach to Subdirectories</h2>

<p>If you’ve ever read Peter Miller’s excellent paper,
<a href="http://www.pcug.org.au/~millerp/rmch/recu-make-cons-harm.html">Recursive Make Considered Harmful</a>, the preceding section on the use of
subdirectories will probably come as unwelcome advice.  For those who
haven’t read the paper, Miller’s main thesis is that recursive
<code>make</code> invocations are both slow and error-prone.
</p>
<p>Automake provides sufficient cross-directory support <a id="DOCF2" href="#FOOT2"><sup>2</sup></a> to enable you
to write a single <samp>Makefile.am</samp> for a complex multi-directory
package.
</p>

<p>By default an installable file specified in a subdirectory will have its
directory name stripped before installation.  For instance, in this
example, the header file will be installed as
<samp>$(includedir)/stdio.h</samp>:
</p>
<div class="example">
<pre class="example">include_HEADERS = inc/stdio.h
</pre></div>

<span id="index-nobase_005f"></span>
<span id="index-Path-stripping_002c-avoiding"></span>
<span id="index-Avoiding-path-stripping"></span>

<p>However, the ‘<samp>nobase_</samp>’ prefix can be used to circumvent this path
stripping.  In this example, the header file will be installed as
<samp>$(includedir)/sys/types.h</samp>:
</p>
<div class="example">
<pre class="example">nobase_include_HEADERS = sys/types.h
</pre></div>

<span id="index-nobase_005f-and-dist_005f-or-nodist_005f"></span>
<span id="index-dist_005f-and-nobase_005f"></span>
<span id="index-nodist_005f-and-nobase_005f"></span>

<p>‘<samp>nobase_</samp>’ should be specified first when used in conjonction with
either ‘<samp>dist_</samp>’ or ‘<samp>nodist_</samp>’ (see <a href="#Dist">What Goes in a Distribution</a>).  For instance:
</p>
<div class="example">
<pre class="example">nobase_dist_pkgdata_DATA = images/vortex.pgm
</pre></div>

<hr>
</div>
<div class="chapter" id="Rebuilding">
<div class="header">
<p>
Next: <a href="#Programs" accesskey="n" rel="next">Building Programs and Libraries</a>, Previous: <a href="#Alternative" accesskey="p" rel="prev">An Alternative Approach to Subdirectories</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Rebuilding-Makefiles"></span><h2 class="chapter">8 Rebuilding Makefiles</h2>

<p>Automake generates rules to automatically rebuild <samp>Makefile</samp>s,
<samp>configure</samp>, and other derived files like <samp>Makefile.in</samp>.
</p>
<p>If you are using <code>AM_MAINTAINER_MODE</code> in <samp>configure.in</samp>, then
these automatic rebuilding rules are only enabled in maintainer mode.
</p>
<p>Sometimes you need to run <code>aclocal</code> with an argument like <code>-I</code>
to tell it where to find <samp>.m4</samp> files.  Since sometimes <code>make</code>
will automatically run <code>aclocal</code>, you need a way to specify these
arguments.  You can do this by defining <code>ACLOCAL_AMFLAGS</code>; this
holds arguments which are passed verbatim to <code>aclocal</code>.  This macro
is only useful in the top-level <samp>Makefile.am</samp>.
<span id="index-ACLOCAL_005fAMFLAGS"></span>
</p>

<hr>
</div>
<div class="chapter" id="Programs">
<div class="header">
<p>
Next: <a href="#Other-objects" accesskey="n" rel="next">Other Derived Objects</a>, Previous: <a href="#Rebuilding" accesskey="p" rel="prev">Rebuilding Makefiles</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Building-Programs-and-Libraries"></span><h2 class="chapter">9 Building Programs and Libraries</h2>

<p>A large part of Automake’s functionality is dedicated to making it easy
to build programs and libraries.
</p>


<ul class="section-toc">
<li><a href="#A-Program" accesskey="1">Building a program</a></li>
<li><a href="#A-Library" accesskey="2">Building a library</a></li>
<li><a href="#A-Shared-Library" accesskey="3">Building a Shared Library</a></li>
<li><a href="#Program-and-Library-Variables" accesskey="4">Program and Library Variables</a></li>
<li><a href="#LIBOBJS" accesskey="5">Special handling for LIBOBJS and ALLOCA</a></li>
<li><a href="#Program-variables" accesskey="6">Variables used when building a program</a></li>
<li><a href="#Yacc-and-Lex" accesskey="7">Yacc and Lex support</a></li>
<li><a href="#C_002b_002b-Support" accesskey="8">C++ Support</a></li>
<li><a href="#Assembly-Support" accesskey="9">Assembly Support</a></li>
<li><a href="#Fortran-77-Support">Fortran 77 Support</a></li>
<li><a href="#Java-Support">Java Support</a></li>
<li><a href="#Support-for-Other-Languages">Support for Other Languages</a></li>
<li><a href="#ANSI">Automatic de-ANSI-fication</a></li>
<li><a href="#Dependencies">Automatic dependency tracking</a></li>
<li><a href="#EXEEXT">Support for executable extensions</a></li>
</ul>
<hr>
<div class="section" id="A-Program">
<div class="header">
<p>
Next: <a href="#A-Library" accesskey="n" rel="next">Building a library</a>, Previous: <a href="#Programs" accesskey="p" rel="prev">Building Programs and Libraries</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Building-a-program"></span><h3 class="section">9.1 Building a program</h3>

<ul class="section-toc">
<li><a href="#Introductory-blathering" accesskey="1">Introductory blathering</a></li>
<li><a href="#Conditional-compilations" accesskey="2">Conditional compilations</a></li>
<li><a href="#Linking-the-program" accesskey="3">Linking the program</a></li>
</ul>
<div class="subsection" id="Introductory-blathering">
<h4 class="subsection">9.1.1 Introductory blathering</h4>

<span id="index-PROGRAMS_002c-bindir"></span>
<span id="index-bin_005fPROGRAMS"></span>
<span id="index-sbin_005fPROGRAMS"></span>
<span id="index-libexec_005fPROGRAMS"></span>
<span id="index-pkglib_005fPROGRAMS"></span>
<span id="index-noinst_005fPROGRAMS"></span>
<span id="index-check_005fPROGRAMS"></span>

<p>In a directory containing source that gets built into a program (as
opposed to a library or a script), the ‘<samp>PROGRAMS</samp>’ primary is used.
Programs can be installed in <code>bindir</code>, <code>sbindir</code>,
<code>libexecdir</code>, <code>pkglibdir</code>, or not at all (‘<samp>noinst</samp>’).
They can also be built only for <code>make check</code>, in which case the
prefix is ‘<samp>check</samp>’.
</p>
<p>For instance:
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = hello
</pre></div>

<p>In this simple case, the resulting <samp>Makefile.in</samp> will contain code
to generate a program named <code>hello</code>.
</p>
<p>Associated with each program are several assisting variables which are
named after the program.  These variables are all optional, and have
reasonable defaults.  Each variable, its use, and default is spelled out
below; we use the “hello” example throughout.
</p>
<p>The variable <code>hello_SOURCES</code> is used to specify which source files
get built into an executable:
</p>
<div class="example">
<pre class="example">hello_SOURCES = hello.c version.c getopt.c getopt1.c getopt.h system.h
</pre></div>

<p>This causes each mentioned ‘<samp>.c</samp>’ file to be compiled into the
corresponding ‘<samp>.o</samp>’.  Then all are linked to produce <samp>hello</samp>.
</p>
<span id="index-_005fSOURCES-primary_002c-defined"></span>
<span id="index-SOURCES-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-SOURCES"></span>

<p>If ‘<samp>hello_SOURCES</samp>’ is not specified, then it defaults to the single
file <samp>hello.c</samp>; that is, the default is to compile a single C file
whose base name is the name of the program itself.  (This is a terrible
default but we are stuck with it for historical reasons.)
<span id="index-_005fSOURCES"></span>
<span id="index-SOURCES"></span>
</p>
<p>Multiple programs can be built in a single directory.  Multiple programs
can share a single source file, which must be listed in each
‘<samp>_SOURCES</samp>’ definition.
</p>
<span id="index-Header-files-in-_005fSOURCES"></span>
<span id="index-_005fSOURCES-and-header-files"></span>

<p>Header files listed in a ‘<samp>_SOURCES</samp>’ definition will be included in
the distribution but otherwise ignored.  In case it isn’t obvious, you
should not include the header file generated by <samp>configure</samp> in a
‘<samp>_SOURCES</samp>’ variable; this file should not be distributed.  Lex
(‘<samp>.l</samp>’) and Yacc (‘<samp>.y</samp>’) files can also be listed; see <a href="#Yacc-and-Lex">Yacc and Lex support</a>.
</p>
</div>
<div class="subsection" id="Conditional-compilations">
<h4 class="subsection">9.1.2 Conditional compilations</h4>

<p>You can’t put a configure substitution (e.g., ‘<samp>@FOO@</samp>’) into a
‘<samp>_SOURCES</samp>’ variable.  The reason for this is a bit hard to explain,
but suffice to say that it simply won’t work.  Automake will give an
error if you try to do this.
</p>
<span id="index-EXTRA_005fprog_005fSOURCES_002c-defined"></span>

<p>Automake must know all the source files that could possibly go into a
program, even if not all the files are built in every circumstance.
Any files which are only conditionally built should be listed in the
appropriate ‘<samp>EXTRA_</samp>’ variable.  For instance, if
<samp>hello-linux.c</samp> were conditionally included in <code>hello</code>, the
<samp>Makefile.am</samp> would contain:
</p>
<div class="example">
<pre class="example">EXTRA_hello_SOURCES = hello-linux.c
</pre></div>

<p>In this case, <samp>hello-linux.o</samp> would be added, via a
<samp>configure</samp> substitution, to <code>hello_LDADD</code> in order to cause
it to be built and linked in.
</p>
<p>An often simpler way to compile source files conditionally is to use
Automake conditionals.  For instance, you could use this construct to
conditionally use <samp>hello-linux.c</samp> or <samp>hello-generic.c</samp> as the
basis for your program <samp>hello</samp>:
</p>
<div class="example">
<pre class="example">if LINUX
hello_SOURCES = hello-linux.c
else
hello_SOURCES = hello-generic.c
endif
</pre></div>

<p>When using conditionals like this you don’t need to use the
‘<samp>EXTRA_</samp>’ variable, because Automake will examine the contents of
each variable to construct the complete list of source files.
</p>
<p>Sometimes it is useful to determine the programs that are to be built at
configure time.  For instance, GNU <code>cpio</code> only builds <code>mt</code> and
<code>rmt</code> under special circumstances.
</p>
<span id="index-EXTRA_005fPROGRAMS_002c-defined-1"></span>

<p>In this case, you must notify Automake of all the programs that can
possibly be built, but at the same time cause the generated
<samp>Makefile.in</samp> to use the programs specified by <code>configure</code>.
This is done by having <code>configure</code> substitute values into each
‘<samp>_PROGRAMS</samp>’ definition, while listing all optionally built programs
in <code>EXTRA_PROGRAMS</code>.
<span id="index-EXTRA_005fPROGRAMS"></span>
</p>
<p>Of course you can use Automake conditionals to determine the programs to
be built.
</p>
</div>
<div class="subsection" id="Linking-the-program">
<h4 class="subsection">9.1.3 Linking the program</h4>

<p>If you need to link against libraries that are not found by
<code>configure</code>, you can use <code>LDADD</code> to do so.  This variable is
used to specify additional objects or libraries to link with; it is
inappropriate for specifying specific linker flags, you should use
<code>AM_LDFLAGS</code> for this purpose.
<span id="index-LDADD"></span>
<span id="index-AM_005fLDFLAGS"></span>
</p>
<span id="index-prog_005fLDADD_002c-defined"></span>

<p>Sometimes, multiple programs are built in one directory but do not share
the same link-time requirements.  In this case, you can use the
‘<samp><var>prog</var>_LDADD</samp>’ variable (where <var>prog</var> is the name of the
program as it appears in some ‘<samp>_PROGRAMS</samp>’ variable, and usually
written in lowercase) to override the global <code>LDADD</code>.  If this
variable exists for a given program, then that program is not linked
using <code>LDADD</code>.
<span id="index-_005fLDADD"></span>
</p>
<p>For instance, in GNU cpio, <code>pax</code>, <code>cpio</code> and <code>mt</code> are
linked against the library <samp>libcpio.a</samp>.  However, <code>rmt</code> is
built in the same directory, and has no such link requirement.  Also,
<code>mt</code> and <code>rmt</code> are only built on certain architectures.  Here
is what cpio’s <samp>src/Makefile.am</samp> looks like (abridged):
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = cpio pax @MT@
libexec_PROGRAMS = @RMT@
EXTRA_PROGRAMS = mt rmt

LDADD = ../lib/libcpio.a @INTLLIBS@
rmt_LDADD =

cpio_SOURCES = …
pax_SOURCES = …
mt_SOURCES = …
rmt_SOURCES = …
</pre></div>

<span id="index-_005fLDFLAGS_002c-defined"></span>

<p>‘<samp><var>prog</var>_LDADD</samp>’ is inappropriate for passing program-specific
linker flags (except for ‘<samp>-l</samp>’, ‘<samp>-L</samp>’, ‘<samp>-dlopen</samp>’ and
‘<samp>-dlpreopen</samp>’).  So, use the ‘<samp><var>prog</var>_LDFLAGS</samp>’ variable for
this purpose.
<span id="index-_005fLDFLAGS"></span>
</p>
<span id="index-_005fDEPENDENCIES_002c-defined"></span>

<p>It is also occasionally useful to have a program depend on some other
target which is not actually part of that program.  This can be done
using the ‘<samp><var>prog</var>_DEPENDENCIES</samp>’ variable.  Each program depends
on the contents of such a variable, but no further interpretation is
done.
</p>
<p>If ‘<samp><var>prog</var>_DEPENDENCIES</samp>’ is not supplied, it is computed by
Automake.  The automatically-assigned value is the contents of
‘<samp><var>prog</var>_LDADD</samp>’, with most configure substitutions, ‘<samp>-l</samp>’,
‘<samp>-L</samp>’, ‘<samp>-dlopen</samp>’ and ‘<samp>-dlpreopen</samp>’ options removed.  The
configure substitutions that are left in are only ‘<samp>@LIBOBJS@</samp>’ and
‘<samp>@ALLOCA@</samp>’; these are left because it is known that they will not
cause an invalid value for ‘<samp><var>prog</var>_DEPENDENCIES</samp>’ to be
generated.
</p>

<hr>
</div>
</div>
<div class="section" id="A-Library">
<div class="header">
<p>
Next: <a href="#A-Shared-Library" accesskey="n" rel="next">Building a Shared Library</a>, Previous: <a href="#A-Program" accesskey="p" rel="prev">Building a program</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Building-a-library"></span><h3 class="section">9.2 Building a library</h3>

<span id="index-_005fLIBRARIES-primary_002c-defined"></span>
<span id="index-LIBRARIES-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-LIBRARIES"></span>

<span id="index-lib_005fLIBRARIES"></span>
<span id="index-pkglib_005fLIBRARIES"></span>
<span id="index-noinst_005fLIBRARIES"></span>

<p>Building a library is much like building a program.  In this case, the
name of the primary is ‘<samp>LIBRARIES</samp>’.  Libraries can be installed in
<code>libdir</code> or <code>pkglibdir</code>.
</p>
<p>See <a href="#A-Shared-Library">Building a Shared Library</a>, for information on how to build shared
libraries using Libtool and the ‘<samp>LTLIBRARIES</samp>’ primary.
</p>
<p>Each ‘<samp>_LIBRARIES</samp>’ variable is a list of the libraries to be built.
For instance to create a library named <samp>libcpio.a</samp>, but not install
it, you would write:
</p>
<div class="example">
<pre class="example">noinst_LIBRARIES = libcpio.a
</pre></div>

<p>The sources that go into a library are determined exactly as they are
for programs, via the ‘<samp>_SOURCES</samp>’ variables.  Note that the library
name is canonicalized (see <a href="#Canonicalization">How derived variables are named</a>), so the ‘<samp>_SOURCES</samp>’
variable corresponding to <samp>liblob.a</samp> is ‘<samp>liblob_a_SOURCES</samp>’,
not ‘<samp>liblob.a_SOURCES</samp>’.
</p>
<span id="index-_005fLIBADD-primary_002c-defined"></span>
<span id="index-LIBADD-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-LIBADD"></span>

<p>Extra objects can be added to a library using the
‘<samp><var>library</var>_LIBADD</samp>’ variable.  This should be used for objects
determined by <code>configure</code>.  Again from <code>cpio</code>:
<span id="index-_005fLIBADD"></span>
<span id="index-LIBADD"></span>
</p>
<div class="example">
<pre class="example">libcpio_a_LIBADD = @LIBOBJS@ @ALLOCA@
</pre></div>

<p>In addition, sources for extra objects that will not exist until
configure-time must be added to the <code>BUILT_SOURCES</code> variable
(see <a href="#Sources">Built sources</a>).
</p>

<hr>
</div>
<div class="section" id="A-Shared-Library">
<div class="header">
<p>
Next: <a href="#Program-and-Library-Variables" accesskey="n" rel="next">Program and Library Variables</a>, Previous: <a href="#A-Library" accesskey="p" rel="prev">Building a library</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Building-a-Shared-Library"></span><h3 class="section">9.3 Building a Shared Library</h3>

<span id="index-Shared-libraries_002c-support-for"></span>

<p>Building shared libraries is a relatively complex matter.  For this
reason, GNU Libtool (see <a data-manual="libtool" href="https://www.gnu.org/software/libtool/manual/libtool.html#Top">Introduction</a> in <cite>The
Libtool Manual</cite>) was created to help build shared libraries in a
platform-independent way.
</p>
<span id="index-_005fLTLIBRARIES-primary_002c-defined"></span>
<span id="index-LTLIBRARIES-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-LTLIBRARIES"></span>
<span id="index-Example-of-shared-libraries"></span>

<span id="index-suffix-_002ela_002c-defined"></span>

<p>Automake uses Libtool to build libraries declared with the
‘<samp>LTLIBRARIES</samp>’ primary.  Each ‘<samp>_LTLIBRARIES</samp>’ variable is a list
of shared libraries to build.  For instance, to create a library named
<samp>libgettext.a</samp> and its corresponding shared libraries, and install
them in ‘<samp>libdir</samp>’, write:
</p>
<div class="example">
<pre class="example">lib_LTLIBRARIES = libgettext.la
</pre></div>

<span id="index-lib_005fLTLIBRARIES"></span>
<span id="index-pkglib_005fLTLIBRARIES"></span>
<span id="index-noinst_005fLTLIBRARIES"></span>
<span id="index-check_005fLTLIBRARIES"></span>

<span id="index-check_005fLTLIBRARIES_002c-not-allowed"></span>

<p>Note that shared libraries <em>must</em> be installed in order to work
properly, so <code>check_LTLIBRARIES</code> is not allowed.  However,
<code>noinst_LTLIBRARIES</code> is allowed.  This feature should be used for
libtool “convenience libraries”.
</p>
<span id="index-suffix-_002elo_002c-defined"></span>

<p>For each library, the ‘<samp><var>library</var>_LIBADD</samp>’ variable contains the
names of extra libtool objects (<samp>.lo</samp> files) to add to the shared
library.  The ‘<samp><var>library</var>_LDFLAGS</samp>’ variable contains any
additional libtool flags, such as ‘<samp>-version-info</samp>’ or
‘<samp>-static</samp>’.
</p>
<span id="index-_0040LTLIBOBJS_0040_002c-special-handling"></span>

<p>Where an ordinary library might include <code>@LIBOBJS@</code>, a libtool
library must use <code>@LTLIBOBJS@</code>.  This is required because the
object files that libtool operates on do not necessarily end in
<samp>.o</samp>.  The libtool manual contains more details on this topic.
</p>
<p>For libraries installed in some directory, Automake will automatically
supply the appropriate ‘<samp>-rpath</samp>’ option.  However, for libraries
determined at configure time (and thus mentioned in
<code>EXTRA_LTLIBRARIES</code>), Automake does not know the eventual
installation directory; for such libraries you must add the
‘<samp>-rpath</samp>’ option to the appropriate ‘<samp>_LDFLAGS</samp>’ variable by
hand.
</p>
<p>Ordinarily, Automake requires that a shared library’s name start with
‘<samp>lib</samp>’.  However, if you are building a dynamically loadable module
then you might wish to use a "nonstandard" name.  In this case, put
<code>-module</code> into the ‘<samp>_LDFLAGS</samp>’ variable.
</p>
<p>See <a data-manual="libtool" href="https://www.gnu.org/software/libtool/manual/libtool.html#Using-Automake">The Libtool Manual</a> in <cite>The Libtool Manual</cite>, for more information.
</p>

<hr>
</div>
<div class="section" id="Program-and-Library-Variables">
<div class="header">
<p>
Next: <a href="#LIBOBJS" accesskey="n" rel="next">Special handling for LIBOBJS and ALLOCA</a>, Previous: <a href="#A-Shared-Library" accesskey="p" rel="prev">Building a Shared Library</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Program-and-Library-Variables-1"></span><h3 class="section">9.4 Program and Library Variables</h3>

<p>Associated with each program are a collection of variables which can be
used to modify how that program is built.  There is a similar list of
such variables for each library.  The canonical name of the program (or
library) is used as a base for naming these variables.
</p>
<p>In the list below, we use the name “maude” to refer to the program or
library.  In your <samp>Makefile.am</samp> you would replace this with the
canonical name of your program.  This list also refers to “maude” as a
program, but in general the same rules apply for both static and dynamic
libraries; the documentation below notes situations where programs and
libraries differ.
</p>
<dl compact="compact">
<dt><span>‘<samp>maude_SOURCES</samp>’</span></dt>
<dd><p>This variable, if it exists, lists all the source files which are
compiled to build the program.  These files are added to the
distribution by default.  When building the program, Automake will cause
each source file to be compiled to a single <samp>.o</samp> file (or
<samp>.lo</samp> when using libtool).  Normally these object files are named
after the source file, but other factors can change this.  If a file in
the ‘<samp>_SOURCES</samp>’ variable has an unrecognized extension, Automake
will do one of two things with it.  If a suffix rule exists for turning
files with the unrecognized extension into <samp>.o</samp> files, then
automake will treat this file as it will any other source file
(see <a href="#Support-for-Other-Languages">Support for Other Languages</a>).  Otherwise, the file will be
ignored as though it were a header file.
</p>
<p>The prefixes ‘<samp>dist_</samp>’ and ‘<samp>nodist_</samp>’ can be used to control
whether files listed in a ‘<samp>_SOURCES</samp>’ variable are distributed.
‘<samp>dist_</samp>’ is redundant, as sources are distributed by default, but it
can be specified for clarity if desired.
</p>
<p>It is possible to have both ‘<samp>dist_</samp>’ and ‘<samp>nodist_</samp>’ variants of
a given ‘<samp>_SOURCES</samp>’ variable at once; this lets you easily
distribute some files and not others, for instance:
</p>
<div class="example">
<pre class="example">nodist_maude_SOURCES = nodist.c
dist_maude_SOURCES = dist-me.c
</pre></div>

<p>By default the output file (on Unix systems, the <samp>.o</samp> file) will be
put into the current build directory.  However, if the option
<code>subdir-objects</code> is in effect in the current directory then the
<samp>.o</samp> file will be put into the subdirectory named after the source
file.  For instance, with <code>subdir-objects</code> enabled,
<samp>sub/dir/file.c</samp> will be compiled to <samp>sub/dir/file.o</samp>.  Some
people prefer this mode of operation.  You can specify
<code>subdir-objects</code> in <code>AUTOMAKE_OPTIONS</code> (see <a href="#Options">Changing Automake’s Behavior</a>).
<span id="index-Subdirectory_002c-objects-in"></span>
<span id="index-Objects-in-subdirectory"></span>
</p>

</dd>
<dt><span>‘<samp>EXTRA_maude_SOURCES</samp>’</span></dt>
<dd><p>Automake needs to know the list of files you intend to compile
<em>statically</em>.  For one thing, this is the only way Automake has of
knowing what sort of language support a given <samp>Makefile.in</samp>
requires.  <a id="DOCF3" href="#FOOT3"><sup>3</sup></a>  This means that, for example, you can’t put a
configure substitution like ‘<samp>@my_sources@</samp>’ into a ‘<samp>_SOURCES</samp>’
variable.  If you intend to conditionally compile source files and use
<samp>configure</samp> to substitute the appropriate object names into, e.g.,
‘<samp>_LDADD</samp>’ (see below), then you should list the corresponding source
files in the ‘<samp>EXTRA_</samp>’ variable.
</p>
<p>This variable also supports ‘<samp>dist_</samp>’ and ‘<samp>nodist_</samp>’ prefixes,
e.g., ‘<samp>nodist_EXTRA_maude_SOURCES</samp>’.
</p>
</dd>
<dt><span>‘<samp>maude_AR</samp>’</span></dt>
<dd><p>A static library is created by default by invoking <code>$(AR) cru</code>
followed by the name of the library and then the objects being put into
the library.  You can override this by setting the ‘<samp>_AR</samp>’ variable.
This is usually used with C++; some C++ compilers require a special
invocation in order to instantiate all the templates which should go
into a library.  For instance, the SGI C++ compiler likes this macro set
like so:
</p><div class="example">
<pre class="example">libmaude_a_AR = $(CXX) -ar -o
</pre></div>

</dd>
<dt><span>‘<samp>maude_LIBADD</samp>’</span></dt>
<dd><p>Extra objects can be added to a static library using the ‘<samp>_LIBADD</samp>’
variable.  This should be used for objects determined by
<code>configure</code>.  Note that ‘<samp>_LIBADD</samp>’ is not used for shared
libraries; there you must use ‘<samp>_LDADD</samp>’.
</p>
</dd>
<dt><span>‘<samp>maude_LDADD</samp>’</span></dt>
<dd><p>Extra objects can be added to a shared library or a program by listing
them in the ‘<samp>_LDADD</samp>’ variable.  This should be used for objects
determined by <code>configure</code>.
</p>
<p>‘<samp>_LDADD</samp>’ and ‘<samp>_LIBADD</samp>’ are inappropriate for passing
program-specific linker flags (except for ‘<samp>-l</samp>’, ‘<samp>-L</samp>’,
‘<samp>-dlopen</samp>’ and ‘<samp>-dlpreopen</samp>’).  Use the ‘<samp>_LDFLAGS</samp>’ variable
for this purpose.
</p>
<p>For instance, if your <samp>configure.in</samp> uses <code>AC_PATH_XTRA</code>, you
could link your program against the X libraries like so:
</p>
<div class="example">
<pre class="example">maude_LDADD = $(X_PRE_LIBS) $(X_LIBS) $(X_EXTRA_LIBS)
</pre></div>

</dd>
<dt><span>‘<samp>maude_LDFLAGS</samp>’</span></dt>
<dd><p>This variable is used to pass extra flags to the link step of a program
or a shared library.
</p>
</dd>
<dt><span>‘<samp>maude_LINK</samp>’</span></dt>
<dd><p>You can override the linker on a per-program basis.  By default the
linker is chosen according to the languages used by the program.  For
instance, a program that includes C++ source code would use the C++
compiler to link.  The ‘<samp>_LINK</samp>’ variable must hold the name of a
command which can be passed all the <samp>.o</samp> file names as arguments.
Note that the name of the underlying program is <em>not</em> passed to
‘<samp>_LINK</samp>’; typically one uses ‘<samp>$@</samp>’:
</p>
<div class="example">
<pre class="example">maude_LINK = $(CCLD) -magic -o $@
</pre></div>

</dd>
<dt><span>‘<samp>maude_CFLAGS</samp>’</span></dt>
<dd><p>Automake allows you to set compilation flags on a per-program (or
per-library) basis.  A single source file can be included in several
programs, and it will potentially be compiled with different flags for
each program.  This works for any language directly supported by
Automake.  The flags are ‘<samp>_CFLAGS</samp>’, ‘<samp>_CXXFLAGS</samp>’,
‘<samp>_OBJCFLAGS</samp>’, ‘<samp>_YFLAGS</samp>’, ‘<samp>_CCASFLAGS</samp>’, ‘<samp>_FFLAGS</samp>’,
‘<samp>_RFLAGS</samp>’, and ‘<samp>_GCJFLAGS</samp>’.
</p>
<p>When using a per-program compilation flag, Automake will choose a
different name for the intermediate object files.  Ordinarily a file
like <samp>sample.c</samp> will be compiled to produce <samp>sample.o</samp>.
However, if the program’s ‘<samp>_CFLAGS</samp>’ variable is set, then the
object file will be named, for instance, <samp>maude-sample.o</samp>.
</p>
<p>In compilations with per-program flags, the ordinary ‘<samp>AM_</samp>’ form of
the flags variable is <em>not</em> automatically included in the
compilation (however, the user form of the variable <em>is</em> included).
So for instance, if you want the hypothetical <samp>maude</samp> compilations
to also use the value of ‘<samp>AM_CFLAGS</samp>’, you would need to write:
</p>
<div class="example">
<pre class="example">maude_CFLAGS = ... your flags ... $(AM_CFLAGS)
</pre></div>

</dd>
<dt><span>‘<samp>maude_DEPENDENCIES</samp>’</span></dt>
<dd><p>It is also occasionally useful to have a program depend on some other
target which is not actually part of that program.  This can be done
using the ‘<samp>_DEPENDENCIES</samp>’ variable.  Each program depends on the
contents of such a variable, but no further interpretation is done.
</p>
<p>If ‘<samp>_DEPENDENCIES</samp>’ is not supplied, it is computed by Automake.
The automatically-assigned value is the contents of ‘<samp>_LDADD</samp>’ or
‘<samp>_LIBADD</samp>’, with most configure substitutions, ‘<samp>-l</samp>’, ‘<samp>-L</samp>’,
‘<samp>-dlopen</samp>’ and ‘<samp>-dlpreopen</samp>’ options removed.  The configure
substitutions that are left in are only ‘<samp>@LIBOBJS@</samp>’ and
‘<samp>@ALLOCA@</samp>’; these are left because it is known that they will not
cause an invalid value for ‘<samp>_DEPENDENCIES</samp>’ to be generated.
</p>
</dd>
<dt><span>‘<samp>maude_SHORTNAME</samp>’</span></dt>
<dd><p>On some platforms the allowable file names are very short.  In order to
support these systems and per-program compilation flags at the same
time, Automake allows you to set a “short name” which will influence
how intermediate object files are named.  For instance, if you set
‘<samp>maude_SHORTNAME</samp>’ to ‘<samp>m</samp>’, then in the above per-program
compilation flag example the object file would be named
<samp>m-sample.o</samp> rather than <samp>maude-sample.o</samp>.  This facility is
rarely needed in practice, and we recommend avoiding it until you find
it is required.
</p></dd>
</dl>


<hr>
</div>
<div class="section" id="LIBOBJS">
<div class="header">
<p>
Next: <a href="#Program-variables" accesskey="n" rel="next">Variables used when building a program</a>, Previous: <a href="#Program-and-Library-Variables" accesskey="p" rel="prev">Program and Library Variables</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Special-handling-for-LIBOBJS-and-ALLOCA"></span><h3 class="section">9.5 Special handling for LIBOBJS and ALLOCA</h3>

<span id="index-_0040LIBOBJS_0040_002c-special-handling"></span>
<span id="index-_0040ALLOCA_0040_002c-special-handling"></span>

<p>Automake explicitly recognizes the use of <code>@LIBOBJS@</code> and
<code>@ALLOCA@</code>, and uses this information, plus the list of
<code>LIBOBJS</code> files derived from <samp>configure.in</samp> to automatically
include the appropriate source files in the distribution (see <a href="#Dist">What Goes in a Distribution</a>).
These source files are also automatically handled in the
dependency-tracking scheme; see See <a href="#Dependencies">Automatic dependency tracking</a>.
</p>
<p><code>@LIBOBJS@</code> and <code>@ALLOCA@</code> are specially recognized in any
‘<samp>_LDADD</samp>’ or ‘<samp>_LIBADD</samp>’ variable.
</p>

<hr>
</div>
<div class="section" id="Program-variables">
<div class="header">
<p>
Next: <a href="#Yacc-and-Lex" accesskey="n" rel="next">Yacc and Lex support</a>, Previous: <a href="#LIBOBJS" accesskey="p" rel="prev">Special handling for LIBOBJS and ALLOCA</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Variables-used-when-building-a-program"></span><h3 class="section">9.6 Variables used when building a program</h3>

<p>Occasionally it is useful to know which <samp>Makefile</samp> variables
Automake uses for compilations; for instance you might need to do your
own compilation in some special cases.
</p>
<p>Some variables are inherited from Autoconf; these are <code>CC</code>,
<code>CFLAGS</code>, <code>CPPFLAGS</code>, <code>DEFS</code>, <code>LDFLAGS</code>, and
<code>LIBS</code>.
<span id="index-CC"></span>
<span id="index-CFLAGS"></span>
<span id="index-CPPFLAGS"></span>
<span id="index-DEFS"></span>
<span id="index-LDFLAGS"></span>
<span id="index-LIBS"></span>
</p>
<p>There are some additional variables which Automake itself defines:
</p>
<dl compact="compact">
<dt id="index-AM_005fCPPFLAGS"><span><code>AM_CPPFLAGS</code><a href="#index-AM_005fCPPFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The contents of this macro are passed to every compilation which invokes
the C preprocessor; it is a list of arguments to the preprocessor.  For
instance, ‘<samp>-I</samp>’ and ‘<samp>-D</samp>’ options should be listed here.
</p>
<p>Automake already provides some ‘<samp>-I</samp>’ options automatically.  In
particular it generates ‘<samp>-I$(srcdir)</samp>’, ‘<samp>-I.</samp>’, and a ‘<samp>-I</samp>’
pointing to the directory holding <samp>config.h</samp> (if you’ve used
<code>AC_CONFIG_HEADER</code> or <code>AM_CONFIG_HEADER</code>).  You can disable
the default ‘<samp>-I</samp>’ options using the ‘<samp>nostdinc</samp>’ option.
</p>
</dd>
<dt id="index-INCLUDES"><span><code>INCLUDES</code><a href="#index-INCLUDES" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This does the same job as ‘<samp>AM_CPPFLAGS</samp>’.  It is an older name for
the same functionality.  This macro is deprecated; we suggest using
‘<samp>AM_CPPFLAGS</samp>’ instead.
</p>
</dd>
<dt id="index-AM_005fCFLAGS"><span><code>AM_CFLAGS</code><a href="#index-AM_005fCFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This is the variable which the <samp>Makefile.am</samp> author can use to pass
in additional C compiler flags.  It is more fully documented elsewhere.
In some situations, this is not used, in preference to the
per-executable (or per-library) <code>_CFLAGS</code>.
</p>
</dd>
<dt id="index-COMPILE"><span><code>COMPILE</code><a href="#index-COMPILE" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This is the command used to actually compile a C source file.  The
filename is appended to form the complete command line.
</p>
</dd>
<dt id="index-AM_005fLDFLAGS-1"><span><code>AM_LDFLAGS</code><a href="#index-AM_005fLDFLAGS-1" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This is the variable which the <samp>Makefile.am</samp> author can use to pass
in additional linker flags.  In some situations, this is not used, in
preference to the per-executable (or per-library) <code>_LDFLAGS</code>.
</p>
</dd>
<dt id="index-LINK"><span><code>LINK</code><a href="#index-LINK" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This is the command used to actually link a C program.  It already
includes ‘<samp>-o $@</samp>’ and the usual variable references (for instance,
<code>CFLAGS</code>); it takes as “arguments” the names of the object files
and libraries to link in.
</p></dd>
</dl>


<hr>
</div>
<div class="section" id="Yacc-and-Lex">
<div class="header">
<p>
Next: <a href="#C_002b_002b-Support" accesskey="n" rel="next">C++ Support</a>, Previous: <a href="#Program-variables" accesskey="p" rel="prev">Variables used when building a program</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Yacc-and-Lex-support"></span><h3 class="section">9.7 Yacc and Lex support</h3>

<p>Automake has somewhat idiosyncratic support for Yacc and Lex.
</p>
<p>Automake assumes that the <samp>.c</samp> file generated by <code>yacc</code> (or
<code>lex</code>) should be named using the basename of the input file.  That
is, for a yacc source file <samp>foo.y</samp>, Automake will cause the
intermediate file to be named <samp>foo.c</samp> (as opposed to
<samp>y.tab.c</samp>, which is more traditional).
</p>
<p>The extension of a yacc source file is used to determine the extension
of the resulting ‘<samp>C</samp>’ or ‘<samp>C++</samp>’ file.  Files with the extension
‘<samp>.y</samp>’ will be turned into ‘<samp>.c</samp>’ files; likewise, ‘<samp>.yy</samp>’ will
become ‘<samp>.cc</samp>’; ‘<samp>.y++</samp>’, ‘<samp>c++</samp>’; and ‘<samp>.yxx</samp>’,
‘<samp>.cxx</samp>’.
</p>
<p>Likewise, lex source files can be used to generate ‘<samp>C</samp>’ or
‘<samp>C++</samp>’; the extensions ‘<samp>.l</samp>’, ‘<samp>.ll</samp>’, ‘<samp>.l++</samp>’, and
‘<samp>.lxx</samp>’ are recognized.
</p>
<p>You should never explicitly mention the intermediate (‘<samp>C</samp>’ or
‘<samp>C++</samp>’) file in any ‘<samp>SOURCES</samp>’ variable; only list the source
file.
</p>
<p>The intermediate files generated by <code>yacc</code> (or <code>lex</code>) will be
included in any distribution that is made.  That way the user doesn’t
need to have <code>yacc</code> or <code>lex</code>.
</p>
<p>If a <code>yacc</code> source file is seen, then your <samp>configure.in</samp> must
define the variable ‘<samp>YACC</samp>’.  This is most easily done by invoking
the macro ‘<samp>AC_PROG_YACC</samp>’ (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular
Program Checks</a> in <cite>The Autoconf Manual</cite>).
</p>
<p>When <code>yacc</code> is invoked, it is passed ‘<samp>YFLAGS</samp>’ and
‘<samp>AM_YFLAGS</samp>’.  The former is a user variable and the latter is
intended for the <samp>Makefile.am</samp> author.
</p>
<p>Similarly, if a <code>lex</code> source file is seen, then your
<samp>configure.in</samp> must define the variable ‘<samp>LEX</samp>’.  You can use
‘<samp>AC_PROG_LEX</samp>’ to do this (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular
Program Checks</a> in <cite>The Autoconf Manual</cite>), but using
<code>AM_PROG_LEX</code> macro (see <a href="#Macros">Autoconf macros supplied with Automake</a>) is recommended.
</p>
<p>When <code>lex</code> is invoked, it is passed ‘<samp>LFLAGS</samp>’ and
‘<samp>AM_LFLAGS</samp>’.  The former is a user variable and the latter is
intended for the <samp>Makefile.am</samp> author.
</p>


<span id="index-ylwrap"></span>
<span id="index-yacc_002c-multiple-parsers"></span>
<span id="index-Multiple-yacc-parsers"></span>
<span id="index-Multiple-lex-lexers"></span>
<span id="index-lex_002c-multiple-lexers"></span>


<p>Automake makes it possible to include multiple <code>yacc</code> (or
<code>lex</code>) source files in a single program.  Automake uses a small
program called <code>ylwrap</code> to run <code>yacc</code> (or <code>lex</code>) in a
subdirectory.  This is necessary because yacc’s output filename is
fixed, and a parallel make could conceivably invoke more than one
instance of <code>yacc</code> simultaneously.  The <code>ylwrap</code> program is
distributed with Automake.  It should appear in the directory specified
by ‘<samp>AC_CONFIG_AUX_DIR</samp>’ (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Input">Finding ‘configure’ Input</a> in <cite>The Autoconf Manual</cite>), or the current directory if that macro
is not used in <samp>configure.in</samp>.
</p>
<p>For <code>yacc</code>, simply managing locking is insufficient.  The output of
<code>yacc</code> always uses the same symbol names internally, so it isn’t
possible to link two <code>yacc</code> parsers into the same executable.
</p>
<p>We recommend using the following renaming hack used in <code>gdb</code>:
</p><div class="example">
<pre class="example">#define	yymaxdepth c_maxdepth
#define	yyparse	c_parse
#define	yylex	c_lex
#define	yyerror	c_error
#define	yylval	c_lval
#define	yychar	c_char
#define	yydebug	c_debug
#define	yypact	c_pact
#define	yyr1	c_r1
#define	yyr2	c_r2
#define	yydef	c_def
#define	yychk	c_chk
#define	yypgo	c_pgo
#define	yyact	c_act
#define	yyexca	c_exca
#define yyerrflag c_errflag
#define yynerrs	c_nerrs
#define	yyps	c_ps
#define	yypv	c_pv
#define	yys	c_s
#define	yy_yys	c_yys
#define	yystate	c_state
#define	yytmp	c_tmp
#define	yyv	c_v
#define	yy_yyv	c_yyv
#define	yyval	c_val
#define	yylloc	c_lloc
#define yyreds	c_reds
#define yytoks	c_toks
#define yylhs	c_yylhs
#define yylen	c_yylen
#define yydefred c_yydefred
#define yydgoto	c_yydgoto
#define yysindex c_yysindex
#define yyrindex c_yyrindex
#define yygindex c_yygindex
#define yytable	 c_yytable
#define yycheck	 c_yycheck
#define yyname   c_yyname
#define yyrule   c_yyrule
</pre></div>

<p>For each define, replace the ‘<samp>c_</samp>’ prefix with whatever you like.
These defines work for <code>bison</code>, <code>byacc</code>, and traditional
<code>yacc</code>s.  If you find a parser generator that uses a symbol not
covered here, please report the new name so it can be added to the list.
</p>

<hr>
</div>
<div class="section" id="C_002b_002b-Support">
<div class="header">
<p>
Next: <a href="#Assembly-Support" accesskey="n" rel="next">Assembly Support</a>, Previous: <a href="#Yacc-and-Lex" accesskey="p" rel="prev">Yacc and Lex support</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="C_002b_002b-Support-1"></span><h3 class="section">9.8 C++ Support</h3>

<span id="index-C_002b_002b-support"></span>
<span id="index-Support-for-C_002b_002b"></span>

<p>Automake includes full support for C++.
</p>
<p>Any package including C++ code must define the output variable
‘<samp>CXX</samp>’ in <samp>configure.in</samp>; the simplest way to do this is to use
the <code>AC_PROG_CXX</code> macro (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular
Program Checks</a> in <cite>The Autoconf Manual</cite>).
</p>
<p>A few additional variables are defined when a C++ source file is seen:
</p>
<dl compact="compact">
<dt id="index-CXX"><span><code>CXX</code><a href="#index-CXX" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The name of the C++ compiler.
</p>
</dd>
<dt id="index-CXXFLAGS"><span><code>CXXFLAGS</code><a href="#index-CXXFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Any flags to pass to the C++ compiler.
</p>
</dd>
<dt id="index-AM_005fCXXFLAGS"><span><code>AM_CXXFLAGS</code><a href="#index-AM_005fCXXFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The maintainer’s variant of <code>CXXFLAGS</code>.
</p>
</dd>
<dt id="index-CXXCOMPILE"><span><code>CXXCOMPILE</code><a href="#index-CXXCOMPILE" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The command used to actually compile a C++ source file.  The file name
is appended to form the complete command line.
</p>
</dd>
<dt id="index-CXXLINK"><span><code>CXXLINK</code><a href="#index-CXXLINK" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The command used to actually link a C++ program.
</p></dd>
</dl>


<hr>
</div>
<div class="section" id="Assembly-Support">
<div class="header">
<p>
Next: <a href="#Fortran-77-Support" accesskey="n" rel="next">Fortran 77 Support</a>, Previous: <a href="#C_002b_002b-Support" accesskey="p" rel="prev">C++ Support</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Assembly-Support-1"></span><h3 class="section">9.9 Assembly Support</h3>

<p>Automake includes some support for assembly code.
</p>
<p>The variable <code>CCAS</code> holds the name of the compiler used to build
assembly code.  This compiler must work a bit like a C compiler; in
particular it must accept ‘<samp>-c</samp>’ and ‘<samp>-o</samp>’.  The value of
<code>CCASFLAGS</code> is passed to the compilation.
<span id="index-CCAS"></span>
<span id="index-CCASFLAGS"></span>
</p>
<p>You are required to set <code>CCAS</code> and <code>CCASFLAGS</code> via
<samp>configure.in</samp>.  The autoconf macro <code>AM_PROG_AS</code> will do this
for you.  Unless they are already set, it simply sets <code>CCAS</code> to the
C compiler and <code>CCASFLAGS</code> to the C compiler flags.
</p>
<p>Only the suffixes ‘<samp>.s</samp>’ and ‘<samp>.S</samp>’ are recognized by
<code>automake</code> as being files containing assembly code.
</p>

<hr>
</div>
<div class="section" id="Fortran-77-Support">
<div class="header">
<p>
Next: <a href="#Java-Support" accesskey="n" rel="next">Java Support</a>, Previous: <a href="#Assembly-Support" accesskey="p" rel="prev">Assembly Support</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Fortran-77-Support-1"></span><h3 class="section">9.10 Fortran 77 Support</h3>

<span id="index-Fortran-77-support"></span>
<span id="index-Support-for-Fortran-77"></span>

<p>Automake includes full support for Fortran 77.
</p>
<p>Any package including Fortran 77 code must define the output variable
‘<samp>F77</samp>’ in <samp>configure.in</samp>; the simplest way to do this is to use
the <code>AC_PROG_F77</code> macro (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Particular-Programs">Particular
Program Checks</a> in <cite>The Autoconf Manual</cite>).  See <a href="#Fortran-77-and-Autoconf">Fortran 77 and Autoconf</a>.
</p>
<p>A few additional variables are defined when a Fortran 77 source file is
seen:
</p>
<dl compact="compact">
<dt id="index-F77"><span><code>F77</code><a href="#index-F77" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The name of the Fortran 77 compiler.
</p>
</dd>
<dt id="index-FFLAGS"><span><code>FFLAGS</code><a href="#index-FFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Any flags to pass to the Fortran 77 compiler.
</p>
</dd>
<dt id="index-AM_005fFFLAGS"><span><code>AM_FFLAGS</code><a href="#index-AM_005fFFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The maintainer’s variant of <code>FFLAGS</code>.
</p>
</dd>
<dt id="index-RFLAGS"><span><code>RFLAGS</code><a href="#index-RFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Any flags to pass to the Ratfor compiler.
</p>
</dd>
<dt id="index-AM_005fRFLAGS"><span><code>AM_RFLAGS</code><a href="#index-AM_005fRFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The maintainer’s variant of <code>RFLAGS</code>.
</p>
</dd>
<dt id="index-F77COMPILE"><span><code>F77COMPILE</code><a href="#index-F77COMPILE" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The command used to actually compile a Fortran 77 source file.  The file
name is appended to form the complete command line.
</p>
</dd>
<dt id="index-FLINK"><span><code>FLINK</code><a href="#index-FLINK" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The command used to actually link a pure Fortran 77 program or shared
library.
</p>
</dd>
</dl>

<p>Automake can handle preprocessing Fortran 77 and Ratfor source files in
addition to compiling them<a id="DOCF4" href="#FOOT4"><sup>4</sup></a>.  Automake
also contains some support for creating programs and shared libraries
that are a mixture of Fortran 77 and other languages (see <a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a>).
</p>
<p>These issues are covered in the following sections.
</p>


<ul class="section-toc">
<li><a href="#Preprocessing-Fortran-77" accesskey="1">Preprocessing Fortran 77</a></li>
<li><a href="#Compiling-Fortran-77-Files" accesskey="2">Compiling Fortran 77 Files</a></li>
<li><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b" accesskey="3">Mixing Fortran 77 With C and C++</a></li>
<li><a href="#Fortran-77-and-Autoconf" accesskey="4">Fortran 77 and Autoconf</a></li>
</ul>
<hr>
<div class="subsection" id="Preprocessing-Fortran-77">
<div class="header">
<p>
Next: <a href="#Compiling-Fortran-77-Files" accesskey="n" rel="next">Compiling Fortran 77 Files</a>, Previous: <a href="#Fortran-77-Support" accesskey="p" rel="prev">Fortran 77 Support</a>, Up: <a href="#Fortran-77-Support" accesskey="u" rel="up">Fortran 77 Support</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Preprocessing-Fortran-77-1"></span><h4 class="subsection">9.10.1 Preprocessing Fortran 77</h4>

<span id="index-Preprocessing-Fortran-77"></span>
<span id="index-Fortran-77_002c-Preprocessing"></span>
<span id="index-Ratfor-programs"></span>

<p><samp>N.f</samp> is made automatically from <samp>N.F</samp> or <samp>N.r</samp>.  This
rule runs just the preprocessor to convert a preprocessable Fortran 77
or Ratfor source file into a strict Fortran 77 source file.  The precise
command used is as follows:
</p>
<dl compact="compact">
<dt><span><samp>.F</samp></span></dt>
<dd><p><code>$(F77) -F $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_FFLAGS) $(FFLAGS)</code>
</p>
</dd>
<dt><span><samp>.r</samp></span></dt>
<dd><p><code>$(F77) -F $(AM_FFLAGS) $(FFLAGS) $(AM_RFLAGS) $(RFLAGS)</code>
</p>
</dd>
</dl>


<hr>
</div>
<div class="subsection" id="Compiling-Fortran-77-Files">
<div class="header">
<p>
Next: <a href="#Mixing-Fortran-77-With-C-and-C_002b_002b" accesskey="n" rel="next">Mixing Fortran 77 With C and C++</a>, Previous: <a href="#Preprocessing-Fortran-77" accesskey="p" rel="prev">Preprocessing Fortran 77</a>, Up: <a href="#Fortran-77-Support" accesskey="u" rel="up">Fortran 77 Support</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Compiling-Fortran-77-Files-1"></span><h4 class="subsection">9.10.2 Compiling Fortran 77 Files</h4>

<p><samp>N.o</samp> is made automatically from <samp>N.f</samp>, <samp>N.F</samp> or
<samp>N.r</samp> by running the Fortran 77 compiler.  The precise command used
is as follows:
</p>
<dl compact="compact">
<dt><span><samp>.f</samp></span></dt>
<dd><p><code>$(F77) -c $(AM_FFLAGS) $(FFLAGS)</code>
</p>
</dd>
<dt><span><samp>.F</samp></span></dt>
<dd><p><code>$(F77) -c $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_FFLAGS) $(FFLAGS)</code>
</p>
</dd>
<dt><span><samp>.r</samp></span></dt>
<dd><p><code>$(F77) -c $(AM_FFLAGS) $(FFLAGS) $(AM_RFLAGS) $(RFLAGS)</code>
</p>
</dd>
</dl>


<hr>
</div>
<div class="subsection" id="Mixing-Fortran-77-With-C-and-C_002b_002b">
<div class="header">
<p>
Next: <a href="#Fortran-77-and-Autoconf" accesskey="n" rel="next">Fortran 77 and Autoconf</a>, Previous: <a href="#Compiling-Fortran-77-Files" accesskey="p" rel="prev">Compiling Fortran 77 Files</a>, Up: <a href="#Fortran-77-Support" accesskey="u" rel="up">Fortran 77 Support</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Mixing-Fortran-77-With-C-and-C_002b_002b-1"></span><h4 class="subsection">9.10.3 Mixing Fortran 77 With C and C++</h4>

<span id="index-Fortran-77_002c-mixing-with-C-and-C_002b_002b"></span>
<span id="index-Mixing-Fortran-77-with-C-and-C_002b_002b"></span>
<span id="index-Linking-Fortran-77-with-C-and-C_002b_002b"></span>
<span id="index-cfortran"></span>
<span id="index-Mixing-Fortran-77-with-C-and_002for-C_002b_002b"></span>

<p>Automake currently provides <em>limited</em> support for creating programs
and shared libraries that are a mixture of Fortran 77 and C and/or C++.
However, there are many other issues related to mixing Fortran 77 with
other languages that are <em>not</em> (currently) handled by Automake, but
that are handled by other packages<a id="DOCF5" href="#FOOT5"><sup>5</sup></a>.
</p>
<p>Automake can help in two ways:
</p>
<ol>
<li> Automatic selection of the linker depending on which combinations of
source code.

</li><li> Automatic selection of the appropriate linker flags (e.g. ‘<samp>-L</samp>’ and
‘<samp>-l</samp>’) to pass to the automatically selected linker in order to link
in the appropriate Fortran 77 intrinsic and run-time libraries.

<span id="index-FLIBS_002c-defined"></span>
<p>These extra Fortran 77 linker flags are supplied in the output variable
<code>FLIBS</code> by the <code>AC_F77_LIBRARY_LDFLAGS</code> Autoconf macro
supplied with newer versions of Autoconf (Autoconf version 2.13 and
later).  See <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Fortran-77-Compiler-Characteristics">Fortran 77 Compiler Characteristics</a> in <cite>The
Autoconf</cite>.
</p></li></ol>

<p>If Automake detects that a program or shared library (as mentioned in
some <code>_PROGRAMS</code> or <code>_LTLIBRARIES</code> primary) contains source
code that is a mixture of Fortran 77 and C and/or C++, then it requires
that the macro <code>AC_F77_LIBRARY_LDFLAGS</code> be called in
<samp>configure.in</samp>, and that either <code>$(FLIBS)</code> or <code>@FLIBS@</code>
appear in the appropriate <code>_LDADD</code> (for programs) or <code>_LIBADD</code>
(for shared libraries) variables.  It is the responsibility of the
person writing the <samp>Makefile.am</samp> to make sure that <code>$(FLIBS)</code>
or <code>@FLIBS@</code> appears in the appropriate <code>_LDADD</code> or
<code>_LIBADD</code> variable.
</p>
<span id="index-Mixed-language-example"></span>
<span id="index-Example_002c-mixed-language"></span>

<p>For example, consider the following <samp>Makefile.am</samp>:
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = foo
foo_SOURCES  = main.cc foo.f
foo_LDADD    = libfoo.la @FLIBS@

pkglib_LTLIBRARIES = libfoo.la
libfoo_la_SOURCES  = bar.f baz.c zardoz.cc
libfoo_la_LIBADD   = $(FLIBS)
</pre></div>

<p>In this case, Automake will insist that <code>AC_F77_LIBRARY_LDFLAGS</code>
is mentioned in <samp>configure.in</samp>.  Also, if <code>@FLIBS@</code> hadn’t
been mentioned in <code>foo_LDADD</code> and <code>libfoo_la_LIBADD</code>, then
Automake would have issued a warning.
</p>


<ul class="section-toc">
<li><a href="#How-the-Linker-is-Chosen" accesskey="1">How the Linker is Chosen</a></li>
</ul>
<hr>
<div class="subsubsection" id="How-the-Linker-is-Chosen">
<div class="header">
<p>
Previous: <a href="#Mixing-Fortran-77-With-C-and-C_002b_002b" accesskey="p" rel="prev">Mixing Fortran 77 With C and C++</a>, Up: <a href="#Mixing-Fortran-77-With-C-and-C_002b_002b" accesskey="u" rel="up">Mixing Fortran 77 With C and C++</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="How-the-Linker-is-Chosen-1"></span><h4 class="subsubsection">9.10.3.1 How the Linker is Chosen</h4>

<span id="index-Automatic-linker-selection"></span>
<span id="index-Selecting-the-linker-automatically"></span>

<p>The following diagram demonstrates under what conditions a particular
linker is chosen by Automake.
</p>
<p>For example, if Fortran 77, C and C++ source code were to be compiled
into a program, then the C++ linker will be used.  In this case, if the
C or Fortran 77 linkers required any special libraries that weren’t
included by the C++ linker, then they must be manually added to an
<code>_LDADD</code> or <code>_LIBADD</code> variable by the user writing the
<samp>Makefile.am</samp>.
</p>
<div class="example">
<pre class="example">                     \              Linker
          source      \
           code        \     C        C++     Fortran
     -----------------  +---------+---------+---------+
                        |         |         |         |
     C                  |    x    |         |         |
                        |         |         |         |
                        +---------+---------+---------+
                        |         |         |         |
         C++            |         |    x    |         |
                        |         |         |         |
                        +---------+---------+---------+
                        |         |         |         |
               Fortran  |         |         |    x    |
                        |         |         |         |
                        +---------+---------+---------+
                        |         |         |         |
     C + C++            |         |    x    |         |
                        |         |         |         |
                        +---------+---------+---------+
                        |         |         |         |
     C +       Fortran  |         |         |    x    |
                        |         |         |         |
                        +---------+---------+---------+
                        |         |         |         |
         C++ + Fortran  |         |    x    |         |
                        |         |         |         |
                        +---------+---------+---------+
                        |         |         |         |
     C + C++ + Fortran  |         |    x    |         |
                        |         |         |         |
                        +---------+---------+---------+
</pre></div>


<hr>
</div>
</div>
<div class="subsection" id="Fortran-77-and-Autoconf">
<div class="header">
<p>
Previous: <a href="#Mixing-Fortran-77-With-C-and-C_002b_002b" accesskey="p" rel="prev">Mixing Fortran 77 With C and C++</a>, Up: <a href="#Fortran-77-Support" accesskey="u" rel="up">Fortran 77 Support</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Fortran-77-and-Autoconf-1"></span><h4 class="subsection">9.10.4 Fortran 77 and Autoconf</h4>

<p>The current Automake support for Fortran 77 requires a recent enough
version of Autoconf that also includes support for Fortran 77.  Full
Fortran 77 support was added to Autoconf 2.13, so you will want to use
that version of Autoconf or later.
</p>

<hr>
</div>
</div>
<div class="section" id="Java-Support">
<div class="header">
<p>
Next: <a href="#Support-for-Other-Languages" accesskey="n" rel="next">Support for Other Languages</a>, Previous: <a href="#Fortran-77-Support" accesskey="p" rel="prev">Fortran 77 Support</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Java-Support-1"></span><h3 class="section">9.11 Java Support</h3>

<span id="index-Java-support"></span>
<span id="index-Support-for-Java"></span>

<p>Automake includes support for compiled Java, using <code>gcj</code>, the Java
front end to the GNU Compiler Collection.
</p>
<p>Any package including Java code to be compiled must define the output
variable ‘<samp>GCJ</samp>’ in <samp>configure.in</samp>; the variable ‘<samp>GCJFLAGS</samp>’
must also be defined somehow (either in <samp>configure.in</samp> or
<samp>Makefile.am</samp>).  The simplest way to do this is to use the
<code>AM_PROG_GCJ</code> macro.
</p>
<span id="index-GCJFLAGS"></span>

<p>By default, programs including Java source files are linked with
<code>gcj</code>.
</p>
<p>As always, the contents of ‘<samp>AM_GCJFLAGS</samp>’ are passed to every
compilation invoking <code>gcj</code> (in its role as an ahead-of-time
compiler – when invoking it to create <samp>.class</samp> files,
‘<samp>AM_JAVACFLAGS</samp>’ is used instead).  If it is necessary to pass
options to <code>gcj</code> from <samp>Makefile.am</samp>, this macro, and not the
user macro ‘<samp>GCJFLAGS</samp>’, should be used.
</p>
<span id="index-AM_005fGCJFLAGS"></span>

<p><code>gcj</code> can be used to compile <samp>.java</samp>, <samp>.class</samp>,
<samp>.zip</samp>, or <samp>.jar</samp> files.
</p>

<hr>
</div>
<div class="section" id="Support-for-Other-Languages">
<div class="header">
<p>
Next: <a href="#ANSI" accesskey="n" rel="next">Automatic de-ANSI-fication</a>, Previous: <a href="#Java-Support" accesskey="p" rel="prev">Java Support</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Support-for-Other-Languages-1"></span><h3 class="section">9.12 Support for Other Languages</h3>

<p>Automake currently only includes full support for C, C++ (see <a href="#C_002b_002b-Support">C++ Support</a>), Fortran 77 (see <a href="#Fortran-77-Support">Fortran 77 Support</a>), and Java
(see <a href="#Java-Support">Java Support</a>).  There is only rudimentary support for other
languages, support for which will be improved based on user demand.
</p>
<p>Some limited support for adding your own languages is available via the
suffix rule handling; see <a href="#Suffixes">Handling new file extensions</a>.
</p>

<hr>
</div>
<div class="section" id="ANSI">
<div class="header">
<p>
Next: <a href="#Dependencies" accesskey="n" rel="next">Automatic dependency tracking</a>, Previous: <a href="#Support-for-Other-Languages" accesskey="p" rel="prev">Support for Other Languages</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Automatic-de_002dANSI_002dfication"></span><h3 class="section">9.13 Automatic de-ANSI-fication</h3>

<span id="index-de_002dANSI_002dfication_002c-defined"></span>

<p>Although the GNU standards allow the use of ANSI C, this can have the
effect of limiting portability of a package to some older compilers
(notably the SunOS C compiler).
</p>
<p>Automake allows you to work around this problem on such machines by
<em>de-ANSI-fying</em> each source file before the actual compilation takes
place.
</p>
<span id="index-AUTOMAKE_005fOPTIONS"></span>
<span id="index-ansi2knr"></span>

<p>If the <samp>Makefile.am</samp> variable <code>AUTOMAKE_OPTIONS</code>
(see <a href="#Options">Changing Automake’s Behavior</a>) contains the option <code>ansi2knr</code> then code to
handle de-ANSI-fication is inserted into the generated
<samp>Makefile.in</samp>.
</p>
<p>This causes each C source file in the directory to be treated as ANSI C.
If an ANSI C compiler is available, it is used.  If no ANSI C compiler
is available, the <code>ansi2knr</code> program is used to convert the source
files into K&amp;R C, which is then compiled.
</p>
<p>The <code>ansi2knr</code> program is simple-minded.  It assumes the source
code will be formatted in a particular way; see the <code>ansi2knr</code> man
page for details.
</p>
<p>Support for de-ANSI-fication requires the source files <samp>ansi2knr.c</samp>
and <samp>ansi2knr.1</samp> to be in the same package as the ANSI C source;
these files are distributed with Automake.  Also, the package
<samp>configure.in</samp> must call the macro <code>AM_C_PROTOTYPES</code>
(see <a href="#Macros">Autoconf macros supplied with Automake</a>).
<span id="index-AM_005fC_005fPROTOTYPES-2"></span>
</p>
<p>Automake also handles finding the <code>ansi2knr</code> support files in some
other directory in the current package.  This is done by prepending the
relative path to the appropriate directory to the <code>ansi2knr</code>
option.  For instance, suppose the package has ANSI C code in the
<samp>src</samp> and <samp>lib</samp> subdirs.  The files <samp>ansi2knr.c</samp> and
<samp>ansi2knr.1</samp> appear in <samp>lib</samp>.  Then this could appear in
<samp>src/Makefile.am</samp>:
</p>
<div class="example">
<pre class="example">AUTOMAKE_OPTIONS = ../lib/ansi2knr
</pre></div>

<p>If no directory prefix is given, the files are assumed to be in the
current directory.
</p>
<p>Files mentioned in <code>LIBOBJS</code> which need de-ANSI-fication will not
be automatically handled.  That’s because <code>configure</code> will generate
an object name like <samp>regex.o</samp>, while <code>make</code> will be looking
for <samp>regex_.o</samp> (when de-ANSI-fying).  Eventually this problem will
be fixed via <code>autoconf</code> magic, but for now you must put this code
into your <samp>configure.in</samp>, just before the <code>AC_OUTPUT</code> call:
</p>
<div class="example">
<pre class="example"># This is necessary so that .o files in LIBOBJS are also built via
# the ANSI2KNR-filtering rules.
LIBOBJS=`echo $LIBOBJS|sed 's/\.o /\$U.o /g;s/\.o$/\$U.o/'`
</pre></div>

<p>Note that automatic de-ANSI-fication will not work when the package is
being built for a different host architecture.  That is because automake
currently has no way to build <code>ansi2knr</code> for the build machine.
</p>

<hr>
</div>
<div class="section" id="Dependencies">
<div class="header">
<p>
Next: <a href="#EXEEXT" accesskey="n" rel="next">Support for executable extensions</a>, Previous: <a href="#ANSI" accesskey="p" rel="prev">Automatic de-ANSI-fication</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Automatic-dependency-tracking"></span><h3 class="section">9.14 Automatic dependency tracking</h3>

<p>As a developer it is often painful to continually update the
<samp>Makefile.in</samp> whenever the include-file dependencies change in a
project.  Automake supplies a way to automatically track dependency
changes.
</p>
<span id="index-Dependency-tracking"></span>
<span id="index-Automatic-dependency-tracking"></span>

<p>Automake always uses complete dependencies for a compilation, including
system headers.  Automake’s model is that dependency computation should
be a side effect of the build.  To this end, dependencies are computed
by running all compilations through a special wrapper program called
<code>depcomp</code>.  <code>depcomp</code> understands how to coax many different C
and C++ compilers into generating dependency information in the format
it requires.  <code>automake -a</code> will install <code>depcomp</code> into your
source tree for you.  If <code>depcomp</code> can’t figure out how to properly
invoke your compiler, dependency tracking will simply be disabled for
your build.
</p>
<span id="index-depcomp"></span>

<p>Experience with earlier versions of Automake <a id="DOCF6" href="#FOOT6"><sup>6</sup></a> taught us that it is not reliable to generate
dependencies only on the maintainer’s system, as configurations vary too
much.  So instead Automake implements dependency tracking at build time.
</p>
<p>Automatic dependency tracking can be suppressed by putting
<code>no-dependencies</code> in the variable <code>AUTOMAKE_OPTIONS</code>, or
passing <code>no-dependencies</code> as an argument to <code>AM_INIT_AUTOMAKE</code>
(this should be the prefered way).  Or, you can invoke <code>automake</code>
with the <code>-i</code> option.  Dependency tracking is enabled by default.
</p>
<span id="index-AUTOMAKE_005fOPTIONS-1"></span>
<span id="index-no_002ddependencies"></span>

<p>The person building your package also can choose to disable dependency
tracking by configuring with <code>--disable-dependency-tracking</code>.
</p>
<span id="index-Disabling-dependency-tracking"></span>
<span id="index-Dependency-tracking_002c-disabling"></span>


<hr>
</div>
<div class="section" id="EXEEXT">
<div class="header">
<p>
Previous: <a href="#Dependencies" accesskey="p" rel="prev">Automatic dependency tracking</a>, Up: <a href="#Programs" accesskey="u" rel="up">Building Programs and Libraries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Support-for-executable-extensions"></span><h3 class="section">9.15 Support for executable extensions</h3>

<span id="index-Executable-extension"></span>
<span id="index-Extension_002c-executable"></span>
<span id="index-Windows"></span>

<p>On some platforms, such as Windows, executables are expected to have an
extension such as ‘<samp>.exe</samp>’.  On these platforms, some compilers (GCC
among them) will automatically generate <samp>foo.exe</samp> when asked to
generate <samp>foo</samp>.
</p>
<p>Automake provides mostly-transparent support for this.  Unfortunately
<em>mostly</em> doesn’t yet mean <em>fully</em>.  Until the English
dictionary is revised, you will have to assist Automake if your package
must support those platforms.
</p>
<p>One thing you must be aware of is that, internally, Automake rewrites
something like this:
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = liver
</pre></div>

<p>to this:
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = liver$(EXEEXT)
</pre></div>

<p>The targets Automake generates are likewise given the ‘<samp>$(EXEEXT)</samp>’
extension.  <code>EXEEXT</code>
</p>
<p>However, Automake cannot apply this rewriting to <code>configure</code>
substitutions.  This means that if you are conditionally building a
program using such a substitution, then your <samp>configure.in</samp> must
take care to add ‘<samp>$(EXEEXT)</samp>’ when constructing the output variable.
</p>
<p>With Autoconf 2.13 and earlier, you must explicitly use <code>AC_EXEEXT</code>
to get this support.  With Autoconf 2.50, <code>AC_EXEEXT</code> is run
automatically if you configure a compiler (say, through
<code>AC_PROG_CC</code>).
</p>
<p>Sometimes maintainers like to write an explicit link rule for their
program.  Without executable extension support, this is easy—you
simply write a target with the same name as the program.  However, when
executable extension support is enabled, you must instead add the
‘<samp>$(EXEEXT)</samp>’ suffix.
</p>
<p>Unfortunately, due to the change in Autoconf 2.50, this means you must
always add this extension.  However, this is a problem for maintainers
who know their package will never run on a platform that has executable
extensions.  For those maintainers, the <code>no-exeext</code> option
(see <a href="#Options">Changing Automake’s Behavior</a>) will disable this feature.  This works in a fairly
ugly way; if <code>no-exeext</code> is seen, then the presence of a target
named <code>foo</code> in <samp>Makefile.am</samp> will override an
automake-generated target of the form <code>foo$(EXEEXT)</code>.  Without the
<code>no-exeext</code> option, this use will give an error.
</p>

<hr>
</div>
</div>
<div class="chapter" id="Other-objects">
<div class="header">
<p>
Next: <a href="#Other-GNU-Tools" accesskey="n" rel="next">Other GNU Tools</a>, Previous: <a href="#Programs" accesskey="p" rel="prev">Building Programs and Libraries</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Other-Derived-Objects"></span><h2 class="chapter">10 Other Derived Objects</h2>

<p>Automake can handle derived objects which are not C programs.  Sometimes
the support for actually building such objects must be explicitly
supplied, but Automake will still automatically handle installation and
distribution.
</p>


<ul class="section-toc">
<li><a href="#Scripts" accesskey="1">Executable Scripts</a></li>
<li><a href="#Headers" accesskey="2">Header files</a></li>
<li><a href="#Data" accesskey="3">Architecture-independent data files</a></li>
<li><a href="#Sources" accesskey="4">Built sources</a></li>
</ul>
<hr>
<div class="section" id="Scripts">
<div class="header">
<p>
Next: <a href="#Headers" accesskey="n" rel="next">Header files</a>, Previous: <a href="#Other-objects" accesskey="p" rel="prev">Other Derived Objects</a>, Up: <a href="#Other-objects" accesskey="u" rel="up">Other Derived Objects</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Executable-Scripts"></span><h3 class="section">10.1 Executable Scripts</h3>

<span id="index-_005fSCRIPTS-primary_002c-defined"></span>
<span id="index-SCRIPTS-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-SCRIPTS"></span>

<p>It is possible to define and install programs which are scripts.  Such
programs are listed using the ‘<samp>SCRIPTS</samp>’ primary name.  Automake
doesn’t define any dependencies for scripts; the <samp>Makefile.am</samp>
should include the appropriate rules.
<span id="index-SCRIPTS-1"></span>
</p>
<p>Automake does not assume that scripts are derived objects; such objects
must be deleted by hand (see <a href="#Clean">What Gets Cleaned</a>).
</p>
<p>The <code>automake</code> program itself is a Perl script that is generated at
configure time from <samp>automake.in</samp>.  Here is how this is handled:
</p>
<div class="example">
<pre class="example">bin_SCRIPTS = automake
</pre></div>

<p>Since <code>automake</code> appears in the <code>AC_OUTPUT</code> macro, a target
for it is automatically generated, and it is also automatically cleaned
(despite the fact it’s a script).
</p>
<span id="index-SCRIPTS_002c-installation-directories"></span>
<span id="index-Installing-scripts"></span>

<span id="index-bin_005fSCRIPTS"></span>
<span id="index-sbin_005fSCRIPTS"></span>
<span id="index-libexec_005fSCRIPTS"></span>
<span id="index-pkgdata_005fSCRIPTS"></span>
<span id="index-noinst_005fSCRIPTS"></span>
<span id="index-check_005fSCRIPTS"></span>

<p>Script objects can be installed in <code>bindir</code>, <code>sbindir</code>,
<code>libexecdir</code>, or <code>pkgdatadir</code>.
</p>
<p>Scripts that need not being installed can be listed in
<code>noinst_SCRIPTS</code>, and among them, those which are needed only by
<code>make check</code> should go in <code>check_SCRIPTS</code>.
</p>

<hr>
</div>
<div class="section" id="Headers">
<div class="header">
<p>
Next: <a href="#Data" accesskey="n" rel="next">Architecture-independent data files</a>, Previous: <a href="#Scripts" accesskey="p" rel="prev">Executable Scripts</a>, Up: <a href="#Other-objects" accesskey="u" rel="up">Other Derived Objects</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Header-files"></span><h3 class="section">10.2 Header files</h3>

<span id="index-_005fHEADERS-primary_002c-defined"></span>
<span id="index-HEADERS-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-HEADERS"></span>

<span id="index-noinst_005fHEADERS"></span>

<p>Header files are specified by the ‘<samp>HEADERS</samp>’ family of variables.
Generally header files are not installed, so the <code>noinst_HEADERS</code>
variable will be the most used.  <a id="DOCF7" href="#FOOT7"><sup>7</sup></a>
<span id="index-HEADERS-1"></span>
</p>
<p>All header files must be listed somewhere; missing ones will not appear
in the distribution.  Often it is clearest to list uninstalled headers
with the rest of the sources for a program.  See <a href="#A-Program">Building a program</a>.  Headers
listed in a ‘<samp>_SOURCES</samp>’ variable need not be listed in any
‘<samp>_HEADERS</samp>’ variable.
</p>
<span id="index-HEADERS_002c-installation-directories"></span>
<span id="index-Installing-headers"></span>

<span id="index-include_005fHEADERS"></span>
<span id="index-oldinclude_005fHEADERS"></span>
<span id="index-pkginclude_005fHEADERS"></span>

<p>Headers can be installed in <code>includedir</code>, <code>oldincludedir</code>, or
<code>pkgincludedir</code>.
</p>

<hr>
</div>
<div class="section" id="Data">
<div class="header">
<p>
Next: <a href="#Sources" accesskey="n" rel="next">Built sources</a>, Previous: <a href="#Headers" accesskey="p" rel="prev">Header files</a>, Up: <a href="#Other-objects" accesskey="u" rel="up">Other Derived Objects</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Architecture_002dindependent-data-files"></span><h3 class="section">10.3 Architecture-independent data files</h3>

<span id="index-_005fDATA-primary_002c-defined"></span>
<span id="index-DATA-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-DATA"></span>

<p>Automake supports the installation of miscellaneous data files using the
‘<samp>DATA</samp>’ family of variables.
<span id="index-DATA-1"></span>
</p>
<span id="index-data_005fDATA"></span>
<span id="index-sysconf_005fDATA"></span>
<span id="index-sharedstate_005fDATA"></span>
<span id="index-localstate_005fDATA"></span>
<span id="index-pkgdata_005fDATA"></span>

<p>Such data can be installed in the directories <code>datadir</code>,
<code>sysconfdir</code>, <code>sharedstatedir</code>, <code>localstatedir</code>, or
<code>pkgdatadir</code>.
</p>
<p>By default, data files are <em>not</em> included in a distribution.  Of
course, you can use the ‘<samp>dist_</samp>’ prefix to change this on a
per-variable basis.
</p>
<p>Here is how Automake declares its auxiliary data files:
</p>
<div class="example">
<pre class="example">dist_pkgdata_DATA = clean-kr.am clean.am …
</pre></div>


<hr>
</div>
<div class="section" id="Sources">
<div class="header">
<p>
Previous: <a href="#Data" accesskey="p" rel="prev">Architecture-independent data files</a>, Up: <a href="#Other-objects" accesskey="u" rel="up">Other Derived Objects</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Built-sources"></span><h3 class="section">10.4 Built sources</h3>

<span id="index-BUILT_005fSOURCES_002c-defined"></span>

<p>Occasionally a file which would otherwise be called ‘<samp>source</samp>’
(e.g. a C ‘<samp>.h</samp>’ file) is actually derived from some other file.
Such files should be listed in the <code>BUILT_SOURCES</code> variable.
<span id="index-BUILT_005fSOURCES"></span>
</p>
<p><code>BUILT_SOURCES</code> is actually a bit of a misnomer, as any file which
must be created early in the build process can be listed in this
variable.
</p>
<p>A source file listed in <code>BUILT_SOURCES</code> is created before the other
<code>all</code> targets are made.  However, such a source file is not
compiled unless explicitly requested by mentioning it in some other
‘<samp>_SOURCES</samp>’ variable.
</p>
<p>So, for instance, if you had header files which were created by a script
run at build time, then you would list these headers in
<code>BUILT_SOURCES</code>, to ensure that they would be built before any
other compilations (perhaps ones using these headers) were started.
</p>

<hr>
</div>
</div>
<div class="chapter" id="Other-GNU-Tools">
<div class="header">
<p>
Next: <a href="#Documentation" accesskey="n" rel="next">Building documentation</a>, Previous: <a href="#Other-objects" accesskey="p" rel="prev">Other Derived Objects</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Other-GNU-Tools-1"></span><h2 class="chapter">11 Other GNU Tools</h2>

<p>Since Automake is primarily intended to generate <samp>Makefile.in</samp>s for
use in GNU programs, it tries hard to interoperate with other GNU tools.
</p>


<ul class="section-toc">
<li><a href="#Emacs-Lisp" accesskey="1">Emacs Lisp</a></li>
<li><a href="#gettext" accesskey="2">Gettext</a></li>
<li><a href="#Libtool" accesskey="3">Libtool</a></li>
<li><a href="#Java" accesskey="4">Java</a></li>
<li><a href="#Python" accesskey="5">Python</a></li>
</ul>
<hr>
<div class="section" id="Emacs-Lisp">
<div class="header">
<p>
Next: <a href="#gettext" accesskey="n" rel="next">Gettext</a>, Previous: <a href="#Other-GNU-Tools" accesskey="p" rel="prev">Other GNU Tools</a>, Up: <a href="#Other-GNU-Tools" accesskey="u" rel="up">Other GNU Tools</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Emacs-Lisp-1"></span><h3 class="section">11.1 Emacs Lisp</h3>

<span id="index-_005fLISP-primary_002c-defined"></span>
<span id="index-LISP-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-LISP"></span>

<span id="index-LISP-1"></span>
<span id="index-lisp_005fLISP"></span>
<span id="index-noinst_005fLISP"></span>

<p>Automake provides some support for Emacs Lisp.  The ‘<samp>LISP</samp>’ primary
is used to hold a list of <samp>.el</samp> files.  Possible prefixes for this
primary are ‘<samp>lisp_</samp>’ and ‘<samp>noinst_</samp>’.  Note that if
<code>lisp_LISP</code> is defined, then <samp>configure.in</samp> must run
<code>AM_PATH_LISPDIR</code> (see <a href="#Macros">Autoconf macros supplied with Automake</a>).
</p>
<span id="index-ELCFILES"></span>

<p>By default Automake will byte-compile all Emacs Lisp source files using
the Emacs found by <code>AM_PATH_LISPDIR</code>.  If you wish to avoid
byte-compiling, simply define the variable <code>ELCFILES</code> to be empty.
Byte-compiled Emacs Lisp files are not portable among all versions of
Emacs, so it makes sense to turn this off if you expect sites to have
more than one version of Emacs installed.  Furthermore, many packages
don’t actually benefit from byte-compilation.  Still, we recommend that
you leave it enabled by default.  It is probably better for sites with
strange setups to cope for themselves than to make the installation less
nice for everybody else.
</p>

<hr>
</div>
<div class="section" id="gettext">
<div class="header">
<p>
Next: <a href="#Libtool" accesskey="n" rel="next">Libtool</a>, Previous: <a href="#Emacs-Lisp" accesskey="p" rel="prev">Emacs Lisp</a>, Up: <a href="#Other-GNU-Tools" accesskey="u" rel="up">Other GNU Tools</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Gettext"></span><h3 class="section">11.2 Gettext</h3>

<span id="index-GNU-Gettext-support"></span>
<span id="index-Gettext-support"></span>
<span id="index-Support-for-GNU-Gettext"></span>

<p>If <code>AM_GNU_GETTEXT</code> is seen in <samp>configure.in</samp>, then Automake
turns on support for GNU gettext, a message catalog system for
internationalization
(see <a data-manual="gettext" href="https://www.gnu.org/software/gettext/manual/gettext.html#GNU-Gettext">GNU Gettext</a> in <cite>GNU gettext utilities</cite>).
</p>
<p>The <code>gettext</code> support in Automake requires the addition of two
subdirectories to the package, <samp>intl</samp> and <samp>po</samp>.  Automake
insures that these directories exist and are mentioned in
<code>SUBDIRS</code>.
</p>

<hr>
</div>
<div class="section" id="Libtool">
<div class="header">
<p>
Next: <a href="#Java" accesskey="n" rel="next">Java</a>, Previous: <a href="#gettext" accesskey="p" rel="prev">Gettext</a>, Up: <a href="#Other-GNU-Tools" accesskey="u" rel="up">Other GNU Tools</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Libtool-1"></span><h3 class="section">11.3 Libtool</h3>

<p>Automake provides support for GNU Libtool (see <a data-manual="libtool" href="https://www.gnu.org/software/libtool/manual/libtool.html#Top">Introduction</a> in <cite>The Libtool Manual</cite>) with the ‘<samp>LTLIBRARIES</samp>’ primary.
See <a href="#A-Shared-Library">Building a Shared Library</a>.
</p>

<hr>
</div>
<div class="section" id="Java">
<div class="header">
<p>
Next: <a href="#Python" accesskey="n" rel="next">Python</a>, Previous: <a href="#Libtool" accesskey="p" rel="prev">Libtool</a>, Up: <a href="#Other-GNU-Tools" accesskey="u" rel="up">Other GNU Tools</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Java-1"></span><h3 class="section">11.4 Java</h3>

<span id="index-_005fJAVA-primary_002c-defined"></span>
<span id="index-JAVA-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-JAVA"></span>

<p>Automake provides some minimal support for Java compilation with the
‘<samp>JAVA</samp>’ primary.
</p>
<p>Any <samp>.java</samp> files listed in a ‘<samp>_JAVA</samp>’ variable will be
compiled with <code>JAVAC</code> at build time.  By default, <samp>.class</samp>
files are not included in the distribution.
</p>
<span id="index-JAVA-restrictions"></span>
<span id="index-Restrictions-for-JAVA"></span>

<p>Currently Automake enforces the restriction that only one ‘<samp>_JAVA</samp>’
primary can be used in a given <samp>Makefile.am</samp>.  The reason for this
restriction is that, in general, it isn’t possible to know which
<samp>.class</samp> files were generated from which <samp>.java</samp> files – so
it would be impossible to know which files to install where.  For
instance, a <samp>.java</samp> file can define multiple classes; the resulting
<samp>.class</samp> file names cannot be predicted without parsing the
<samp>.java</samp> file.
</p>
<p>There are a few variables which are used when compiling Java sources:
</p>
<dl compact="compact">
<dt id="index-JAVAC"><span><code>JAVAC</code><a href="#index-JAVAC" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The name of the Java compiler.  This defaults to ‘<samp>javac</samp>’.
</p>
</dd>
<dt id="index-JAVACFLAGS"><span><code>JAVACFLAGS</code><a href="#index-JAVACFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The flags to pass to the compiler.  This is considered to be a user
variable (see <a href="#User-Variables">Variables reserved for the user</a>).
</p>
</dd>
<dt id="index-AM_005fJAVACFLAGS"><span><code>AM_JAVACFLAGS</code><a href="#index-AM_005fJAVACFLAGS" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>More flags to pass to the Java compiler.  This, and not
<code>JAVACFLAGS</code>, should be used when it is necessary to put Java
compiler flags into <samp>Makefile.am</samp>.
</p>
</dd>
<dt id="index-JAVAROOT"><span><code>JAVAROOT</code><a href="#index-JAVAROOT" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The value of this variable is passed to the ‘<samp>-d</samp>’ option to
<code>javac</code>.  It defaults to ‘<samp>$(top_builddir)</samp>’.
</p>
</dd>
<dt id="index-CLASSPATH_005fENV"><span><code>CLASSPATH_ENV</code><a href="#index-CLASSPATH_005fENV" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This variable is an <code>sh</code> expression which is used to set the
<code>CLASSPATH</code> environment variable on the <code>javac</code> command line.
(In the future we will probably handle class path setting differently.)
</p></dd>
</dl>


<hr>
</div>
<div class="section" id="Python">
<div class="header">
<p>
Previous: <a href="#Java" accesskey="p" rel="prev">Java</a>, Up: <a href="#Other-GNU-Tools" accesskey="u" rel="up">Other GNU Tools</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Python-1"></span><h3 class="section">11.5 Python</h3>

<span id="index-_005fPYTHON-primary_002c-defined"></span>
<span id="index-PYTHON-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-PYTHON"></span>


<p>Automake provides support for Python compilation with the ‘<samp>PYTHON</samp>’
primary.
</p>
<p>Any files listed in a ‘<samp>_PYTHON</samp>’ variable will be byte-compiled with
<code>py-compile</code> at install time.  <code>py-compile</code> actually creates
both standard (<samp>.pyc</samp>) and byte-compiled (<samp>.pyo</samp>) versions of
the source files.  Note that because byte-compilation occurs at install
time, any files listed in ‘<samp>noinst_PYTHON</samp>’ will not be compiled.
Python source files are included in the distribution by default.
</p>
<p>Automake ships with an Autoconf macro called <code>AM_PATH_PYTHON</code> which
will determine some Python-related directory variables (see below).  If
have called <code>AM_PATH_PYTHON</code> from you <samp>configure.in</samp>, then you
may use the following variables to list you Python source files in your
variables: ‘<samp>python_PYTHON</samp>’, ‘<samp>pkgpython_PYTHON</samp>’,
‘<samp>pkgpython_PYTHON</samp>’, ‘<samp>pyexecdir_PYTHON</samp>’,
‘<samp>pkgpyexecdir_PYTHON</samp>’, depending where you want your files
installed.
</p>
<p><code>AM_PATH_PYTHON</code> takes a single optional argument.  This argument,
if present, is the minimum version of Python which can be used for this
package.  If the version of Python found on the system is older than the
required version, then <code>AM_PATH_PYTHON</code> will cause an error.
</p>
<p><code>AM_PATH_PYTHON</code> creates several output variables based on the
Python installation found during configuration.
</p>
<dl compact="compact">
<dt id="index-PYTHON-1"><span><code>PYTHON</code><a href="#index-PYTHON-1" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The name of the Python executable.
</p>
</dd>
<dt id="index-PYTHON_005fVERSION"><span><code>PYTHON_VERSION</code><a href="#index-PYTHON_005fVERSION" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The Python version number, in the form <var>major</var>.<var>minor</var>
(e.g. ‘<samp>1.5</samp>’).  This is currently the value of
<code>sys.version[:3]</code>.
</p>
</dd>
<dt id="index-PYTHON_005fPREFIX"><span><code>PYTHON_PREFIX</code><a href="#index-PYTHON_005fPREFIX" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The string <code>$prefix</code>.  This term may be used in future work
which needs the contents of Python’s <code>sys.prefix</code>, but general
consensus is to always use the value from configure.
</p>
</dd>
<dt id="index-PYTHON_005fEXEC_005fPREFIX"><span><code>PYTHON_EXEC_PREFIX</code><a href="#index-PYTHON_005fEXEC_005fPREFIX" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The string <code>$exec_prefix</code>.  This term may be used in future work
which needs the contents of Python’s <code>sys.exec_prefix</code>, but general
consensus is to always use the value from configure.
</p>
</dd>
<dt id="index-PYTHON_005fPLATFORM"><span><code>PYTHON_PLATFORM</code><a href="#index-PYTHON_005fPLATFORM" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The canonical name used by Python to describe the operating system, as
given by <code>sys.platform</code>.  This value is sometimes needed when
building Python extensions.
</p>
</dd>
<dt id="index-pythondir"><span><code>pythondir</code><a href="#index-pythondir" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The directory name for the <samp>site-packages</samp> subdirectory of the
standard Python install tree.
</p>
</dd>
<dt id="index-pkgpythondir"><span><code>pkgpythondir</code><a href="#index-pkgpythondir" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This is is the directory under <code>pythondir</code> which is named after the
package.  That is, it is ‘<samp>$(pythondir)/$(PACKAGE)</samp>’.  It is provided
as a convenience.
</p>
</dd>
<dt id="index-pyexecdir"><span><code>pyexecdir</code><a href="#index-pyexecdir" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This is the directory where Python extension modules (shared libraries)
should be installed.
</p>
</dd>
<dt id="index-pkgpyexecdir"><span><code>pkgpyexecdir</code><a href="#index-pkgpyexecdir" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This is a convenience variable which is defined as
‘<samp>$(pyexecdir)/$(PACKAGE)</samp>’.
</p></dd>
</dl>


<hr>
</div>
</div>
<div class="chapter" id="Documentation">
<div class="header">
<p>
Next: <a href="#Install" accesskey="n" rel="next">What Gets Installed</a>, Previous: <a href="#Other-GNU-Tools" accesskey="p" rel="prev">Other GNU Tools</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Building-documentation"></span><h2 class="chapter">12 Building documentation</h2>

<p>Currently Automake provides support for Texinfo and man pages.
</p>


<ul class="section-toc">
<li><a href="#Texinfo" accesskey="1">Texinfo</a></li>
<li><a href="#Man-pages" accesskey="2">Man pages</a></li>
</ul>
<hr>
<div class="section" id="Texinfo">
<div class="header">
<p>
Next: <a href="#Man-pages" accesskey="n" rel="next">Man pages</a>, Previous: <a href="#Documentation" accesskey="p" rel="prev">Building documentation</a>, Up: <a href="#Documentation" accesskey="u" rel="up">Building documentation</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Texinfo-1"></span><h3 class="section">12.1 Texinfo</h3>

<span id="index-_005fTEXINFOS-primary_002c-defined"></span>
<span id="index-TEXINFOS-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-TEXINFOS"></span>

<p>If the current directory contains Texinfo source, you must declare it
with the ‘<samp>TEXINFOS</samp>’ primary.  Generally Texinfo files are converted
into info, and thus the <code>info_TEXINFOS</code> macro is most commonly used
here.  Any Texinfo source file must end in the <samp>.texi</samp>,
<samp>.txi</samp>, or <samp>.texinfo</samp> extension.  We recommend <samp>.texi</samp>
for new manuals.
<span id="index-TEXINFOS-1"></span>
<span id="index-info_005fTEXINFOS"></span>
</p>
<span id="index-Texinfo-macro_002c-VERSION"></span>
<span id="index-Texinfo-macro_002c-UPDATED"></span>
<span id="index-Texinfo-macro_002c-EDITION"></span>
<span id="index-Texinfo-macro_002c-UPDATED_002dMONTH"></span>

<span id="index-VERSION-Texinfo-macro"></span>
<span id="index-UPDATED-Texinfo-macro"></span>
<span id="index-EDITION-Texinfo-macro"></span>
<span id="index-UPDATED_002dMONTH-Texinfo-macro"></span>

<span id="index-mdate_002dsh"></span>

<p>If the <samp>.texi</samp> file <code>@include</code>s <samp>version.texi</samp>, then
that file will be automatically generated.  The file <samp>version.texi</samp>
defines four Texinfo macros you can reference:
</p>
<dl compact="compact">
<dt><span><code>EDITION</code></span></dt>
<dt><span><code>VERSION</code></span></dt>
<dd><p>Both of these macros hold the version number of your program.  They are
kept separate for clarity.
</p>
</dd>
<dt><span><code>UPDATED</code></span></dt>
<dd><p>This holds the date the primary <samp>.texi</samp> file was last modified.
</p>
</dd>
<dt><span><code>UPDATED-MONTH</code></span></dt>
<dd><p>This holds the name of the month in which the primary <samp>.texi</samp> file
was last modified.
</p></dd>
</dl>

<p>The <samp>version.texi</samp> support requires the <code>mdate-sh</code> program;
this program is supplied with Automake and automatically included when
<code>automake</code> is invoked with the <code>--add-missing</code> option.
</p>
<p>If you have multiple Texinfo files, and you want to use the
<samp>version.texi</samp> feature, then you have to have a separate version
file for each Texinfo file.  Automake will treat any include in a
Texinfo file that matches ‘<samp>vers*.texi</samp>’ just as an automatically
generated version file.
</p>
<p>When an info file is rebuilt, the program named by the <code>MAKEINFO</code>
variable is used to invoke it.  If the <code>makeinfo</code> program is found
on the system then it will be used by default; otherwise <code>missing</code>
will be used instead.  The flags in the variables <code>MAKEINFOFLAGS</code>
and <code>AM_MAKEINFOFLAGS</code> will be passed to the <code>makeinfo</code>
invocation; the first of these is intended for use by the user
(see <a href="#User-Variables">Variables reserved for the user</a>) and the second by the <samp>Makefile.am</samp>
writer.
<span id="index-MAKEINFO"></span>
<span id="index-MAKEINFOFLAGS"></span>
<span id="index-AM_005fMAKEINFOFLAGS"></span>
</p>
<p>Sometimes an info file actually depends on more than one <samp>.texi</samp>
file.  For instance, in GNU Hello, <samp>hello.texi</samp> includes the file
<samp>gpl.texi</samp>.  You can tell Automake about these dependencies using
the <code><var>texi</var>_TEXINFOS</code> variable.  Here is how GNU Hello does it:
<span id="index-TEXINFOS-2"></span>
<span id="index-_005fTEXINFOS"></span>
</p>
<div class="example">
<pre class="example">info_TEXINFOS = hello.texi
hello_TEXINFOS = gpl.texi
</pre></div>

<span id="index-texinfo_002etex"></span>

<p>By default, Automake requires the file <samp>texinfo.tex</samp> to appear in
the same directory as the Texinfo source.  However, if you used
<code>AC_CONFIG_AUX_DIR</code> in <samp>configure.in</samp> (see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Input">Finding
‘configure’ Input</a> in <cite>The Autoconf Manual</cite>), then
<samp>texinfo.tex</samp> is looked for there.  Automake supplies
<samp>texinfo.tex</samp> if ‘<samp>--add-missing</samp>’ is given.
</p>
<span id="index-TEXINFO_005fTEX"></span>

<p>If your package has Texinfo files in many directories, you can use the
variable <code>TEXINFO_TEX</code> to tell Automake where to find the canonical
<samp>texinfo.tex</samp> for your package.  The value of this variable should
be the relative path from the current <samp>Makefile.am</samp> to
<samp>texinfo.tex</samp>:
</p>
<div class="example">
<pre class="example">TEXINFO_TEX = ../doc/texinfo.tex
</pre></div>

<span id="index-no_002dtexinfo_002etex"></span>

<p>The option ‘<samp>no-texinfo.tex</samp>’ can be used to eliminate the
requirement for <samp>texinfo.tex</samp>.  Use of the variable
<code>TEXINFO_TEX</code> is preferable, however, because that allows the
<code>dvi</code> target to still work.
</p>
<span id="index-Target_002c-install_002dinfo"></span>
<span id="index-Target_002c-noinstall_002dinfo"></span>
<span id="index-install_002dinfo-target"></span>
<span id="index-noinstall_002dinfo-target"></span>

<span id="index-no_002dinstallinfo"></span>
<span id="index-install_002dinfo"></span>

<p>Automake generates an <code>install-info</code> target; some people apparently
use this.  By default, info pages are installed by ‘<samp>make install</samp>’.
This can be prevented via the <code>no-installinfo</code> option.
</p>

<hr>
</div>
<div class="section" id="Man-pages">
<div class="header">
<p>
Previous: <a href="#Texinfo" accesskey="p" rel="prev">Texinfo</a>, Up: <a href="#Documentation" accesskey="u" rel="up">Building documentation</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Man-pages-1"></span><h3 class="section">12.2 Man pages</h3>

<span id="index-_005fMANS-primary_002c-defined"></span>
<span id="index-MANS-primary_002c-defined"></span>
<span id="index-Primary-variable_002c-MANS"></span>

<p>A package can also include man pages (but see the GNU standards on this
matter, <a data-manual="standards" href="https://www.gnu.org/prep/standards/standards.html#Man-Pages">Man Pages</a> in <cite>The GNU Coding Standards</cite>.)  Man
pages are declared using the ‘<samp>MANS</samp>’ primary.  Generally the
<code>man_MANS</code> macro is used.  Man pages are automatically installed in
the correct subdirectory of <code>mandir</code>, based on the file extension.
<span id="index-MANS-1"></span>
<span id="index-man_005fMANS"></span>
</p>
<p>File extensions such as ‘<samp>.1c</samp>’ are handled by looking for the valid
part of the extension and using that to determine the correct
subdirectory of <code>mandir</code>.  Valid section names are the digits
‘<samp>0</samp>’ through ‘<samp>9</samp>’, and the letters ‘<samp>l</samp>’ and ‘<samp>n</samp>’.
</p>
<p>Sometimes developers prefer to name a man page something like
<samp>foo.man</samp> in the source, and then rename it to have the correct
suffix, e.g. <samp>foo.1</samp>, when installing the file.  Automake also
supports this mode.  For a valid section named <var>SECTION</var>, there is a
corresponding directory named ‘<samp>man<var>SECTION</var>dir</samp>’, and a
corresponding ‘<samp>_MANS</samp>’ variable.  Files listed in such a variable
are installed in the indicated section.  If the file already has a
valid suffix, then it is installed as-is; otherwise the file suffix is
changed to match the section.
</p>
<p>For instance, consider this example:
</p><div class="example">
<pre class="example">man1_MANS = rename.man thesame.1 alsothesame.1c
</pre></div>

<p>In this case, <samp>rename.man</samp> will be renamed to <samp>rename.1</samp> when
installed, but the other files will keep their names.
</p>
<span id="index-Target_002c-install_002dman"></span>
<span id="index-Target_002c-noinstall_002dman"></span>
<span id="index-install_002dman-target"></span>
<span id="index-noinstall_002dman-target"></span>

<p>By default, man pages are installed by ‘<samp>make install</samp>’.  However,
since the GNU project does not require man pages, many maintainers do
not expend effort to keep the man pages up to date.  In these cases, the
<code>no-installman</code> option will prevent the man pages from being
installed by default.  The user can still explicitly install them via
‘<samp>make install-man</samp>’.
<span id="index-no_002dinstallman"></span>
<span id="index-install_002dman"></span>
</p>
<p>Here is how the man pages are handled in GNU <code>cpio</code> (which includes
both Texinfo documentation and man pages):
</p>
<div class="example">
<pre class="example">man_MANS = cpio.1 mt.1
EXTRA_DIST = $(man_MANS)
</pre></div>

<p>Man pages are not currently considered to be source, because it is not
uncommon for man pages to be automatically generated.  Therefore they
are not automatically included in the distribution.  However, this can
be changed by use of the ‘<samp>dist_</samp>’ prefix.
</p>
<p>The ‘<samp>nobase_</samp>’ prefix is meaningless for man pages and is
disallowed.
</p>

<hr>
</div>
</div>
<div class="chapter" id="Install">
<div class="header">
<p>
Next: <a href="#Clean" accesskey="n" rel="next">What Gets Cleaned</a>, Previous: <a href="#Documentation" accesskey="p" rel="prev">Building documentation</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="What-Gets-Installed"></span><h2 class="chapter">13 What Gets Installed</h2>

<span id="index-Installation-support"></span>
<span id="index-make-install-support"></span>

<ul class="section-toc">
<li><a href="#Basics-of-installation" accesskey="1">Basics of installation</a></li>
<li><a href="#The-two-parts-of-install" accesskey="2">The two parts of install</a></li>
<li><a href="#Extending-installation" accesskey="3">Extending installation</a></li>
<li><a href="#Staged-installs" accesskey="4">Staged installs</a></li>
<li><a href="#Rules-for-the-user" accesskey="5">Rules for the user</a></li>
</ul>
<div class="section" id="Basics-of-installation">
<h3 class="section">13.1 Basics of installation</h3>

<p>Naturally, Automake handles the details of actually installing your
program once it has been built.  All files named by the various
primaries are automatically installed in the appropriate places when the
user runs <code>make install</code>.
</p>
<p>A file named in a primary is installed by copying the built file into
the appropriate directory.  The base name of the file is used when
installing.
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = hello subdir/goodbye
</pre></div>

<p>In this example, both ‘<samp>hello</samp>’ and ‘<samp>goodbye</samp>’ will be installed
in <code>$(bindir)</code>.
</p>
<p>Sometimes it is useful to avoid the basename step at install time.  For
instance, you might have a number of header files in subdirectories of
the source tree which are laid out precisely how you want to install
them.  In this situation you can use the ‘<samp>nobase_</samp>’ prefix to
suppress the base name step.  For example:
</p>
<div class="example">
<pre class="example">nobase_include_HEADERS = stdio.h sys/types.h
</pre></div>

<p>Will install <samp>stdio.h</samp> in <code>$(includedir)</code> and <samp>types.h</samp>
in <code>$(includedir)/sys</code>.
</p>
</div>
<div class="section" id="The-two-parts-of-install">
<h3 class="section">13.2 The two parts of install</h3>

<p>Automake generates separate <code>install-data</code> and <code>install-exec</code>
targets, in case the installer is installing on multiple machines which
share directory structure—these targets allow the machine-independent
parts to be installed only once.  <code>install-exec</code> installs
platform-dependent files, and <code>install-data</code> installs
platform-independent files.  The <code>install</code> target depends on both
of these targets.  While Automake tries to automatically segregate
objects into the correct category, the <samp>Makefile.am</samp> author is, in
the end, responsible for making sure this is done correctly.
<span id="index-install_002ddata"></span>
<span id="index-install_002dexec"></span>
<span id="index-install"></span>
<span id="index-Install_002c-two-parts-of"></span>
</p>
<p>Variables using the standard directory prefixes ‘<samp>data</samp>’,
‘<samp>info</samp>’, ‘<samp>man</samp>’, ‘<samp>include</samp>’, ‘<samp>oldinclude</samp>’,
‘<samp>pkgdata</samp>’, or ‘<samp>pkginclude</samp>’ (e.g. ‘<samp>data_DATA</samp>’) are
installed by ‘<samp>install-data</samp>’.
</p>
<p>Variables using the standard directory prefixes ‘<samp>bin</samp>’, ‘<samp>sbin</samp>’,
‘<samp>libexec</samp>’, ‘<samp>sysconf</samp>’, ‘<samp>localstate</samp>’, ‘<samp>lib</samp>’, or
‘<samp>pkglib</samp>’ (e.g. ‘<samp>bin_PROGRAMS</samp>’) are installed by
‘<samp>install-exec</samp>’.
</p>
<p>Any variable using a user-defined directory prefix with ‘<samp>exec</samp>’ in
the name (e.g. ‘<samp>myexecbin_PROGRAMS</samp>’ is installed by
‘<samp>install-exec</samp>’.  All other user-defined prefixes are installed by
‘<samp>install-data</samp>’.
</p>
</div>
<div class="section" id="Extending-installation">
<h3 class="section">13.3 Extending installation</h3>

<p>It is possible to extend this mechanism by defining an
<code>install-exec-local</code> or <code>install-data-local</code> target.  If these
targets exist, they will be run at ‘<samp>make install</samp>’ time.  These
rules can do almost anything; care is required.
<span id="index-install_002dexec_002dlocal"></span>
<span id="index-install_002ddata_002dlocal"></span>
</p>
<p>Automake also supports two install hooks, <code>install-exec-hook</code> and
<code>install-data-hook</code>.  These hooks are run after all other install
rules of the appropriate type, exec or data, have completed.  So, for
instance, it is possible to perform post-installation modifications
using an install hook.
<span id="index-Install-hook"></span>
</p>
</div>
<div class="section" id="Staged-installs">
<h3 class="section">13.4 Staged installs</h3>

<span id="index-DESTDIR"></span>
<p>Automake generates support for the ‘<samp>DESTDIR</samp>’ variable in all
install rules.  ‘<samp>DESTDIR</samp>’ is used during the ‘<samp>make install</samp>’
step to relocate install objects into a staging area.  Each object and
path is prefixed with the value of ‘<samp>DESTDIR</samp>’ before being copied
into the install area.  Here is an example of typical DESTDIR usage:
</p>
<div class="example">
<pre class="example">make DESTDIR=/tmp/staging install
</pre></div>

<p>This places install objects in a directory tree built under
<samp>/tmp/staging</samp>.  If <samp>/gnu/bin/foo</samp> and
<samp>/gnu/share/aclocal/foo.m4</samp> are to be installed, the above command
would install <samp>/tmp/staging/gnu/bin/foo</samp> and
<samp>/tmp/staging/gnu/share/aclocal/foo.m4</samp>.
</p>
<p>This feature is commonly used to build install images and packages.  For
more information, see <a data-manual="standards" href="https://www.gnu.org/prep/standards/standards.html#Makefile-Conventions">Makefile Conventions</a> in <cite>The GNU
Coding Standards</cite>.
</p>
<p>Support for ‘<samp>DESTDIR</samp>’ is implemented by coding it directly into the
install rules.  If your <samp>Makefile.am</samp> uses a local install rule
(e.g., <code>install-exec-local</code>) or an install hook, then you must
write that code to respect ‘<samp>DESTDIR</samp>’.
</p>
</div>
<div class="section" id="Rules-for-the-user">
<h3 class="section">13.5 Rules for the user</h3>

<p>Automake also generates an <code>uninstall</code> target, an
<code>installdirs</code> target, and an <code>install-strip</code> target.
<span id="index-uninstall"></span>
<span id="index-installdirs"></span>
<span id="index-install_002dstrip"></span>
</p>
<p>Automake supports <code>uninstall-local</code> and <code>uninstall-hook</code>.
There is no notion of separate uninstalls for “exec” and “data”, as
these features would not provide additional functionality.
</p>
<p>Note that <code>uninstall</code> is not meant as a replacement for a real
packaging tool.
</p>

<hr>
</div>
</div>
<div class="chapter" id="Clean">
<div class="header">
<p>
Next: <a href="#Dist" accesskey="n" rel="next">What Goes in a Distribution</a>, Previous: <a href="#Install" accesskey="p" rel="prev">What Gets Installed</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="What-Gets-Cleaned"></span><h2 class="chapter">14 What Gets Cleaned</h2>

<span id="index-make-clean-support"></span>

<p>The GNU Makefile Standards specify a number of different clean rules.
See See <a data-manual="standards" href="https://www.gnu.org/prep/standards/standards.html#Standard-Targets">Standard Targets for Users</a> in <cite>The GNU Coding Standards</cite>.
</p>
<p>Generally the files that can be cleaned are determined automatically by
Automake.  Of course, Automake also recognizes some variables that can
be defined to specify additional files to clean.  These variables are
<code>MOSTLYCLEANFILES</code>, <code>CLEANFILES</code>, <code>DISTCLEANFILES</code>, and
<code>MAINTAINERCLEANFILES</code>.
<span id="index-MOSTLYCLEANFILES"></span>
<span id="index-CLEANFILES"></span>
<span id="index-DISTCLEANFILES"></span>
<span id="index-MAINTAINERCLEANFILES"></span>
</p>
<p>As the GNU Standards aren’t always explicit as to which files should be
removed by which target, we’ve adopted a heuristic which we believe was
first formulated by François Pinard:
</p>
<ul>
<li> If <code>make</code> built it, and it is commonly something that one would
want to rebuild (for instance, a <samp>.o</samp> file), then
<code>mostlyclean</code> should delete it.

</li><li> Otherwise, if <code>make</code> built it, then <code>clean</code> should delete it.

</li><li> If <code>configure</code> built it, then <code>distclean</code> should delete it

</li><li> If the maintainer built it, then <code>maintainer-clean</code> should
delete it.
</li></ul>

<p>We recommend that you follow this same set of heuristics in your
<samp>Makefile.am</samp>.
</p>

<hr>
</div>
<div class="chapter" id="Dist">
<div class="header">
<p>
Next: <a href="#Tests" accesskey="n" rel="next">Support for test suites</a>, Previous: <a href="#Clean" accesskey="p" rel="prev">What Gets Cleaned</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="What-Goes-in-a-Distribution"></span><h2 class="chapter">15 What Goes in a Distribution</h2>

<ul class="section-toc">
<li><a href="#Basics-of-distribution" accesskey="1">Basics of distribution</a></li>
<li><a href="#Fine_002dgrained-distribution-control" accesskey="2">Fine-grained distribution control</a></li>
<li><a href="#The-dist-hook" accesskey="3">The dist hook</a></li>
<li><a href="#Checking-the-distribution" accesskey="4">Checking the distribution</a></li>
<li><a href="#The-types-of-distributions" accesskey="5">The types of distributions</a></li>
</ul>
<div class="section" id="Basics-of-distribution">
<h3 class="section">15.1 Basics of distribution</h3>

<span id="index-make-dist"></span>

<p>The <code>dist</code> target in the generated <samp>Makefile.in</samp> can be used
to generate a gzip’d <code>tar</code> file and other flavors of archive for
distribution.  The files is named based on the ‘<samp>PACKAGE</samp>’ and
‘<samp>VERSION</samp>’ variables defined by <code>AM_INIT_AUTOMAKE</code>
(see <a href="#Macros">Autoconf macros supplied with Automake</a>); more precisely the gzip’d <code>tar</code> file is named
‘<samp><var>package</var>-<var>version</var>.tar.gz</samp>’.
<span id="index-PACKAGE"></span>
<span id="index-VERSION"></span>
<span id="index-dist"></span>
You can use the <code>make</code> variable ‘<samp>GZIP_ENV</samp>’ to control how gzip
is run.  The default setting is ‘<samp>--best</samp>’.
</p>
<p>For the most part, the files to distribute are automatically found by
Automake: all source files are automatically included in a distribution,
as are all <samp>Makefile.am</samp>s and <samp>Makefile.in</samp>s.  Automake also
has a built-in list of commonly used files which are automatically
included if they are found in the current directory (either physically,
or as the target of a <samp>Makefile.am</samp> rule).  This list is printed by
‘<samp>automake --help</samp>’.  Also, files which are read by <code>configure</code>
(i.e. the source files corresponding to the files specified in various
Autoconf macros such as <code>AC_CONFIG_FILES</code> and siblings) are
automatically distributed.
</p>
<p>Still, sometimes there are files which must be distributed, but which
are not covered in the automatic rules.  These files should be listed in
the <code>EXTRA_DIST</code> variable.  You can mention files from
subdirectories in <code>EXTRA_DIST</code>.
</p>
<p>You can also mention a directory in <code>EXTRA_DIST</code>; in this case the
entire directory will be recursively copied into the distribution.
Please note that this will also copy <em>everything</em> in the directory,
including CVS/RCS version control files.  We recommend against using
this feature.
</p>
<span id="index-EXTRA_005fDIST"></span>

</div>
<div class="section" id="Fine_002dgrained-distribution-control">
<h3 class="section">15.2 Fine-grained distribution control</h3>

<p>Sometimes you need tighter control over what does <em>not</em> go into the
distribution; for instance you might have source files which are
generated and which you do not want to distribute.  In this case
Automake gives fine-grained control using the ‘<samp>dist</samp>’ and
‘<samp>nodist</samp>’ prefixes.  Any primary or ‘<samp>_SOURCES</samp>’ variable can be
prefixed with ‘<samp>dist_</samp>’ to add the listed files to the distribution.
Similarly, ‘<samp>nodist_</samp>’ can be used to omit the files from the
distribution.
<span id="index-dist_005f"></span>
<span id="index-nodist_005f"></span>
</p>
<p>As an example, here is how you would cause some data to be distributed
while leaving some source code out of the distribution:
</p>
<div class="example">
<pre class="example">dist_data_DATA = distribute-this
bin_PROGRAMS = foo
nodist_foo_SOURCES = do-not-distribute.c
</pre></div>

</div>
<div class="section" id="The-dist-hook">
<h3 class="section">15.3 The dist hook</h3>

<p>Another way to to use this is for removing unnecessary files that get
recursively included by specifying a directory in EXTRA_DIST:
</p>
<div class="example">
<pre class="example">EXTRA_DIST = doc

dist-hook:
	rm -rf `find $(distdir)/doc -name CVS`
</pre></div>

<p>If you define <code>SUBDIRS</code>, Automake will recursively include the
subdirectories in the distribution.  If <code>SUBDIRS</code> is defined
conditionally (see <a href="#Conditionals">Conditionals</a>), Automake will normally include all
directories that could possibly appear in <code>SUBDIRS</code> in the
distribution.  If you need to specify the set of directories
conditionally, you can set the variable <code>DIST_SUBDIRS</code> to the exact
list of subdirectories to include in the distribution.
<span id="index-DIST_005fSUBDIRS"></span>
</p>
<span id="index-dist_002dhook"></span>

<p>Occasionally it is useful to be able to change the distribution before
it is packaged up.  If the <code>dist-hook</code> target exists, it is run
after the distribution directory is filled, but before the actual tar
(or shar) file is created.  One way to use this is for distributing
files in subdirectories for which a new <samp>Makefile.am</samp> is overkill:
</p>
<div class="example">
<pre class="example">dist-hook:
        mkdir $(distdir)/random
        cp -p $(srcdir)/random/a1 $(srcdir)/random/a2 $(distdir)/random
</pre></div>

</div>
<div class="section" id="Checking-the-distribution">
<h3 class="section">15.4 Checking the distribution</h3>

<span id="index-make-distcheck"></span>
<span id="index-make-distcleancheck"></span>
<span id="index-distcleancheck_005flistfiles"></span>

<p>Automake also generates a <code>distcheck</code> target which can be of help
to ensure that a given distribution will actually work.
<code>distcheck</code> makes a distribution, then tries to do a <code>VPATH</code>
build, run the testsuite, and finally make another tarfile to ensure the
distribution is self-contained.
<span id="index-distcheck"></span>
</p>
<p>Building the package involves running <code>./configure</code>.  If you need
to supply additional flags to <code>configure</code>, define them in the
<code>DISTCHECK_CONFIGURE_FLAGS</code> variable, either in your top-level
<samp>Makefile.am</samp>, or on the commande line when invoking <code>make</code>.
<span id="index-DISTCHECK_005fCONFIGURE_005fFLAGS"></span>
</p>
<p>If the target <code>distcheck-hook</code> is defined in your
<samp>Makefile.am</samp>, then it will be invoked by <code>distcheck</code> after
the new distribution has been unpacked, but before the unpacked copy is
configured and built.  Your <code>distcheck-hook</code> can do almost
anything, though as always caution is advised.  Generally this hook is
used to check for potential distribution errors not caught by the
standard mechanism.
</p>
<p>Speaking about potential distribution errors, <code>distcheck</code> will also
ensure that the <code>distclean</code> target actually removes all built
files.  This is done by running <code>make distcleancheck</code> at the end of
the <code>VPATH</code> build.  By default, <code>distcleancheck</code> will run
<code>distclean</code> and then make sure the build tree has been emptied by
running <code>$(distcleancheck_listfiles)</code>.  Usually this check will
find generated files that you forgot to add to the <code>DISTCLEANFILES</code>
variable (see <a href="#Clean">What Gets Cleaned</a>).
<span id="index-distcleancheck"></span>
</p>
<p>The <code>distcleancheck</code> behaviour should be ok for most packages,
otherwise you have the possibility to override the definitition of
either the <code>distcleancheck</code> target, or the
<code>$(distcleancheck_listfiles)</code> variable.  For instance to disable
<code>distcleancheck</code> completely, add the following rule to your
top-level <samp>Makefile.am</samp>:
<span id="index-distcleancheck_005flistfiles-1"></span>
</p>
<div class="example">
<pre class="example">distcleancheck:
        @:
</pre></div>

<p>If you want <code>distcleancheck</code> to ignore built files which have not
been cleaned because they are also part of the distribution, add the
following definition instead:
</p>
<div class="example">
<pre class="example">distcleancheck_listfiles = \
  find -type f -exec sh -c 'test -f $(scrdir)/{} || echo {}'
</pre></div>

<p>The above definition is not the default because it’s usually an error if
your Makefiles cause some distributed files to be rebuilt when the user
build the package.  (Think about the user missing the tool required to
build the file; or if the required tool is built by your package,
consider the cross-compilation case where it can’t be run.)
</p>
</div>
<div class="section" id="The-types-of-distributions">
<h3 class="section">15.5 The types of distributions</h3>

<span id="index-dist_002dgzip"></span>
<p>Automake generates a ‘<samp>.tar.gz</samp>’ file when asked to create a
distribution and other archives formats, <a href="#Options">Changing Automake’s Behavior</a>.  The target
<code>dist-gzip</code> generates the ‘<samp>.tar.gz</samp>’ file only.
</p>

<hr>
</div>
</div>
<div class="chapter" id="Tests">
<div class="header">
<p>
Next: <a href="#Options" accesskey="n" rel="next">Changing Automake’s Behavior</a>, Previous: <a href="#Dist" accesskey="p" rel="prev">What Goes in a Distribution</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Support-for-test-suites"></span><h2 class="chapter">16 Support for test suites</h2>

<span id="index-Test-suites"></span>
<span id="index-make-check"></span>

<p>Automake supports two forms of test suites.
</p>
<ul class="section-toc">
<li><a href="#Simple-Tests" accesskey="1">Simple Tests</a></li>
<li><a href="#DejaGNU-Tests" accesskey="2">DejaGNU Tests</a></li>
<li><a href="#Install-Tests" accesskey="3">Install Tests</a></li>
</ul>
<div class="section" id="Simple-Tests">
<h3 class="section">16.1 Simple Tests</h3>

<p>If the variable <code>TESTS</code> is defined, its value is taken to be a list
of programs to run in order to do the testing.  The programs can either
be derived objects or source objects; the generated rule will look both
in <code>srcdir</code> and <samp>.</samp>.  Programs needing data files should look
for them in <code>srcdir</code> (which is both an environment variable and a
make variable) so they work when building in a separate directory
(see <a data-manual="autoconf" href="https://www.gnu.org/software/autoconf/manual/autoconf.html#Build-Directories">Build Directories</a> in <cite>The Autoconf
Manual</cite>), and in particular for the <code>distcheck</code> target
(see <a href="#Dist">What Goes in a Distribution</a>).
</p>
<span id="index-Exit-status-77_002c-special-interpretation"></span>

<p>The number of failures will be printed at the end of the run.  If a
given test program exits with a status of 77, then its result is ignored
in the final count.  This feature allows non-portable tests to be
ignored in environments where they don’t make sense.
</p>
<p>The variable <code>TESTS_ENVIRONMENT</code> can be used to set environment
variables for the test run; the environment variable <code>srcdir</code> is
set in the rule.  If all your test programs are scripts, you can also
set <code>TESTS_ENVIRONMENT</code> to an invocation of the shell (e.g.
‘<samp>$(SHELL) -x</samp>’); this can be useful for debugging the tests.
<span id="index-TESTS"></span>
<span id="index-TESTS_005fENVIRONMENT"></span>
</p>
<span id="index-Tests_002c-expected-failure"></span>
<span id="index-Expected-test-failure"></span>

<p>You may define the variable <code>XFAIL_TESTS</code> to a list of tests
(usually a subset of <code>TESTS</code>) that are expected to fail.  This will
reverse the result of those tests.
<span id="index-XFAIL_005fTESTS"></span>
</p>
<p>Automake ensures that each program listed in <code>TESTS</code> is built
before any tests are run; you can list both source and derived programs
in <code>TESTS</code>.  For instance, you might want to run a C program as a
test.  To do this you would list its name in <code>TESTS</code> and also in
<code>check_PROGRAMS</code>, and then specify it as you would any other
program.
</p>
</div>
<div class="section" id="DejaGNU-Tests">
<h3 class="section">16.2 DejaGNU Tests</h3>

<p>If <a href="ftp://prep.ai.mit.edu/pub/gnu/dejagnu-1.3.tar.gz">‘<samp>dejagnu</samp>’</a> appears in <code>AUTOMAKE_OPTIONS</code>, then a
<code>dejagnu</code>-based test suite is assumed.  The variable
<code>DEJATOOL</code> is a list of names which are passed, one at a time, as
the <code>--tool</code> argument to <code>runtest</code> invocations; it defaults to
the name of the package.
</p>
<p>The variable <code>RUNTESTDEFAULTFLAGS</code> holds the <code>--tool</code> and
<code>--srcdir</code> flags that are passed to dejagnu by default; this can be
overridden if necessary.
<span id="index-RUNTESTDEFAULTFLAGS"></span>
</p>
<p>The variables <code>EXPECT</code> and <code>RUNTEST</code> can
also be overridden to provide project-specific values.  For instance,
you will need to do this if you are testing a compiler toolchain,
because the default values do not take into account host and target
names.
<span id="index-dejagnu"></span>
<span id="index-DEJATOOL"></span>
<span id="index-EXPECT"></span>
<span id="index-RUNTEST"></span>
</p>
<p>The contents of the variable <code>RUNTESTFLAGS</code> are passed to the
<code>runtest</code> invocation.  This is considered a “user variable”
(see <a href="#User-Variables">Variables reserved for the user</a>).  If you need to set <code>runtest</code> flags in
<samp>Makefile.am</samp>, you can use <code>AM_RUNTESTFLAGS</code> instead.
<span id="index-RUNTESTFLAGS"></span>
<span id="index-AM_005fRUNTESTFLAGS"></span>
</p>
<p>In either case, the testing is done via ‘<samp>make check</samp>’.
</p>
</div>
<div class="section" id="Install-Tests">
<h3 class="section">16.3 Install Tests</h3>

<p>The <code>installcheck</code> target is available to the user as a way to run
any tests after the package has been installed.  You can add tests to
this by writing an <code>installcheck-local</code> target.
</p>

<hr>
</div>
</div>
<div class="chapter" id="Options">
<div class="header">
<p>
Next: <a href="#Miscellaneous" accesskey="n" rel="next">Miscellaneous Rules</a>, Previous: <a href="#Tests" accesskey="p" rel="prev">Support for test suites</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Changing-Automake_0027s-Behavior"></span><h2 class="chapter">17 Changing Automake’s Behavior</h2>

<p>Various features of Automake can be controlled by options in the
<samp>Makefile.am</samp>.  Such options are applied on a per-<samp>Makefile</samp>
basis when listed in a special <samp>Makefile</samp> variable named
<code>AUTOMAKE_OPTIONS</code>.  They are applied globally to all processed
<samp>Makefiles</samp> when listed in the first argument of
<code>AM_INIT_AUTOMAKE</code> in <samp>configure.in</samp>.  Currently understood
options are:
<span id="index-AUTOMAKE_005fOPTIONS-2"></span>
</p>
<dl compact="compact">
<dt id="index-Option_002c-gnits"><span><code>gnits</code><a href="#index-Option_002c-gnits" class="copiable-anchor"> ¶</a></span></dt>
<dt><span><code>gnu</code></span></dt>
<dt><span><code>foreign</code></span></dt>
<dt><span><code>cygnus</code></span></dt>
<dd><span id="index-Option_002c-gnu"></span>
<span id="index-Option_002c-foreign"></span>
<span id="index-Option_002c-cygnus"></span>

<p>Set the strictness as appropriate.  The <code>gnits</code> option also implies
<code>readme-alpha</code> and <code>check-news</code>.
</p>
</dd>
<dt id="index-Option_002c-ansi2knr"><span><code>ansi2knr</code><a href="#index-Option_002c-ansi2knr" class="copiable-anchor"> ¶</a></span></dt>
<dt><span><code><var>path</var>/ansi2knr</code></span></dt>
<dd><p>Turn on automatic de-ANSI-fication.  See <a href="#ANSI">Automatic de-ANSI-fication</a>.  If preceded by a
path, the generated <samp>Makefile.in</samp> will look in the specified
directory to find the <samp>ansi2knr</samp> program.  The path should be a
relative path to another directory in the same distribution (Automake
currently does not check this).
</p>
</dd>
<dt id="index-Option_002c-check_002dnews"><span><code>check-news</code><a href="#index-Option_002c-check_002dnews" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Cause <code>make dist</code> to fail unless the current version number appears
in the first few lines of the <samp>NEWS</samp> file.
</p>
</dd>
<dt id="index-Option_002c-dejagnu"><span><code>dejagnu</code><a href="#index-Option_002c-dejagnu" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Cause <code>dejagnu</code>-specific rules to be generated.  See <a href="#Tests">Support for test suites</a>.
</p>
</dd>
<dt id="index-Option_002c-dist_002dbzip2"><span><code>dist-bzip2</code><a href="#index-Option_002c-dist_002dbzip2" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Generate a <code>dist-bzip2</code> target, creating a bzip2 tar archive of the
distribution.  <code>dist</code> will create it in addition to the other
formats.  bzip2 archives are frequently smaller than gzipped archives.
<span id="index-dist_002dbzip2"></span>
</p>
</dd>
<dt id="index-Option_002c-dist_002dshar"><span><code>dist-shar</code><a href="#index-Option_002c-dist_002dshar" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Generate a <code>dist-shar</code> target, creating a shar archive of the
distribution.  <code>dist</code> will create it in addition to the other
formats.
<span id="index-dist_002dshar"></span>
</p>
</dd>
<dt id="index-Option_002c-dist_002dzip"><span><code>dist-zip</code><a href="#index-Option_002c-dist_002dzip" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Generate a <code>dist-zip</code> target, creating a zip archive of the
distribution.  <code>dist</code> will create it in addition to the other
formats.
<span id="index-dist_002dzip"></span>
</p>
</dd>
<dt id="index-Option_002c-dist_002dtarZ"><span><code>dist-tarZ</code><a href="#index-Option_002c-dist_002dtarZ" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Generate a <code>dist-tarZ</code> target, creating a compressed tar archive of
the distribution.  <code>dist</code> will create it in addition to the other
formats.
<span id="index-dist_002dtarZ"></span>
</p>
</dd>
<dt id="index-Option_002c-no_002ddefine"><span><code>no-define</code><a href="#index-Option_002c-no_002ddefine" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This options is meaningful only when passed as an argument to
AM_INIT_AUTOMAKE.  It will prevent the <code>PACKAGE</code> and <code>VERSION</code>
variable to be <code>AC_DEFINE</code>d.
</p>
</dd>
<dt id="index-Option_002c-no_002ddependencies"><span><code>no-dependencies</code><a href="#index-Option_002c-no_002ddependencies" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This is similar to using ‘<samp>--include-deps</samp>’ on the command line, but
is useful for those situations where you don’t have the necessary bits
to make automatic dependency tracking work See <a href="#Dependencies">Automatic dependency tracking</a>.  In this
case the effect is to effectively disable automatic dependency tracking.
</p>
</dd>
<dt id="index-Option_002c-no_002dexeext"><span><code>no-exeext</code><a href="#index-Option_002c-no_002dexeext" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>If your <samp>Makefile.am</samp> defines a target ‘<samp>foo</samp>’, it will override
a target named ‘<samp>foo$(EXEEXT)</samp>’.  This is necessary when
<code>EXEEXT</code> is found to be empty.  However, by default automake will
generate an error for this use.  The <code>no-exeext</code> option will
disable this error.  This is intended for use only where it is known in
advance that the package will not be ported to Windows, or any other
operating system using extensions on executables.
</p>
</dd>
<dt id="index-Option_002c-no_002dinstallinfo"><span><code>no-installinfo</code><a href="#index-Option_002c-no_002dinstallinfo" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The generated <samp>Makefile.in</samp> will not cause info pages to be built
or installed by default.  However, <code>info</code> and <code>install-info</code>
targets will still be available.  This option is disallowed at
‘<samp>GNU</samp>’ strictness and above.
<span id="index-info"></span>
<span id="index-install_002dinfo-1"></span>
</p>
</dd>
<dt id="index-Option_002c-no_002dinstallman"><span><code>no-installman</code><a href="#index-Option_002c-no_002dinstallman" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The generated <samp>Makefile.in</samp> will not cause man pages to be
installed by default.  However, an <code>install-man</code> target will still
be available for optional installation.  This option is disallowed at
‘<samp>GNU</samp>’ strictness and above.
<span id="index-install_002dman-1"></span>
</p>
</dd>
<dt id="index-Option_002c-nostdinc"><span><code>nostdinc</code><a href="#index-Option_002c-nostdinc" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>This option can be used to disable the standard ‘<samp>-I</samp>’ options which
are ordinarily automatically provided by Automake.
</p>
</dd>
<dt id="index-Option_002c-no_002dtexinfo"><span><code>no-texinfo.tex</code><a href="#index-Option_002c-no_002dtexinfo" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>Don’t require <samp>texinfo.tex</samp>, even if there are texinfo files in
this directory.
</p>
</dd>
<dt id="index-Option_002c-readme_002dalpha"><span><code>readme-alpha</code><a href="#index-Option_002c-readme_002dalpha" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>If this release is an alpha release, and the file <samp>README-alpha</samp>
exists, then it will be added to the distribution.  If this option is
given, version numbers are expected to follow one of two forms.  The
first form is ‘<samp><var>MAJOR</var>.<var>MINOR</var>.<var>ALPHA</var></samp>’, where each
element is a number; the final period and number should be left off for
non-alpha releases.  The second form is
‘<samp><var>MAJOR</var>.<var>MINOR</var><var>ALPHA</var></samp>’, where <var>ALPHA</var> is a
letter; it should be omitted for non-alpha releases.
</p>
</dd>
<dt><span><code>subdir-objects</code></span></dt>
<dd><p>If this option is specified, then objects are placed into the
subdirectory of the build directory corresponding to the subdirectory of
the source file.  For instance if the source file is
<samp>subdir/file.cxx</samp>, then the output file would be
<samp>subdir/file.o</samp>.
</p>
</dd>
<dt id="index-Option_002c-version"><span><var>version</var><a href="#index-Option_002c-version" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>A version number (e.g. ‘<samp>0.30</samp>’) can be specified.  If Automake is not
newer than the version specified, creation of the <samp>Makefile.in</samp>
will be suppressed.
</p></dd>
</dl>

<p>Unrecognized options are diagnosed by <code>automake</code>.
</p>
<p>If you want an option to apply to all the files in the tree, you can use
the <code>AM_AUTOMAKE_OPTIONS</code> macro in <samp>configure.in</samp>.
See <a href="#Macros">Autoconf macros supplied with Automake</a>.
</p>

<hr>
</div>
<div class="chapter" id="Miscellaneous">
<div class="header">
<p>
Next: <a href="#Include" accesskey="n" rel="next">Include</a>, Previous: <a href="#Options" accesskey="p" rel="prev">Changing Automake’s Behavior</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Miscellaneous-Rules"></span><h2 class="chapter">18 Miscellaneous Rules</h2>

<p>There are a few rules and variables that didn’t fit anywhere else.
</p>


<ul class="section-toc">
<li><a href="#Tags" accesskey="1">Interfacing to <code>etags</code></a></li>
<li><a href="#Suffixes" accesskey="2">Handling new file extensions</a></li>
<li><a href="#Multilibs" accesskey="3">Support for Multilibs</a></li>
</ul>
<hr>
<div class="section" id="Tags">
<div class="header">
<p>
Next: <a href="#Suffixes" accesskey="n" rel="next">Handling new file extensions</a>, Previous: <a href="#Miscellaneous" accesskey="p" rel="prev">Miscellaneous Rules</a>, Up: <a href="#Miscellaneous" accesskey="u" rel="up">Miscellaneous Rules</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Interfacing-to-etags"></span><h3 class="section">18.1 Interfacing to <code>etags</code></h3>

<span id="index-TAGS-support"></span>

<p>Automake will generate rules to generate <samp>TAGS</samp> files for use with
GNU Emacs under some circumstances.
</p>
<p>If any C, C++ or Fortran 77 source code or headers are present, then
<code>tags</code> and <code>TAGS</code> targets will be generated for the directory.
<span id="index-tags"></span>
</p>
<p>At the topmost directory of a multi-directory package, a <code>tags</code>
target file will be generated which, when run, will generate a
<samp>TAGS</samp> file that includes by reference all <samp>TAGS</samp> files from
subdirectories.
</p>
<p>The <code>tags</code> target will also be generated if the variable
<code>ETAGS_ARGS</code> is defined.  This variable is intended for use in
directories which contain taggable source that <code>etags</code> does not
understand.  The user can use the <code>ETAGSFLAGS</code> to pass additional
flags to <code>etags</code>; <code>AM_ETAGSFLAGS</code> is also available for use in
<samp>Makefile.am</samp>.
<span id="index-ETAGS_005fARGS"></span>
<span id="index-ETAGSFLAGS"></span>
<span id="index-AM_005fETAGSFLAGS"></span>
</p>
<p>Here is how Automake generates tags for its source, and for nodes in its
Texinfo file:
</p>
<div class="example">
<pre class="example">ETAGS_ARGS = automake.in --lang=none \
 --regex='/^@node[ \t]+\([^,]+\)/\1/' automake.texi
</pre></div>

<p>If you add filenames to ‘<samp>ETAGS_ARGS</samp>’, you will probably also
want to set ‘<samp>TAGS_DEPENDENCIES</samp>’.  The contents of this variable
are added directly to the dependencies for the <code>tags</code> target.
<span id="index-TAGS_005fDEPENDENCIES"></span>
</p>
<p>Automake will also generate an <code>ID</code> target which will run
<code>mkid</code> on the source.  This is only supported on a
directory-by-directory basis.
<span id="index-id"></span>
</p>
<p>Automake also supports the <a href="http://www.gnu.org/software/global/">GNU Global Tags program</a>.  The <code>GTAGS</code> target runs Global Tags
automatically and puts the result in the top build directory.  The
variable <code>GTAGS_ARGS</code> holds arguments which are passed to
<code>gtags</code>.
<span id="index-GTAGS_005fARGS"></span>
</p>

<hr>
</div>
<div class="section" id="Suffixes">
<div class="header">
<p>
Next: <a href="#Multilibs" accesskey="n" rel="next">Support for Multilibs</a>, Previous: <a href="#Tags" accesskey="p" rel="prev">Interfacing to <code>etags</code></a>, Up: <a href="#Miscellaneous" accesskey="u" rel="up">Miscellaneous Rules</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Handling-new-file-extensions"></span><h3 class="section">18.2 Handling new file extensions</h3>

<span id="index-Adding-new-SUFFIXES"></span>
<span id="index-SUFFIXES_002c-adding"></span>
<span id="index-SUFFIXES"></span>

<p>It is sometimes useful to introduce a new implicit rule to handle a file
type that Automake does not know about.
</p>
<p>For instance, suppose you had a compiler which could compile ‘<samp>.foo</samp>’
files to ‘<samp>.o</samp>’ files.  You would simply define an suffix rule for
your language:
</p>
<div class="example">
<pre class="example">.foo.o:
        foocc -c -o $@ $&lt;
</pre></div>

<p>Then you could directly use a ‘<samp>.foo</samp>’ file in a ‘<samp>_SOURCES</samp>’
variable and expect the correct results:
</p>
<div class="example">
<pre class="example">bin_PROGRAMS = doit
doit_SOURCES = doit.foo
</pre></div>

<p>This was the simpler and more common case.  In other cases, you will
have to help Automake to figure which extensions you are defining your
suffix rule for.  This usually happens when your extensions does not
start with a dot.  Then, all you have to do is to put a list of new
suffixes in the <code>SUFFIXES</code> variable <strong>before</strong> you define your
implicit rule.
</p>
<p>For instance the following definition prevents Automake to misinterpret
‘<samp>.idlC.cpp:</samp>’ as an attemp to transform ‘<samp>.idlC</samp>’ into
‘<samp>.cpp</samp>’.
</p>
<div class="example">
<pre class="example">SUFFIXES = .idl C.cpp
.idlC.cpp:
        # whatever
</pre></div>

<p>As you may have noted, the <code>SUFFIXES</code> macro behaves like the
<code>.SUFFIXES</code> special target of <code>make</code>.  You should not touch
<code>.SUFFIXES</code> yourself, but use <code>SUFFIXES</code> instead and let
Automake generate the suffix list for <code>.SUFFIXES</code>.  Any given
<code>SUFFIXES</code> go at the start of the generated suffixes list, followed
by Automake generated suffixes not already in the list.
</p>
<hr>
</div>
<div class="section" id="Multilibs">
<div class="header">
<p>
Previous: <a href="#Suffixes" accesskey="p" rel="prev">Handling new file extensions</a>, Up: <a href="#Miscellaneous" accesskey="u" rel="up">Miscellaneous Rules</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Support-for-Multilibs"></span><h3 class="section">18.3 Support for Multilibs</h3>

<p>Automake has support for an obscure feature called multilibs.  A
<em>multilib</em> is a library which is built for multiple different ABIs
at a single time; each time the library is built with a different target
flag combination.  This is only useful when the library is intended to
be cross-compiled, and it is almost exclusively used for compiler
support libraries.
</p>
<p>The multilib support is still experimental.  Only use it if you are
familiar with multilibs and can debug problems you might encounter.
</p>

<hr>
</div>
</div>
<div class="chapter" id="Include">
<div class="header">
<p>
Next: <a href="#Conditionals" accesskey="n" rel="next">Conditionals</a>, Previous: <a href="#Miscellaneous" accesskey="p" rel="prev">Miscellaneous Rules</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Include-1"></span><h2 class="chapter">19 Include</h2>

<span id="index-include"></span>
<span id="index-Including-Makefile-fragment"></span>
<span id="index-Makefile-fragment_002c-including"></span>

<p>Automake supports an <code>include</code> directive which can be used to
include other <samp>Makefile</samp> fragments when <code>automake</code> is run.
Note that these fragments are read and interpreted by <code>automake</code>,
not by <code>make</code>.  As with conditionals, <code>make</code> has no idea that
<code>include</code> is in use.
</p>
<p>There are two forms of <code>include</code>:
</p>
<dl compact="compact">
<dt><span><code>include $(srcdir)/file</code></span></dt>
<dd><p>Include a fragment which is found relative to the current source
directory.
</p>
</dd>
<dt><span><code>include $(top_srcdir)/file</code></span></dt>
<dd><p>Include a fragment which is found relative to the top source directory.
</p></dd>
</dl>

<p>Note that if a fragment is included inside a conditional, then the
condition applies to the entire contents of that fragment.
</p>

<hr>
</div>
<div class="chapter" id="Conditionals">
<div class="header">
<p>
Next: <a href="#Gnits" accesskey="n" rel="next">The effect of <code>--gnu</code> and <code>--gnits</code></a>, Previous: <a href="#Include" accesskey="p" rel="prev">Include</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Conditionals-1"></span><h2 class="chapter">20 Conditionals</h2>

<span id="index-Conditionals"></span>

<p>Automake supports a simple type of conditionals.
</p>
<span id="index-AM_005fCONDITIONAL"></span>
<p>Before using a conditional, you must define it by using
<code>AM_CONDITIONAL</code> in the <code>configure.in</code> file (see <a href="#Macros">Autoconf macros supplied with Automake</a>).
</p>
<dl class="def">
<dt id="index-AM_005fCONDITIONAL-1"><span class="category">Macro: </span><span><strong>AM_CONDITIONAL</strong> <em>(<var>conditional</var>, <var>condition</var>)</em><a href="#index-AM_005fCONDITIONAL-1" class="copiable-anchor"> ¶</a></span></dt>
<dd><p>The conditional name, <var>conditional</var>, should be a simple string
starting with a letter and containing only letters, digits, and
underscores.  It must be different from ‘<samp>TRUE</samp>’ and ‘<samp>FALSE</samp>’
which are reserved by Automake.
</p>
<p>The shell <var>condition</var> (suitable for use in a shell <code>if</code>
statement) is evaluated when <code>configure</code> is run.  Note that you
must arrange for <em>every</em> <code>AM_CONDITIONAL</code> to be invoked every
time <code>configure</code> is run – if <code>AM_CONDITIONAL</code> is run
conditionally (e.g., in a shell <code>if</code> statement), then the result
will confuse automake.
</p></dd></dl>

<span id="index-_002d_002denable_002ddebug_002c-example"></span>
<span id="index-Example-conditional-_002d_002denable_002ddebug"></span>
<span id="index-Conditional-example_002c-_002d_002denable_002ddebug"></span>

<p>Conditionals typically depend upon options which the user provides to
the <code>configure</code> script.  Here is an example of how to write a
conditional which is true if the user uses the ‘<samp>--enable-debug</samp>’
option.
</p>
<div class="example">
<pre class="example">AC_ARG_ENABLE(debug,
[  --enable-debug    Turn on debugging],
[case "${enableval}" in
  yes) debug=true ;;
  no)  debug=false ;;
  *) AC_MSG_ERROR(bad value ${enableval} for --enable-debug) ;;
esac],[debug=false])
AM_CONDITIONAL(DEBUG, test x$debug = xtrue)
</pre></div>

<p>Here is an example of how to use that conditional in <samp>Makefile.am</samp>:
</p>
<span id="index-if"></span>
<span id="index-endif"></span>
<span id="index-else"></span>

<div class="example">
<pre class="example">if DEBUG
DBG = debug
else
DBG =
endif
noinst_PROGRAMS = $(DBG)
</pre></div>

<p>This trivial example could also be handled using EXTRA_PROGRAMS
(see <a href="#A-Program">Building a program</a>).
</p>
<p>You may only test a single variable in an <code>if</code> statement, possibly
negated using ‘<samp>!</samp>’.  The <code>else</code> statement may be omitted.
Conditionals may be nested to any depth.  You may specify an argument to
<code>else</code> in which case it must be the negation of the condition used
for the current <code>if</code>.  Similarly you may specify the condition
which is closed by an <code>end</code>:
</p>
<div class="example">
<pre class="example">if DEBUG
DBG = debug
else !DEBUG
DBG =
endif !DEBUG
</pre></div>

<p>Unbalanced conditions are errors.
</p>
<p>Note that conditionals in Automake are not the same as conditionals in
GNU Make.  Automake conditionals are checked at configure time by the
<samp>configure</samp> script, and affect the translation from
<samp>Makefile.in</samp> to <samp>Makefile</samp>.  They are based on options passed
to <samp>configure</samp> and on results that <samp>configure</samp> has discovered
about the host system.  GNU Make conditionals are checked at <code>make</code>
time, and are based on variables passed to the make program or defined
in the <samp>Makefile</samp>.
</p>
<p>Automake conditionals will work with any make program.
</p>

<hr>
</div>
<div class="chapter" id="Gnits">
<div class="header">
<p>
Next: <a href="#Cygnus" accesskey="n" rel="next">The effect of <code>--cygnus</code></a>, Previous: <a href="#Conditionals" accesskey="p" rel="prev">Conditionals</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="The-effect-of-_002d_002dgnu-and-_002d_002dgnits"></span><h2 class="chapter">21 The effect of <code>--gnu</code> and <code>--gnits</code></h2>

<span id="index-_002d_002dgnu_002c-required-files"></span>
<span id="index-_002d_002dgnu_002c-complete-description"></span>

<p>The ‘<samp>--gnu</samp>’ option (or ‘<samp>gnu</samp>’ in the ‘<samp>AUTOMAKE_OPTIONS</samp>’
variable) causes <code>automake</code> to check the following:
</p>
<ul>
<li> The files <samp>INSTALL</samp>, <samp>NEWS</samp>, <samp>README</samp>, <samp>COPYING</samp>,
<samp>AUTHORS</samp>, and <samp>ChangeLog</samp> are required at the topmost
directory of the package.

</li><li> The options ‘<samp>no-installman</samp>’ and ‘<samp>no-installinfo</samp>’ are
prohibited.
</li></ul>

<p>Note that this option will be extended in the future to do even more
checking; it is advisable to be familiar with the precise requirements
of the GNU standards.  Also, ‘<samp>--gnu</samp>’ can require certain
non-standard GNU programs to exist for use by various maintainer-only
targets; for instance in the future <code>pathchk</code> might be required for
‘<samp>make dist</samp>’.
</p>
<span id="index-_002d_002dgnits_002c-complete-description"></span>

<p>The ‘<samp>--gnits</samp>’ option does everything that ‘<samp>--gnu</samp>’ does, and
checks the following as well:
</p>
<ul>
<li> ‘<samp>make dist</samp>’ will check to make sure the <samp>NEWS</samp> file has been
updated to the current version.

</li><li> ‘<samp>VERSION</samp>’ is checked to make sure its format complies with Gnits
standards.

</li><li> <span id="index-README_002dalpha"></span>
If ‘<samp>VERSION</samp>’ indicates that this is an alpha release, and the file
<samp>README-alpha</samp> appears in the topmost directory of a package, then
it is included in the distribution.  This is done in ‘<samp>--gnits</samp>’
mode, and no other, because this mode is the only one where version
number formats are constrained, and hence the only mode where Automake
can automatically determine whether <samp>README-alpha</samp> should be
included.

</li><li> The file <samp>THANKS</samp> is required.
</li></ul>


<hr>
</div>
<div class="chapter" id="Cygnus">
<div class="header">
<p>
Next: <a href="#Extending" accesskey="n" rel="next">When Automake Isn’t Enough</a>, Previous: <a href="#Gnits" accesskey="p" rel="prev">The effect of <code>--gnu</code> and <code>--gnits</code></a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="The-effect-of-_002d_002dcygnus"></span><h2 class="chapter">22 The effect of <code>--cygnus</code></h2>

<span id="index-Cygnus-strictness"></span>

<p>Some packages, notably GNU GCC and GNU gdb, have a build environment
originally written at Cygnus Support (subsequently renamed Cygnus
Solutions, and then later purchased by Red Hat).  Packages with this
ancestry are sometimes referred to as “Cygnus” trees.
</p>
<p>A Cygnus tree has slightly different rules for how a <samp>Makefile.in</samp>
is to be constructed.  Passing ‘<samp>--cygnus</samp>’ to <code>automake</code> will
cause any generated <samp>Makefile.in</samp> to comply with Cygnus rules.
</p>
<p>Here are the precise effects of ‘<samp>--cygnus</samp>’:
</p>
<ul>
<li> Info files are always created in the build directory, and not in the
source directory.

</li><li> <samp>texinfo.tex</samp> is not required if a Texinfo source file is
specified.  The assumption is that the file will be supplied, but in a
place that Automake cannot find.  This assumption is an artifact of how
Cygnus packages are typically bundled.

</li><li> ‘<samp>make dist</samp>’ is not supported, and the rules for it are not
generated.  Cygnus-style trees use their own distribution mechanism.

</li><li> Certain tools will be searched for in the build tree as well as in the
user’s ‘<samp>PATH</samp>’.  These tools are <code>runtest</code>, <code>expect</code>,
<code>makeinfo</code> and <code>texi2dvi</code>.

</li><li> <code>--foreign</code> is implied.

</li><li> The options ‘<samp>no-installinfo</samp>’ and ‘<samp>no-dependencies</samp>’ are
implied.

</li><li> The macros ‘<samp>AM_MAINTAINER_MODE</samp>’ and ‘<samp>AM_CYGWIN32</samp>’ are
required.

</li><li> The <code>check</code> target doesn’t depend on <code>all</code>.
</li></ul>

<p>GNU maintainers are advised to use ‘<samp>gnu</samp>’ strictness in preference
to the special Cygnus mode.  Some day, perhaps, the differences between
Cygnus trees and GNU trees will disappear (for instance, as GCC is made
more standards compliant).  At that time the special Cygnus mode will be
removed.
</p>

<hr>
</div>
<div class="chapter" id="Extending">
<div class="header">
<p>
Next: <a href="#Distributing" accesskey="n" rel="next">Distributing <samp>Makefile.in</samp>s</a>, Previous: <a href="#Cygnus" accesskey="p" rel="prev">The effect of <code>--cygnus</code></a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="When-Automake-Isn_0027t-Enough"></span><h2 class="chapter">23 When Automake Isn’t Enough</h2>

<p>Automake’s implicit copying semantics means that many problems can be
worked around by simply adding some <code>make</code> targets and rules to
<samp>Makefile.in</samp>.  Automake will ignore these additions.
</p>
<span id="index-_002dlocal-targets"></span>
<span id="index-local-targets"></span>

<p>There are some caveats to doing this.  Although you can overload a
target already used by Automake, it is often inadvisable, particularly
in the topmost directory of a package with subdirectories.  However,
various useful targets have a ‘<samp>-local</samp>’ version you can specify in
your <samp>Makefile.in</samp>.  Automake will supplement the standard target
with these user-supplied targets.
</p>
<span id="index-all_002dlocal"></span>
<span id="index-info_002dlocal"></span>
<span id="index-dvi_002dlocal"></span>
<span id="index-check_002dlocal"></span>
<span id="index-install_002ddata_002dlocal-1"></span>
<span id="index-install_002dexec_002dlocal-1"></span>
<span id="index-uninstall_002dlocal"></span>
<span id="index-mostlyclean_002dlocal"></span>
<span id="index-clean_002dlocal"></span>
<span id="index-distclean_002dlocal"></span>
<span id="index-installdirs_002dlocal"></span>
<span id="index-installcheck_002dlocal"></span>

<p>The targets that support a local version are <code>all</code>, <code>info</code>,
<code>dvi</code>, <code>check</code>, <code>install-data</code>, <code>install-exec</code>,
<code>uninstall</code>, <code>installdirs</code>, <code>installcheck</code> and the
various <code>clean</code> targets (<code>mostlyclean</code>, <code>clean</code>,
<code>distclean</code>, and <code>maintainer-clean</code>).  Note that there are no
<code>uninstall-exec-local</code> or <code>uninstall-data-local</code> targets; just
use <code>uninstall-local</code>.  It doesn’t make sense to uninstall just
data or just executables.
<span id="index-all"></span>
<span id="index-info-1"></span>
<span id="index-dvi"></span>
<span id="index-check"></span>
<span id="index-install_002ddata-1"></span>
<span id="index-install_002dexec-1"></span>
<span id="index-uninstall-1"></span>
</p>
<p>For instance, here is one way to install a file in <samp>/etc</samp>:
</p>
<div class="example">
<pre class="example">install-data-local:
        $(INSTALL_DATA) $(srcdir)/afile $(DESTDIR)/etc/afile
</pre></div>

<span id="index-_002dhook-targets"></span>
<span id="index-hook-targets"></span>

<p>Some targets also have a way to run another target, called a <em>hook</em>,
after their work is done.  The hook is named after the principal target,
with ‘<samp>-hook</samp>’ appended.  The targets allowing hooks are
<code>install-data</code>, <code>install-exec</code>, <code>uninstall</code>, <code>dist</code>,
and <code>distcheck</code>.
<span id="index-install_002ddata_002dhook"></span>
<span id="index-install_002dexec_002dhook"></span>
<span id="index-uninstall_002dhook"></span>
<span id="index-dist_002dhook-1"></span>
</p>
<p>For instance, here is how to create a hard link to an installed program:
</p>
<div class="example">
<pre class="example">install-exec-hook:
        ln $(DESTDIR)$(bindir)/program $(DESTDIR)$(bindir)/proglink
</pre></div>


<hr>
</div>
<div class="chapter" id="Distributing">
<div class="header">
<p>
Next: <a href="#API-versioning" accesskey="n" rel="next">Automake API versioning</a>, Previous: <a href="#Extending" accesskey="p" rel="prev">When Automake Isn’t Enough</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Distributing-Makefile_002eins"></span><h2 class="chapter">24 Distributing <samp>Makefile.in</samp>s</h2>

<p>Automake places no restrictions on the distribution of the resulting
<samp>Makefile.in</samp>s.  We still encourage software authors to distribute
their work under terms like those of the GPL, but doing so is not
required to use Automake.
</p>
<p>Some of the files that can be automatically installed via the
<code>--add-missing</code> switch do fall under the GPL.  However, these also
have a special exception allowing you to distribute them with your
package, regardless of the licensing you choose.
</p>

<hr>
</div>
<div class="chapter" id="API-versioning">
<div class="header">
<p>
Next: <a href="#Macro-and-Variable-Index" accesskey="n" rel="next">Macro and Variable Index</a>, Previous: <a href="#Distributing" accesskey="p" rel="prev">Distributing <samp>Makefile.in</samp>s</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Automake-API-versioning"></span><h2 class="chapter">25 Automake API versioning</h2>

<p>New Automake releases usually include bug fixes and new features.
Unfortunately they may also introduce new bugs and incompatibilities.
This make four reasons why a package may require a particular Automake
version.
</p>
<p>Things get worse when maintaining a large tree of packages, each one
requiring a different version of Automake.  In the past, this meant that
any developer (and sometime users) had to install several versions of
Automake in different places, and switch ‘<samp>$PATH</samp>’ appropriately for
each package.
</p>
<p>Starting with version 1.6, Automake installs versioned binaries.  This
means you can install several versions of Automake in the same
‘<samp>$prefix</samp>’, and can select an arbitrary Automake version by running
‘<samp>automake-1.6</samp>’ or ‘<samp>automake-1.7</samp>’ without juggling with
‘<samp>$PATH</samp>’.  Furthermore, <samp>Makefile</samp>’s generated by Automake 1.6
will use ‘<samp>automake-1.6</samp>’ explicitely in their rebuild rules.
</p>
<p>Note that ‘<samp>1.6</samp>’ in ‘<samp>automake-1.6</samp>’ is Automake’s API version,
not Automake’s version.  If a bug fix release is made, for instance
Automake 1.6.1, the API version will remain 1.6.  This means that a
package which work with Automake 1.6 should also work with 1.6.1; after
all, this is what people expect from bug fix releases.
</p>
<p>Note that if your package relies on a feature or a bug fix introduced in
a release, you can pass this version as an option to Automake to ensure
older releases will not be used.  For instance, use this in your
<samp>configure.in</samp>:
</p>
<div class="example">
<pre class="example">  AM_INIT_AUTOMAKE(1.6.1)    dnl Require Automake 1.6.1 or better.
</pre></div>
<p>or, in a particular <samp>Makefile.am</samp>:
</p>
<div class="example">
<pre class="example">  AUTOMAKE_OPTIONS = 1.6.1   # Require Automake 1.6.1 or better.
</pre></div>
<p>Automake will print an error message if its version is
older than the requested version.
</p>

<span id="What-is-in-the-API"></span><h3 class="heading">What is in the API</h3>

<p>Automake’s programing interface is not easy to define.  Basically it
should include at least all <strong>documented</strong> variables and targets
that a ‘<samp>Makefile.am</samp>’ authors can use, the behaviours associated to
them (e.g. the places where ‘<samp>-hook</samp>’’s are run), the command line
interface of ‘<samp>automake</samp>’ and ‘<samp>aclocal</samp>’, ...
</p>
<span id="What-is-not-in-the-API"></span><h3 class="heading">What is not in the API</h3>

<p>Every undocumented variable, target, or command line option, is not part
of the API.  You should avoid using them, as they could change from one
version to the other (even in bug fix releases, if this helps to fix a
bug).
</p>
<p>If it turns out you need to use such a undocumented feature, contact
<a href="mailto:automake@gnu.org">automake@gnu.org</a> and try to get it documented and exercised by
the test-suite.
</p>
<hr>
</div>
<div class="unnumbered" id="Macro-and-Variable-Index">
<div class="header">
<p>
Next: <a href="#General-Index" accesskey="n" rel="next">General Index</a>, Previous: <a href="#API-versioning" accesskey="p" rel="prev">Automake API versioning</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Macro-and-Variable-Index-1"></span><h2 class="unnumbered">Macro and Variable Index</h2>

<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Macro-and-Variable-Index_vr_symbol-1"><b>_</b></a>
 &nbsp; 
<br>
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-W"><b>W</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-X"><b>X</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-Y"><b>Y</b></a>
 &nbsp; 
</td></tr></tbody></table>
<table class="index-vr" border="0">
<tbody><tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_symbol-1">_</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fLDADD"><code>_LDADD</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fLDFLAGS"><code>_LDFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fLIBADD"><code>_LIBADD</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fSOURCES"><code>_SOURCES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fTEXINFOS"><code>_TEXINFOS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-ACLOCAL_005fAMFLAGS"><code>ACLOCAL_AMFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Rebuilding">Rebuilding</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fCANONICAL_005fHOST"><code>AC_CANONICAL_HOST</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fCANONICAL_005fSYSTEM"><code>AC_CANONICAL_SYSTEM</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fCHECK_005fPROG"><code>AC_CHECK_PROG</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fCHECK_005fPROGS"><code>AC_CHECK_PROGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fCHECK_005fTOOL"><code>AC_CHECK_TOOL</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fCONFIG_005fAUX_005fDIR"><code>AC_CONFIG_AUX_DIR</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fCONFIG_005fHEADER"><code>AC_CONFIG_HEADER</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fF77_005fLIBRARY_005fLDFLAGS"><code>AC_F77_LIBRARY_LDFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fFUNC_005fALLOCA"><code>AC_FUNC_ALLOCA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fFUNC_005fERROR_005fAT_005fLINE"><code>AC_FUNC_ERROR_AT_LINE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fFUNC_005fFNMATCH"><code>AC_FUNC_FNMATCH</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fFUNC_005fGETLOADAVG"><code>AC_FUNC_GETLOADAVG</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fFUNC_005fMEMCMP"><code>AC_FUNC_MEMCMP</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fFUNC_005fMKTIME"><code>AC_FUNC_MKTIME</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fFUNC_005fOBSTACK"><code>AC_FUNC_OBSTACK</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fFUNC_005fSTRTOD"><code>AC_FUNC_STRTOD</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fLIBOBJ"><code>AC_LIBOBJ</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fLIBSOURCE"><code>AC_LIBSOURCE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fLIBSOURCES"><code>AC_LIBSOURCES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fOUTPUT"><code>AC_OUTPUT</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Requirements">Requirements</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPATH_005fPROG"><code>AC_PATH_PROG</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPATH_005fPROGS"><code>AC_PATH_PROGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPATH_005fXTRA"><code>AC_PATH_XTRA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPROG_005fCXX"><code>AC_PROG_CXX</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPROG_005fF77"><code>AC_PROG_F77</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPROG_005fLEX"><code>AC_PROG_LEX</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPROG_005fLIBTOOL"><code>AC_PROG_LIBTOOL</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPROG_005fRANLIB"><code>AC_PROG_RANLIB</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fPROG_005fYACC"><code>AC_PROG_YACC</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fREPLACE_005fFUNCS"><code>AC_REPLACE_FUNCS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fREPLACE_005fGNU_005fGETOPT"><code>AC_REPLACE_GNU_GETOPT</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fSTRUCT_005fST_005fBLOCKS"><code>AC_STRUCT_ST_BLOCKS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fSUBST"><code>AC_SUBST</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fCFLAGS"><code>AM_CFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fCONDITIONAL-1"><code>AM_CONDITIONAL</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fCONDITIONAL"><code>AM_CONDITIONAL</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fCONFIG_005fHEADER"><code>AM_CONFIG_HEADER</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fCPPFLAGS"><code>AM_CPPFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-am_005fcv_005fsys_005fposix_005ftermios"><code>am_cv_sys_posix_termios</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fCXXFLAGS"><code>AM_CXXFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#C_002b_002b-Support">C++ Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fC_005fPROTOTYPES"><code>AM_C_PROTOTYPES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fC_005fPROTOTYPES-1"><code>AM_C_PROTOTYPES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fC_005fPROTOTYPES-2"><code>AM_C_PROTOTYPES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#ANSI">ANSI</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fETAGSFLAGS"><code>AM_ETAGSFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tags">Tags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fFFLAGS"><code>AM_FFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fGCJFLAGS"><code>AM_GCJFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java-Support">Java Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fGNU_005fGETTEXT"><code>AM_GNU_GETTEXT</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fHEADER_005fTIOCGWINSZ_005fNEEDS_005fSYS_005fIOCTL"><code>AM_HEADER_TIOCGWINSZ_NEEDS_SYS_IOCTL</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fINIT_005fAUTOMAKE"><code>AM_INIT_AUTOMAKE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Requirements">Requirements</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fJAVACFLAGS"><code>AM_JAVACFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fLDFLAGS"><code>AM_LDFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fLDFLAGS-1"><code>AM_LDFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fMAINTAINER_005fMODE"><code>AM_MAINTAINER_MODE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fMAKEINFOFLAGS"><code>AM_MAKEINFOFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fPATH_005fLISPDIR"><code>AM_PATH_LISPDIR</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fPROG_005fGCJ"><code>AM_PROG_GCJ</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fRFLAGS"><code>AM_RFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fRUNTESTFLAGS"><code>AM_RUNTESTFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fWITH_005fREGEX"><code>AM_WITH_REGEX</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AUTOMAKE_005fOPTIONS"><code>AUTOMAKE_OPTIONS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#ANSI">ANSI</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AUTOMAKE_005fOPTIONS-1"><code>AUTOMAKE_OPTIONS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dependencies">Dependencies</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AUTOMAKE_005fOPTIONS-2"><code>AUTOMAKE_OPTIONS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-bin_005fPROGRAMS"><code>bin_PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-bin_005fSCRIPTS"><code>bin_SCRIPTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-build_005falias"><code>build_alias</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-BUILT_005fSOURCES"><code>BUILT_SOURCES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sources">Sources</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-CC"><code>CC</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CCAS"><code>CCAS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Assembly-Support">Assembly Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CCASFLAGS"><code>CCASFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Assembly-Support">Assembly Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CFLAGS"><code>CFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-check_005fLTLIBRARIES"><code>check_LTLIBRARIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-check_005fPROGRAMS"><code>check_PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-check_005fSCRIPTS"><code>check_SCRIPTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CLASSPATH_005fENV"><code>CLASSPATH_ENV</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CLEANFILES"><code>CLEANFILES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Clean">Clean</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-COMPILE"><code>COMPILE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CPPFLAGS"><code>CPPFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CXX"><code>CXX</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#C_002b_002b-Support">C++ Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CXXCOMPILE"><code>CXXCOMPILE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#C_002b_002b-Support">C++ Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CXXFLAGS"><code>CXXFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#C_002b_002b-Support">C++ Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-CXXLINK"><code>CXXLINK</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#C_002b_002b-Support">C++ Support</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-DATA"><code>DATA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DATA-1"><code>DATA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-data_005fDATA"><code>data_DATA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DEFS"><code>DEFS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DEJATOOL"><code>DEJATOOL</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DESTDIR"><code>DESTDIR</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DISTCHECK_005fCONFIGURE_005fFLAGS"><code>DISTCHECK_CONFIGURE_FLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-distcleancheck_005flistfiles"><code>distcleancheck_listfiles</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-distcleancheck_005flistfiles-1"><code>distcleancheck_listfiles</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DISTCLEANFILES"><code>DISTCLEANFILES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Clean">Clean</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_005f"><code>dist_</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-DIST_005fSUBDIRS"><code>DIST_SUBDIRS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-ELCFILES"><code>ELCFILES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Emacs-Lisp">Emacs Lisp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-ETAGSFLAGS"><code>ETAGSFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tags">Tags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-ETAGS_005fARGS"><code>ETAGS_ARGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tags">Tags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EXPECT"><code>EXPECT</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EXTRA_005fDIST"><code>EXTRA_DIST</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EXTRA_005fPROGRAMS"><code>EXTRA_PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-F77"><code>F77</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-F77COMPILE"><code>F77COMPILE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-FFLAGS"><code>FFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-FLINK"><code>FLINK</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-G">G</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-GCJFLAGS"><code>GCJFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java-Support">Java Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GTAGS_005fARGS"><code>GTAGS_ARGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tags">Tags</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-H">H</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-HEADERS"><code>HEADERS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-HEADERS-1"><code>HEADERS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-host_005falias"><code>host_alias</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-host_005ftriplet"><code>host_triplet</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-INCLUDES"><code>INCLUDES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-include_005fHEADERS"><code>include_HEADERS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-info_005fTEXINFOS"><code>info_TEXINFOS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-J">J</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-JAVA"><code>JAVA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-JAVAC"><code>JAVAC</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-JAVACFLAGS"><code>JAVACFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-JAVAROOT"><code>JAVAROOT</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-L">L</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-LDADD"><code>LDADD</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LDFLAGS"><code>LDFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LIBADD"><code>LIBADD</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-libexec_005fPROGRAMS"><code>libexec_PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-libexec_005fSCRIPTS"><code>libexec_SCRIPTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LIBOBJS"><code>LIBOBJS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LIBRARIES"><code>LIBRARIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LIBS"><code>LIBS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-lib_005fLIBRARIES"><code>lib_LIBRARIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-lib_005fLTLIBRARIES"><code>lib_LTLIBRARIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LINK"><code>LINK</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-variables">Program variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LISP"><code>LISP</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LISP-1"><code>LISP</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Emacs-Lisp">Emacs Lisp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-lisp_005fLISP"><code>lisp_LISP</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Emacs-Lisp">Emacs Lisp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-localstate_005fDATA"><code>localstate_DATA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-MAINTAINERCLEANFILES"><code>MAINTAINERCLEANFILES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Clean">Clean</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MAKE"><code>MAKE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top-level">Top level</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MAKEFLAGS"><code>MAKEFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top-level">Top level</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MAKEINFO"><code>MAKEINFO</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MAKEINFOFLAGS"><code>MAKEINFOFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MANS"><code>MANS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MANS-1"><code>MANS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-man_005fMANS"><code>man_MANS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MOSTLYCLEANFILES"><code>MOSTLYCLEANFILES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Clean">Clean</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-N">N</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-nodist_005f"><code>nodist_</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinst_005fHEADERS"><code>noinst_HEADERS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinst_005fLIBRARIES"><code>noinst_LIBRARIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinst_005fLISP"><code>noinst_LISP</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Emacs-Lisp">Emacs Lisp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinst_005fLTLIBRARIES"><code>noinst_LTLIBRARIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinst_005fPROGRAMS"><code>noinst_PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinst_005fSCRIPTS"><code>noinst_SCRIPTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-O">O</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-oldinclude_005fHEADERS"><code>oldinclude_HEADERS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-P">P</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-PACKAGE"><code>PACKAGE</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PACKAGE_002c-directory"><code>PACKAGE, directory</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PACKAGE_002c-prevent-definition"><code>PACKAGE, prevent definition</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkgdatadir"><code>pkgdatadir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkgdata_005fDATA"><code>pkgdata_DATA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkgdata_005fSCRIPTS"><code>pkgdata_SCRIPTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkgincludedir"><code>pkgincludedir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkginclude_005fHEADERS"><code>pkginclude_HEADERS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkglibdir"><code>pkglibdir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkglib_005fLIBRARIES"><code>pkglib_LIBRARIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkglib_005fLTLIBRARIES"><code>pkglib_LTLIBRARIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkglib_005fPROGRAMS"><code>pkglib_PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkgpyexecdir"><code>pkgpyexecdir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkgpythondir"><code>pkgpythondir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PROGRAMS"><code>PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PROGRAMS-1"><code>PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pyexecdir"><code>pyexecdir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PYTHON"><code>PYTHON</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PYTHON-1"><code>PYTHON</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pythondir"><code>pythondir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PYTHON_005fEXEC_005fPREFIX"><code>PYTHON_EXEC_PREFIX</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PYTHON_005fPLATFORM"><code>PYTHON_PLATFORM</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PYTHON_005fPREFIX"><code>PYTHON_PREFIX</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PYTHON_005fVERSION"><code>PYTHON_VERSION</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-R">R</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-RFLAGS"><code>RFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-RUNTEST"><code>RUNTEST</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-RUNTESTDEFAULTFLAGS"><code>RUNTESTDEFAULTFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-RUNTESTFLAGS"><code>RUNTESTFLAGS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-S">S</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-sbin_005fPROGRAMS"><code>sbin_PROGRAMS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-sbin_005fSCRIPTS"><code>sbin_SCRIPTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SCRIPTS"><code>SCRIPTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SCRIPTS-1"><code>SCRIPTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-sharedstate_005fDATA"><code>sharedstate_DATA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SOURCES"><code>SOURCES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SUBDIRS"><code>SUBDIRS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top-level">Top level</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SUFFIXES"><code>SUFFIXES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Suffixes">Suffixes</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-sysconf_005fDATA"><code>sysconf_DATA</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-TAGS_005fDEPENDENCIES"><code>TAGS_DEPENDENCIES</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tags">Tags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-target_005falias"><code>target_alias</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TESTS"><code>TESTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TESTS_005fENVIRONMENT"><code>TESTS_ENVIRONMENT</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TEXINFOS"><code>TEXINFOS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TEXINFOS-1"><code>TEXINFOS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TEXINFOS-2"><code>TEXINFOS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TEXINFO_005fTEX"><code>TEXINFO_TEX</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-V">V</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-VERSION"><code>VERSION</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-VERSION_002c-prevent-definition"><code>VERSION, prevent definition</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-W">W</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-WITH_005fDMALLOC"><code>WITH_DMALLOC</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-WITH_005fREGEX"><code>WITH_REGEX</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-X">X</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-XFAIL_005fTESTS"><code>XFAIL_TESTS</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-and-Variable-Index_vr_letter-Y">Y</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-YACC"><code>YACC</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</tbody></table>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Macro-and-Variable-Index_vr_symbol-1"><b>_</b></a>
 &nbsp; 
<br>
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-W"><b>W</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-X"><b>X</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-and-Variable-Index_vr_letter-Y"><b>Y</b></a>
 &nbsp; 
</td></tr></tbody></table>


<hr>
</div>
<div class="unnumbered" id="General-Index">
<div class="header">
<p>
Previous: <a href="#Macro-and-Variable-Index" accesskey="p" rel="prev">Macro and Variable Index</a>, Up: <a href="#Top" accesskey="u" rel="up">GNU Automake</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Macro-and-Variable-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="General-Index-1"></span><h2 class="unnumbered">General Index</h2>

<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#General-Index_cp_symbol-1"><b>#</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_symbol-2"><b>-</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_symbol-3"><b>@</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_symbol-4"><b>_</b></a>
 &nbsp; 
<br>
<a class="summary-letter" href="#General-Index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-Y"><b>Y</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-Z"><b>Z</b></a>
 &nbsp; 
</td></tr></tbody></table>
<table class="index-cp" border="0">
<tbody><tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_symbol-1">#</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0023_0023-_0028special-Automake-comment_0029">## (special Automake comment)</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_symbol-2">-</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dacdir"><code>--acdir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dadd_002dmissing"><code>--add-missing</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dcopy"><code>--copy</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dcygnus"><code>--cygnus</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002denable_002dmaintainer_002dmode"><code>--enable-maintainer-mode</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dforce_002dmissing"><code>--force-missing</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dforeign"><code>--foreign</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dgnits"><code>--gnits</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dgnu"><code>--gnu</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dhelp"><code>--help</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dhelp-1"><code>--help</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dinclude_002ddeps"><code>--include-deps</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dlibdir"><code>--libdir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dno_002dforce"><code>--no-force</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002doutput"><code>--output</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002doutput_002ddir"><code>--output-dir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dprint_002dac_002ddir"><code>--print-ac-dir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dverbose"><code>--verbose</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dverbose-1"><code>--verbose</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dversion"><code>--version</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dversion-1"><code>--version</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dWerror"><code>--Werror</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dwith_002ddmalloc"><code>--with-dmalloc</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dwith_002dregex"><code>--with-regex</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dWno_002derror"><code>--Wno-error</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002da"><code>-a</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002dc"><code>-c</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002denable_002ddebug_002c-example">–enable-debug, example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002df"><code>-f</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dgnits_002c-complete-description">–gnits, complete description</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Gnits">Gnits</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dgnu_002c-complete-description">–gnu, complete description</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Gnits">Gnits</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002d_002dgnu_002c-required-files">–gnu, required files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Gnits">Gnits</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002dhook-targets">-hook targets</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002di"><code>-i</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002dI"><code>-I</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002dlocal-targets">-local targets</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002do"><code>-o</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_002dv"><code>-v</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_symbol-3">@</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0040ALLOCA_0040_002c-special-handling">@ALLOCA@, special handling</a>:</td><td>&nbsp;</td><td valign="top"><a href="#LIBOBJS">LIBOBJS</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0040LIBOBJS_0040_002c-special-handling">@LIBOBJS@, special handling</a>:</td><td>&nbsp;</td><td valign="top"><a href="#LIBOBJS">LIBOBJS</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0040LTLIBOBJS_0040_002c-special-handling">@LTLIBOBJS@, special handling</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_symbol-4">_</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fDATA-primary_002c-defined">_DATA primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fDEPENDENCIES_002c-defined">_DEPENDENCIES, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fHEADERS-primary_002c-defined">_HEADERS primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fJAVA-primary_002c-defined">_JAVA primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fLDFLAGS_002c-defined">_LDFLAGS, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fLIBADD-primary_002c-defined">_LIBADD primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fLIBRARIES-primary_002c-defined">_LIBRARIES primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fLISP-primary_002c-defined">_LISP primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Emacs-Lisp">Emacs Lisp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fLTLIBRARIES-primary_002c-defined">_LTLIBRARIES primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fMANS-primary_002c-defined">_MANS primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fPROGRAMS-primary-variable">_PROGRAMS primary variable</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fPYTHON-primary_002c-defined">_PYTHON primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fSCRIPTS-primary_002c-defined">_SCRIPTS primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fSOURCES-and-header-files">_SOURCES and header files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fSOURCES-primary_002c-defined">_SOURCES primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005fTEXINFOS-primary_002c-defined">_TEXINFOS primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-acinclude_002em4_002c-defined">acinclude.m4, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Complete">Complete</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-aclocal-program_002c-introduction">aclocal program, introduction</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Complete">Complete</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-aclocal_002c-extending">aclocal, extending</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending-aclocal">Extending aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-aclocal_002c-Invoking">aclocal, Invoking</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-aclocal_002em4_002c-preexisting">aclocal.m4, preexisting</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Complete">Complete</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AC_005fOUTPUT_002c-scanning">AC_OUTPUT, scanning</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Requirements">Requirements</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Adding-new-SUFFIXES">Adding new SUFFIXES</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Suffixes">Suffixes</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-all"><code>all</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-all_002dlocal"><code>all-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-AM_005fINIT_005fAUTOMAKE_002c-example-use">AM_INIT_AUTOMAKE, example use</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Complete">Complete</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-ansi2knr"><code>ansi2knr</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#ANSI">ANSI</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Automake-constraints">Automake constraints</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Introduction">Introduction</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Automake-options">Automake options</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Automake-requirements">Automake requirements</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Introduction">Introduction</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Automake-requirements-1">Automake requirements</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Requirements">Requirements</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Automake_002c-invoking">Automake, invoking</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Automake_002c-recursive-operation">Automake, recursive operation</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Automatic-dependency-tracking">Automatic dependency tracking</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dependencies">Dependencies</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Automatic-linker-selection">Automatic linker selection</a>:</td><td>&nbsp;</td><td valign="top"><a href="#How-the-Linker-is-Chosen">How the Linker is Chosen</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Auxiliary-programs">Auxiliary programs</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Auxiliary-Programs">Auxiliary Programs</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Avoiding-path-stripping">Avoiding path stripping</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Alternative">Alternative</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-BUGS_002c-reporting">BUGS, reporting</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Introduction">Introduction</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-BUILT_005fSOURCES_002c-defined">BUILT_SOURCES, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sources">Sources</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-C_002b_002b-support">C++ support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#C_002b_002b-Support">C++ Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-canonicalizing-Automake-macros">canonicalizing Automake macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Canonicalization">Canonicalization</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-cfortran">cfortran</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-check"><code>check</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-check-primary-prefix_002c-definition">check primary prefix, definition</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-check_002dlocal"><code>check-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-check_005fLTLIBRARIES_002c-not-allowed">check_LTLIBRARIES, not allowed</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-clean_002dlocal"><code>clean-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Comment_002c-special-to-Automake">Comment, special to Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Complete-example">Complete example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Complete">Complete</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Conditional-example_002c-_002d_002denable_002ddebug">Conditional example,  –enable-debug</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Conditionals">Conditionals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-config_002eguess">config.guess</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-configure_002ein_002c-from-GNU-Hello">configure.in, from GNU Hello</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-configure_002ein_002c-scanning">configure.in, scanning</a>:</td><td>&nbsp;</td><td valign="top"><a href="#configure">configure</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Constraints-of-Automake">Constraints of Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Introduction">Introduction</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-cpio-example">cpio example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-ctags-Example">ctags Example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#etags">etags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-cvs_002ddist"><code>cvs-dist</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-cvs_002ddist_002c-non_002dstandard-example">cvs-dist, non-standard example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Cygnus-strictness">Cygnus strictness</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Cygnus">Cygnus</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-DATA-primary_002c-defined">DATA primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-de_002dANSI_002dfication_002c-defined">de-ANSI-fication, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#ANSI">ANSI</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dejagnu"><code>dejagnu</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-depcomp">depcomp</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dependencies">Dependencies</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Dependency-tracking">Dependency tracking</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dependencies">Dependencies</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Dependency-tracking_002c-disabling">Dependency tracking, disabling</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dependencies">Dependencies</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Disabling-dependency-tracking">Disabling dependency tracking</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dependencies">Dependencies</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist"><code>dist</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_002dbzip2"><code>dist-bzip2</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_002dgzip"><code>dist-gzip</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_002dhook"><code>dist-hook</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_002dhook-1"><code>dist-hook</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_002dshar"><code>dist-shar</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_002dtarZ"><code>dist-tarZ</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_002dzip"><code>dist-zip</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-distcheck"><code>distcheck</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-distclean_002dlocal"><code>distclean-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-distcleancheck"><code>distcleancheck</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dist_005f-and-nobase_005f">dist_ and nobase_</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Alternative">Alternative</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dmalloc_002c-support-for">dmalloc, support for</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dvi"><code>dvi</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dvi_002dlocal"><code>dvi-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-E_002dmail_002c-bug-reports">E-mail, bug reports</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Introduction">Introduction</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EDITION-Texinfo-macro">EDITION Texinfo macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-else"><code>else</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-endif"><code>endif</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-etags-Example">etags Example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#etags">etags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example-conditional-_002d_002denable_002ddebug">Example conditional –enable-debug</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example-of-recursive-operation">Example of recursive operation</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example-of-shared-libraries">Example of shared libraries</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example_002c-ctags-and-etags">Example, ctags and etags</a>:</td><td>&nbsp;</td><td valign="top"><a href="#etags">etags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example_002c-EXTRA_005fPROGRAMS">Example, EXTRA_PROGRAMS</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example_002c-GNU-Hello">Example, GNU Hello</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example_002c-handling-Texinfo-files">Example, handling Texinfo files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example_002c-mixed-language">Example, mixed language</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Example_002c-regression-test">Example, regression test</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Executable-extension">Executable extension</a>:</td><td>&nbsp;</td><td valign="top"><a href="#EXEEXT">EXEEXT</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Exit-status-77_002c-special-interpretation">Exit status 77, special interpretation</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Expected-test-failure">Expected test failure</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Extending-aclocal">Extending aclocal</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending-aclocal">Extending aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Extending-list-of-installation-directories">Extending list of installation directories</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Extension_002c-executable">Extension, executable</a>:</td><td>&nbsp;</td><td valign="top"><a href="#EXEEXT">EXEEXT</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Extra-files-distributed-with-Automake">Extra files distributed with Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EXTRA_005f_002c-prepending">EXTRA_, prepending</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EXTRA_005fPROGRAMS_002c-defined">EXTRA_PROGRAMS, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EXTRA_005fPROGRAMS_002c-defined-1">EXTRA_PROGRAMS, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-EXTRA_005fprog_005fSOURCES_002c-defined">EXTRA_prog_SOURCES, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Files-distributed-with-Automake">Files distributed with Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-First-line-of-Makefile_002eam">First line of Makefile.am</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-FLIBS_002c-defined">FLIBS, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-foreign-strictness">foreign strictness</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Strictness">Strictness</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Fortran-77-support">Fortran 77 support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Fortran-77_002c-mixing-with-C-and-C_002b_002b">Fortran 77, mixing with C and C++</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Fortran-77_002c-Preprocessing">Fortran 77, Preprocessing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessing-Fortran-77">Preprocessing Fortran 77</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-G">G</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Gettext-support">Gettext support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#gettext">gettext</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-gnits-strictness">gnits strictness</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Strictness">Strictness</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-Gettext-support">GNU Gettext support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#gettext">gettext</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-Hello_002c-configure_002ein">GNU Hello, configure.in</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-Hello_002c-example">GNU Hello, example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-make-extensions">GNU make extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-Makefile-standards">GNU Makefile standards</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Introduction">Introduction</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-gnu-strictness">gnu strictness</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Strictness">Strictness</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-H">H</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Header-files-in-_005fSOURCES">Header files in _SOURCES</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-HEADERS-primary_002c-defined">HEADERS primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-HEADERS_002c-installation-directories">HEADERS, installation directories</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Hello-example">Hello example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Hello_002c-configure_002ein">Hello, configure.in</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-hook-targets">hook targets</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-HP_002dUX-10_002c-lex-problems">HP-UX 10, lex problems</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-HTML-support_002c-example">HTML support, example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-id"><code>id</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tags">Tags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-if"><code>if</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Conditionals">Conditionals</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-include"><code>include</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Include">Include</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-INCLUDES_002c-example-usage">INCLUDES, example usage</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Including-Makefile-fragment">Including Makefile fragment</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Include">Include</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-info"><code>info</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-info-1"><code>info</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-info_002dlocal"><code>info-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install"><code>install</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Install-hook">Install hook</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Install_002c-two-parts-of">Install, two parts of</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002ddata"><code>install-data</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002ddata-1"><code>install-data</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002ddata_002dhook"><code>install-data-hook</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002ddata_002dlocal"><code>install-data-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002ddata_002dlocal-1"><code>install-data-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dexec"><code>install-exec</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dexec-1"><code>install-exec</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dexec_002dhook"><code>install-exec-hook</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dexec_002dlocal"><code>install-exec-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dexec_002dlocal-1"><code>install-exec-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dinfo"><code>install-info</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dinfo-1"><code>install-info</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dinfo-target">install-info target</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dman"><code>install-man</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dman-1"><code>install-man</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dman-target">install-man target</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-install_002dstrip"><code>install-strip</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Installation-directories_002c-extending-list">Installation directories, extending list</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Installation-support">Installation support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-installcheck_002dlocal"><code>installcheck-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-installdirs"><code>installdirs</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-installdirs_002dlocal"><code>installdirs-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Installing-headers">Installing headers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Installing-scripts">Installing scripts</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Invoking-aclocal">Invoking aclocal</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-aclocal">Invoking aclocal</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Invoking-Automake">Invoking Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-J">J</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-JAVA-primary_002c-defined">JAVA primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-JAVA-restrictions">JAVA restrictions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Java-support">Java support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java-Support">Java Support</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-L">L</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-lex-problems-with-HP_002dUX-10">lex problems with HP-UX 10</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-lex_002c-multiple-lexers">lex, multiple lexers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Yacc-and-Lex">Yacc and Lex</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LIBADD-primary_002c-defined">LIBADD primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LIBRARIES-primary_002c-defined">LIBRARIES primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Linking-Fortran-77-with-C-and-C_002b_002b">Linking Fortran 77 with C and C++</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LISP-primary_002c-defined">LISP primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Emacs-Lisp">Emacs Lisp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-local-targets">local targets</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-LTLIBRARIES-primary_002c-defined">LTLIBRARIES primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Macros-Automake-recognizes">Macros Automake recognizes</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Macros_002c-overriding">Macros, overriding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-make-check">make check</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-make-clean-support">make clean support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Clean">Clean</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-make-dist">make dist</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-make-distcheck">make distcheck</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-make-distcleancheck">make distcleancheck</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dist">Dist</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-make-install-support">make install support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Make-targets_002c-overriding">Make targets, overriding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Makefile-fragment_002c-including">Makefile fragment, including</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Include">Include</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Makefile_002eam_002c-first-line">Makefile.am, first line</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-MANS-primary_002c-defined">MANS primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-mdate_002dsh">mdate-sh</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Mixed-language-example">Mixed language example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Mixing-Fortran-77-with-C-and-C_002b_002b">Mixing Fortran 77 with C and C++</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Mixing-Fortran-77-with-C-and_002for-C_002b_002b">Mixing Fortran 77 with C and/or C++</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mixing-Fortran-77-With-C-and-C_002b_002b">Mixing Fortran 77 With C and C++</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-mostlyclean_002dlocal"><code>mostlyclean-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Multiple-configure_002ein-files">Multiple configure.in files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Multiple-lex-lexers">Multiple lex lexers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Yacc-and-Lex">Yacc and Lex</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Multiple-yacc-parsers">Multiple yacc parsers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Yacc-and-Lex">Yacc and Lex</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-N">N</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-no_002ddependencies"><code>no-dependencies</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dependencies">Dependencies</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-no_002dinstallinfo"><code>no-installinfo</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-no_002dinstallman"><code>no-installman</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-no_002dtexinfo_002etex"><code>no-texinfo.tex</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-nobase_005f">nobase_</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Alternative">Alternative</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-nobase_005f-and-dist_005f-or-nodist_005f">nobase_ and dist_ or nodist_</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Alternative">Alternative</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-nodist_005f-and-nobase_005f">nodist_ and nobase_</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Alternative">Alternative</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinst-primary-prefix_002c-definition">noinst primary prefix, definition</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinstall_002dinfo-target">noinstall-info target</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-noinstall_002dman-target">noinstall-man target</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Non_002dGNU-packages">Non-GNU packages</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Strictness">Strictness</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Non_002dstandard-targets">Non-standard targets</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-O">O</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Objects-in-subdirectory">Objects in subdirectory</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-and-Library-Variables">Program and Library Variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-ansi2knr">Option, ansi2knr</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-check_002dnews">Option, check-news</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-cygnus">Option, cygnus</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-dejagnu">Option, dejagnu</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-dist_002dbzip2">Option, dist-bzip2</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-dist_002dshar">Option, dist-shar</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-dist_002dtarZ">Option, dist-tarZ</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-dist_002dzip">Option, dist-zip</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-foreign">Option, foreign</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-gnits">Option, gnits</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-gnu">Option, gnu</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-no_002ddefine">Option, no-define</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-no_002ddependencies">Option, no-dependencies</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-no_002dexeext">Option, no-exeext</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-no_002dinstallinfo">Option, no-installinfo</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-no_002dinstallman">Option, no-installman</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-no_002dtexinfo">Option, no-texinfo</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-nostdinc">Option, nostdinc</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-readme_002dalpha">Option, readme-alpha</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Option_002c-version">Option, version</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Options">Options</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Options_002c-Automake">Options, Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Overriding-make-macros">Overriding make macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Overriding-make-targets">Overriding make targets</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Overriding-SUBDIRS">Overriding SUBDIRS</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top-level">Top level</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-P">P</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Path-stripping_002c-avoiding">Path stripping, avoiding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Alternative">Alternative</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkgdatadir_002c-defined">pkgdatadir, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkgincludedir_002c-defined">pkgincludedir, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pkglibdir_002c-defined">pkglibdir, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-POSIX-termios-headers">POSIX termios headers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Preprocessing-Fortran-77">Preprocessing Fortran 77</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessing-Fortran-77">Preprocessing Fortran 77</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-DATA">Primary variable, DATA</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Data">Data</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-defined">Primary variable, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-HEADERS">Primary variable, HEADERS</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Headers">Headers</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-JAVA">Primary variable, JAVA</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-LIBADD">Primary variable, LIBADD</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-LIBRARIES">Primary variable, LIBRARIES</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Library">A Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-LISP">Primary variable, LISP</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Emacs-Lisp">Emacs Lisp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-LTLIBRARIES">Primary variable, LTLIBRARIES</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-MANS">Primary variable, MANS</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-PROGRAMS">Primary variable, PROGRAMS</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-PYTHON">Primary variable, PYTHON</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-SCRIPTS">Primary variable, SCRIPTS</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-SOURCES">Primary variable, SOURCES</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Primary-variable_002c-TEXINFOS">Primary variable, TEXINFOS</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PROGRAMS-primary-variable">PROGRAMS primary variable</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Programs_002c-auxiliary">Programs, auxiliary</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Auxiliary-Programs">Auxiliary Programs</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PROGRAMS_002c-bindir">PROGRAMS, bindir</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-prog_005fLDADD_002c-defined">prog_LDADD, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-PYTHON-primary_002c-defined">PYTHON primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Python">Python</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-R">R</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Ratfor-programs">Ratfor programs</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessing-Fortran-77">Preprocessing Fortran 77</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-README_002dalpha">README-alpha</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Gnits">Gnits</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Recognized-macros-by-Automake">Recognized macros by Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Optional">Optional</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Recursive-operation-of-Automake">Recursive operation of Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-regex-package">regex package</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Regression-test-example">Regression test example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Reporting-BUGS">Reporting BUGS</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Introduction">Introduction</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Requirements-of-Automake">Requirements of Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Requirements">Requirements</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Requirements_002c-Automake">Requirements, Automake</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Introduction">Introduction</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Restrictions-for-JAVA">Restrictions for JAVA</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java">Java</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rx-package">rx package</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-S">S</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Scanning-configure_002ein">Scanning configure.in</a>:</td><td>&nbsp;</td><td valign="top"><a href="#configure">configure</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SCRIPTS-primary_002c-defined">SCRIPTS primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SCRIPTS_002c-installation-directories">SCRIPTS, installation directories</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Scripts">Scripts</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Selecting-the-linker-automatically">Selecting the linker automatically</a>:</td><td>&nbsp;</td><td valign="top"><a href="#How-the-Linker-is-Chosen">How the Linker is Chosen</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Shared-libraries_002c-support-for">Shared libraries, support for</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SOURCES-primary_002c-defined">SOURCES primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Program">A Program</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Special-Automake-comment">Special Automake comment</a>:</td><td>&nbsp;</td><td valign="top"><a href="#General-Operation">General Operation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Strictness_002c-command-line">Strictness, command line</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-Automake">Invoking Automake</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Strictness_002c-defined">Strictness, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Strictness">Strictness</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Strictness_002c-foreign">Strictness, foreign</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Strictness">Strictness</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Strictness_002c-gnits">Strictness, gnits</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Strictness">Strictness</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Strictness_002c-gnu">Strictness, gnu</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Strictness">Strictness</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Subdirectory_002c-objects-in">Subdirectory, objects in</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Program-and-Library-Variables">Program and Library Variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SUBDIRS_002c-explained">SUBDIRS, explained</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top-level">Top level</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SUBDIRS_002c-overriding">SUBDIRS, overriding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top-level">Top level</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-suffix-_002ela_002c-defined">suffix .la, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-suffix-_002elo_002c-defined">suffix .lo, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#A-Shared-Library">A Shared Library</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-SUFFIXES_002c-adding">SUFFIXES, adding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Suffixes">Suffixes</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Support-for-C_002b_002b">Support for C++</a>:</td><td>&nbsp;</td><td valign="top"><a href="#C_002b_002b-Support">C++ Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Support-for-Fortran-77">Support for Fortran 77</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Fortran-77-Support">Fortran 77 Support</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Support-for-GNU-Gettext">Support for GNU Gettext</a>:</td><td>&nbsp;</td><td valign="top"><a href="#gettext">gettext</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Support-for-Java">Support for Java</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Java-Support">Java Support</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-tags"><code>tags</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tags">Tags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TAGS-support">TAGS support</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tags">Tags</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Target_002c-install_002dinfo">Target, install-info</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Target_002c-install_002dman">Target, install-man</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Target_002c-noinstall_002dinfo">Target, noinstall-info</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Target_002c-noinstall_002dman">Target, noinstall-man</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Man-pages">Man pages</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-termios-POSIX-headers">termios POSIX headers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Public-macros">Public macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Test-suites">Test suites</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Tests_002c-expected-failure">Tests, expected failure</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Tests">Tests</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Texinfo-file-handling-example">Texinfo file handling example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Hello">Hello</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Texinfo-macro_002c-EDITION">Texinfo macro, EDITION</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Texinfo-macro_002c-UPDATED">Texinfo macro, UPDATED</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Texinfo-macro_002c-UPDATED_002dMONTH">Texinfo macro, UPDATED-MONTH</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Texinfo-macro_002c-VERSION">Texinfo macro, VERSION</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-texinfo_002etex">texinfo.tex</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TEXINFOS-primary_002c-defined">TEXINFOS primary, defined</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-U">U</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Uniform-naming-scheme">Uniform naming scheme</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Uniform">Uniform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-uninstall"><code>uninstall</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Install">Install</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-uninstall-1"><code>uninstall</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-uninstall_002dhook"><code>uninstall-hook</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-uninstall_002dlocal"><code>uninstall-local</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extending">Extending</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-UPDATED-Texinfo-macro">UPDATED Texinfo macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-UPDATED_002dMONTH-Texinfo-macro">UPDATED-MONTH Texinfo macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-user-variables">user variables</a>:</td><td>&nbsp;</td><td valign="top"><a href="#User-Variables">User Variables</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-V">V</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-variables_002c-reserved-for-the-user">variables, reserved for the user</a>:</td><td>&nbsp;</td><td valign="top"><a href="#User-Variables">User Variables</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-VERSION-Texinfo-macro">VERSION Texinfo macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texinfo">Texinfo</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-W">W</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Windows">Windows</a>:</td><td>&nbsp;</td><td valign="top"><a href="#EXEEXT">EXEEXT</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-Y">Y</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-yacc_002c-multiple-parsers">yacc, multiple parsers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Yacc-and-Lex">Yacc and Lex</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-ylwrap">ylwrap</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Yacc-and-Lex">Yacc and Lex</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="General-Index_cp_letter-Z">Z</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-zardoz-example">zardoz example</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Complete">Complete</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</tbody></table>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#General-Index_cp_symbol-1"><b>#</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_symbol-2"><b>-</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_symbol-3"><b>@</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_symbol-4"><b>_</b></a>
 &nbsp; 
<br>
<a class="summary-letter" href="#General-Index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-Y"><b>Y</b></a>
 &nbsp; 
<a class="summary-letter" href="#General-Index_cp_letter-Z"><b>Z</b></a>
 &nbsp; 
</td></tr></tbody></table>


</div>
</div>
<div class="footnote">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>Autoconf 2.50 promotes
<samp>configure.ac</samp> over <samp>configure.in</samp>.  The rest of this
documentation will refer to <samp>configure.in</samp> as this use is not yet
spread, but Automake supports <samp>configure.ac</samp> too.</p>
<h5><a id="FOOT2" href="#DOCF2">(2)</a></h5>
<p>We
believe.  This work is new and there are probably warts.
See <a href="#Introduction">Introduction</a>, for information on reporting bugs.</p>
<h5><a id="FOOT3" href="#DOCF3">(3)</a></h5>
<p>There are other, more obscure reasons reasons for
this limitation as well.</p>
<h5><a id="FOOT4" href="#DOCF4">(4)</a></h5>
<p>Much, if not most, of the
information in the following sections pertaining to preprocessing
Fortran 77 programs was taken almost verbatim from <a data-manual="make" href="https://www.gnu.org/software/make/manual/make.html#Catalogue-of-Rules">Catalogue of Rules</a> in <cite>The GNU Make Manual</cite>.</p>
<h5><a id="FOOT5" href="#DOCF5">(5)</a></h5>
<p>For example,
<a href="http://www-zeus.desy.de/~burow/cfortran/">the cfortran package</a>
addresses all of these inter-language issues, and runs under nearly all
Fortran 77, C and C++ compilers on nearly all platforms.  However,
<code>cfortran</code> is not yet Free Software, but it will be in the next
major release.</p>
<h5><a id="FOOT6" href="#DOCF6">(6)</a></h5>
<p>See
<a href="http://sources.redhat.com/automake/dependencies.html">http://sources.redhat.com/automake/dependencies.html</a> for more
information on the history and experiences with automatic dependency
tracking in Automake</p>
<h5><a id="FOOT7" href="#DOCF7">(7)</a></h5>
<p>However, for the case of a
non-installed header file that is actually used by a particular program,
we recommend listing it in the program’s ‘<samp>_SOURCES</samp>’ variable
instead of in <code>noinst_HEADERS</code>.  We believe this is more clear.</p>
</div>





</body></html>