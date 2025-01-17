% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_mutations.R
\name{find_mutations}
\alias{find_mutations}
\title{Searching for mutations related to signature score}
\usage{
find_mutations(
  mutation_matrix,
  signature_matrix,
  id_signature_matrix = "ID",
  signature,
  min_mut_freq = 0.05,
  plot = TRUE,
  method = "multi",
  save_path = NULL,
  palette = "paired3",
  show_plot = TRUE,
  show_col = FALSE,
  width = 8,
  height = 4,
  oncoprint_group_by = "mean",
  oncoprint_col = "#224444",
  gene_counts = 10,
  jitter = FALSE,
  genes = NULL,
  point_size = 4.5
)
}
\arguments{
\item{mutation_matrix}{mutation matrix with sample name in the row and genes in the column}

\item{signature_matrix}{signature data frame with identifier and target signatures}

\item{id_signature_matrix}{column name of identifier}

\item{signature}{name of target signature}

\item{min_mut_freq}{minimum frequency of mutations}

\item{plot}{logical variable, if TRUE, plot will be save in the `save_path`}

\item{method}{multi or Wilcoxon test only, if `multi` is applied, both `cuzick test` and `wilcoxon` will be performed}

\item{save_path}{path to save plot and statistical analyses}

\item{palette}{palette of box plot}

\item{show_plot}{logical variable, if TRUE, plot will be printed.}

\item{show_col}{show code of palette}

\item{width}{width of oncoprint}

\item{height}{height of oncoprint}

\item{oncoprint_group_by}{signature must be group by mean or quantile}

\item{oncoprint_col}{color of mutation}

\item{gene_counts}{define the number of genes which will be shown in the oncoprint}

\item{jitter}{if true, each point will be drawn in the box plot with jitter}

\item{genes}{genes for drawing}

\item{point_size}{default is 4.5}
}
\description{
Searching for mutations related to signature score
}
\author{
Dongqiang Zeng
}
