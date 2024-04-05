
#' Pre-trained Intensity Detection Model (no politeness)
#'
#' This model was pre-trained on wikipedia editor discussions hand-labelled for conflict intensity.
#'
#' @format A pre-trained glmnet model
#' @source Yeomans et al. (2024). A Natural Language Processing Model for Conflict Expression in Conversation
#'
"intenseModel_basic"


#' Pre-trained Directness Detection Model (no politeness)
#'
#' This model was pre-trained on wikipedia editor discussions hand-labelled for conflict directness.
#'
#' @format A pre-trained glmnet model
#' @source Yeomans et al. (2024). A Natural Language Processing Model for Conflict Expression in Conversation
#'
"directModel_basic"


#' Pre-trained Intensity Detection Model
#'
#' This model was pre-trained on wikipedia editor discussions hand-labelled for conflict intensity.
#'
#' @format A pre-trained glmnet model
#' @source Yeomans et al. (2024). A Natural Language Processing Model for Conflict Expression in Conversation
#'
"intenseModel"


#' Pre-trained Directness Detection Model
#'
#' This model was pre-trained on wikipedia editor discussions hand-labelled for conflict directness.
#'
#' @format A pre-trained glmnet model
#' @source Yeomans et al. (2024). A Natural Language Processing Model for Conflict Expression in Conversation
#'
"directModel"


#' Pre-trained advice concreteness features
#'
#' For internal use only. This dataset demonstrates the ngram features that are used for the pre-trained models.
#'
#' @format A (truncated) matrix of ngram feature counts for alignment to the pre-trained glmnet models.
#' @source Yeomans et al., (2024). A Natural Language Processing Model for Conflict Expression in Conversation
#'
"diceNGrams"


#' Purchase offers for phone
#'
#' A dataset containing the purchase offer message and a
#' label indicating if the writer was assigned to be warm (1) or tough (0)
#' @format A data frame with 355 rows and 2 variables:
#' \describe{
#'   \item{message}{character of purchase offer message}
#'   \item{condition}{binary label indicating if message is warm or tough}
#' }
#' @source Jeong, M., Minson, J., Yeomans, M. & Gino, F. (2019).
#'
#' "Communicating Warmth in Distributed Negotiations is Surprisingly Ineffective."
#'
#' Study 1. \url{https://osf.io/t7sd6/}
"phone_offers"


#' UK to US Conversion dictionary
#'
#' For internal use only. This dataset contains a quanteda dictionary for converting UK words to US words. The models in this package were all trained on US English.
#'
#' @format A quanteda dictionary with named entries. Names are the US version, and entries are the UK version.
#' @source Borrowed from the quanteda.dictionaries package on github (from user kbenoit)
#'
"uk2us"
