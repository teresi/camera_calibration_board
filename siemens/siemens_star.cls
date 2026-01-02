\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{siemens_star}[siemens star pattern]

% siemens star (aka spoke target) focus pattern

% author: Michael Teresi


% NB setting \paperwidth after geometry produced an error
%    where tikz page center was not actually in center of page
%    pass options on command line instead and use `current page.center`

% NB clipping is available but not recommended
%    drawing with clipping sometimes results in areas that don't get drawn correctly
%    clipping is ignored by the CNC, it appears the clip is not part of the SVG


\LoadClass{article}
\pagestyle{empty}

% NB do not set paperwidth, paperheight here b/c they are NOT
%    overridden by the command line options
\RequirePackage[
	nohead,
	nofoot,
	margin=0mm,
	voffset=0mm,
	hoffset=0mm
]
{geometry}

\RequirePackage{tikz, ifthen}
\usetikzlibrary{fit, calc, shapes, backgrounds}



% FUTURE add elipse siemens star: x = h + a*cos(theta); y = k + b*sin(theta)
% radius, number spokes, x, y
\newcommand{\siemenstar}[4]
{
	\pgfmathsetmacro{\radius}{#1}
	\pgfmathsetmacro{\nSpokes}{#2}  % MAGIC 8deg / spoke appears to be common
	\pgfmathsetmacro{\cx}{#3}
	\pgfmathsetmacro{\cy}{#4}
	\pgfmathsetmacro{\angle}{360/2/\nSpokes}  % spokes fill *half* the circle

	\begin{tikzpicture}
		[%
			x=1mm,
			y=1mm,
			overlay,
			remember picture,
			scale=1,
			radius=\radius,
			delta angle=\angle,
			shift={(current page.south west)}
		]
	   % NOTE: previously using clipping, but the CNC ignores clipping on and SVG (?)
	   % MAGIC: starting at 1 b/c otherwise it draws 2 spokes on the first/last,
	   % and overlapping paths causes the CNC to not draw it (?)
		\foreach \spokeIndex [evaluate={\spoke=(\spokeIndex*2*\angle)}] in {1,...,\nSpokes}
		{
			\pgfmathsetmacro{\start}{\spoke-\angle/2}
			\pgfmathsetmacro{\stop}{\spoke+\angle/2}
			\begin{scope}
				\filldraw [fill=black, line width=0.001pt] (\cx, \cy) -- +({\radius*cos(\start)}, {\radius*sin(\start)}) arc[start angle=\start] -- cycle;
			\end{scope}
		}
	\end{tikzpicture}%
}
