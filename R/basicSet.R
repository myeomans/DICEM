#' Basic Features
#'
#' @description Simple features as inputs to the DICE model
#' @param text character A vector of texts, each of which will be tallied for DICE features.
#' @details The DICE models use, as features, linear and quadratic terms for sentiment, emotion, and word count. 
#' @return a data.frame of feature scores for the pre-trained models.
#'
#'@export
basicSet<-function(text){
  wdct<-stringr::str_count(text,"[[:alpha:]]+")
  vader<-vader::vader_df(text)
  simples<-data.frame(Sentiment=vader$compound,
                      Emotion=(vader$pos+vader$neg),
                      WordCt=wdct)
    simples<-apply(simples,2,function(x) as.numeric(x))
  simples[is.na(simples)]=0
  fs<-stats::predict(DICEM::polymodel,simples)
  return(fs)
}
