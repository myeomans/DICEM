Beta version of the DICE NLP model. 

To analyse your text, use the main function like so:

DICE(data$text)

The best model of intensity includes politeness features, which require SpaCy to be installed on your computer in advance. To access this model, try:

DICE(data$text, parser="SpaCy")


