#' UK to US conversion
#' @description background function to load.
#' @param text character Vector of strings to convert to US spelling.
#' @return character Vector of Americanized strings.
#' @keywords internal
usWords<-function(text){
  toks <- quanteda::tokens(text)
  tokUS<-quanteda::tokens_lookup(toks, DICEM::uk2us,
                                 exclusive = FALSE,capkeys = FALSE)
  sentUS<-unlist(lapply(tokUS,paste, collapse=" "),use.names = FALSE)
  return(sentUS)
}
