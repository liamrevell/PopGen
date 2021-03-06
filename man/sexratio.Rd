\name{sexratio}
\alias{sexratio}
\title{Hypothetical analysis of frequency dependent selection on a sex determining genetic locus}
\usage{
	sexratio(p0=0.01, time=40, show="p", pause=0, sex.Aa=c(0.5,0.5))
}
\arguments{
	\item{p0}{Starting frequency for the \emph{A} allele. Individuals with \emph{AA} genotypes are male, while individuals with \emph{Aa} genotypes are male or female with probability given by \code{sex.Aa}.}
	\item{time}{Number of generations to run the analysis.}
	\item{show}{Two different options for plotting. \code{"p"} shows the frequency of \emph{A} through time; \code{"fitness"} plots the mean fitness through time; \code{"sex-ratio"} plots the relative frequency of each sex; and \code{"genotypes"} plots the frequencies of the three genotypes in the population. The default is \code{show="p"}.}
	\item{pause}{Pause between generations. \code{pause=0.01} (for instance) might smooth animation.}
	\item{sex.Aa}{Probability that individuals with genotype \emph{Aa} are male or female, respectively.}
}
\description{
	This function performs numerical analysis of a frequency dependent selection model of a hypothetical diploid sexually reproducing population in which sex is determined by the genotype at a biallelic genetic locus. Genotype \emph{AA} are male, genotype \emph{aa} are female, and genotype \emph{Aa} might be male or female with probabilities that can be specified by the user. (Users may find, for instance, that setting \code{sex.Aa=c(1,0)} will result in evolution towards an \emph{XY} sex determination system; whereas \code{sex.Aa=c(0,1)} will evolve towards a \emph{ZW} system.)
}
\value{
	The function creates one of four possible plots, depending on the value of \code{show}. Numerical analysis of this model shows how frequency dependent selection should favor alleles that tend to produce the rarer sex in the population.
	
	The function invisibly returns an object of class \code{"sexratio"} that can be printed or re-plotted by the user. (See examples.)
}
\author{Liam Revell \email{liam.revell@umb.edu}}
\seealso{
  \code{\link{freqdep}}
}
\examples{
	sexratio()
	sexratio(p0=0.001,show="sex-ratio")
	sexratio(p0=0.001,show="fitness")
	object<-sexratio(p0=0.001,sex.Aa=c(0.9,0.1),
		time=20)
	print(object)
	par(mfrow=c(2,1))
	plot(object,lwd=4,type="s",show="sex-ratio")
	plot(object,lwd=4,type="s",show="genotypes")
	par(mfrow=c(1,1))
	
}
\keyword{population genetics}
\keyword{evolutionary theory}
