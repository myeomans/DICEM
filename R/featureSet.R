#' DICE Features
#'
#' @description Extracts feature sets to match pre-trained models
#' @param text character A vector of texts, each of which will be tallied for politeness features.
#' @param parser character Name of dependency parser to use (see details). Without a dependency parser, the politeness features are excluded from the model.
#' @param num_mc_cores integer Number of cores for parallelization. Default is 1, but we encourage users to try parallel::detectCores() if possible.
#' @details The politeness features depend on part-of-speech tagged sentences (e.g. "bare commands" are a particular verb class).
#'     To include these features in the analysis, a POS tagger must be initialized beforehand - we currently support SpaCy which must
#'     be installed separately in Python (see example for implementation).
#' @return a data.frame of  features, matching the pre-trained model set

#'
#'@export
featureSet<-function(text,parser=c("none","spacy"),num_mc_cores=1){

  parser=parser[1]

  exNG<-doc2concrete::ngramTokens(text,
                                  ngrams=1:2,
                                  vocabmatch = DICEM::diceNGrams)

  exBasic<-basicSet(text)

  if(parser=="spacy"){
    exPol<-politeness::politeness(text,parser="spacy",
                                  num_mc_cores=num_mc_cores)

    diceX=Matrix::Matrix(cbind(as.matrix(exPol),
                       as.matrix(exNG),
                       as.matrix(exBasic)
                       ),
                 sparse=TRUE)
  } else{
    diceX=Matrix::Matrix(cbind(as.matrix(exNG),
                       as.matrix(exBasic)
    ),
    sparse=TRUE)
  }
  return(diceX)
}

