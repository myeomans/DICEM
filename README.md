Beta version of the DICE-M natural language processing model. To install, run the following in R:

> devtools::install_github("https://github.com/myeomans/DICEM")

To analyse your text, use the main function like so:

> DICE(data$text)

The best model of intensity includes politeness features, which require SpaCy to be installed on your computer in advance. To access this model, try:

> DICE(data$text, parser="spacy")


