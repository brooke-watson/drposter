% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drposter.R
\name{revealjs_poster}
\alias{revealjs_poster}
\title{Generate academic posters in R Markdown based on 'reveal.js'}
\usage{
revealjs_poster(self_contained = FALSE, template = "poster",
  css = "poster.css", theme = NULL, ...)
}
\arguments{
\item{self_contained}{Whether or not the poster should be packaged into a
a single self-contained file. Set to \code{FALSE} by default to save build time.}

\item{template}{Pandoc template to use for rendering. Pass "poster" to use
the modified reveal.js poster template built into this package; pass
\code{NULL} to use pandoc's built-in template for reveal.js; pass a path
to use a custom template that you've created. Note that if you don't use
the default "poster" template then the reveal.js presentation javascript
will load and transform your poster into a presentation with inconsistent
styling.}

\item{css}{One or more CSS files defining the poster styling. Some base
styles in poster.css are copied by default into the current directory and
automatically linked in the generated HTML unless this parameter is defined.}

\item{theme}{Currently unused.}

\item{...}{Additional parameters to pass to revealjs; otherwise ignored.}
}
\value{
R Markdown output format to pass to \code{\link[rmarkdown]{render}}
}
\description{
Format for converting R Markdown reveal.js presentations to HTML/CSS posters.
}
\details{
Use level 1 sections (`#`) to denote main divisions of content.
Assigning a `{.col-x}` class, where `x` is 1--3, will stretch the container
across the page width with `x` equal subcolumns, using Flexbox
The actual content goes inside of level 2 containers (`## Block title here`).
There are also a few convenience classes, such as formatting a QR code block.
The markdown source for the poster in \code{inst/example} perhaps provides the
best documentation by example.

For additional documentation on using revealjs presentations see
\href{https://github.com/rstudio/revealjs}{https://github.com/rstudio/revealjs}.
}
\examples{
\dontrun{

library(revealjs)
library(drposter)

# simple invocation
rmarkdown::render("pres.Rmd", revealjs_poster())
}

}

