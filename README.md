Street Safety Score
===================

It tells you the score of the street on the scale of 10 (1-10). Let's say if you are walking down the street it will tell you how safe the street is.

## Usage Summary

This information can be used by researchers, economists and companies like Google or Uber. Let's say if you are planning on taking a house or something to live there. You may wanna check the score of the nearby streets.

## How It Works


Functions used to extract the features:
```
extractHOGFeatures(img)
extractLBPFeature(img)
LMGist(img)
```

### Algorithms and Data

We have used approximately 200-250 images to train our algorithm. We have used HOG, LBP, Gist features to train the algorithm.

We tested different regression algorithms, like svm(regression model), Linear Regression etc. and found SVM(Regression Model) most promising, accurate, reliable and least time taking.

Linear Regression: ```fitlm(train_set, y_train)```
SVM(Regression Model): ```fitrsvm(train_set, y_train)```

## Want to contribute or need to see some improvements?
I would love that, please create an issue or send a PR.
