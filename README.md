# E-mail-Spam-Classifier

# SVM with Gaussian Kernel

This project uses support vector machines (SVMs) with a Gaussian kernel to build a spam classifier. 

ex6.m is the main file that contains the code to call the gaussian kernel function. 

To find non-linear decision boundaries in SVMs, we need to use a Gaussian kernel. You can think of the Gaussian kernel as a similarity function that measures the distance" between a pair of examples, (x(i); x(j)). The Gaussian kernel is also parameterized by a bandwidth parameter, sigma, which determines how fast the similarity metric decreases (to 0) as the examples are further apart. gaussianKernel.m computes the Gaussian kernel between two examples, (x(i); x(j)).

ex6data3.mat gives us the variables X, y, Xval, yval. We use these datasets to train the SVM classifier using parameters loaded from the dataset. Using the cross validation datasets, Xval and Yval, we determine the best bandwidth parameter, sigma, and the best regulaziation parameter, C to use. 


#  Spam classification

Preprocessing - in processEmail.m, we implement the following preprocessing steps,
• Lower-casing: The entire email is converted into lower case, so that captialization is ignored (e.g., IndIcaTE is treated the same as Indicate).
• Stripping HTML: All HTML tags are removed from the emails. Many emails often come with HTML formatting; we remove all the HTML tags, so that only the content remains.
• Normalizing URLs: All URLs are replaced with the text \httpaddr".
• Normalizing Email Addresses: All email addresses are replaced with the text \emailaddr".
• Normalizing Numbers: All numbers are replaced with the text "number".
• Normalizing Dollars: All dollar signs ($) are replaced with the text "dollar".
• Word Stemming: Words are reduced to their stemmed form. For example, "discount", "discounts", "discounted" and "discounting" are all replaced with "discount". Sometimes, the Stemmer actually strips off additional characters from the end, so "include", "includes", "included", and "including" are all replaced with "includ".
• Removal of non-words: Non-words and punctuation have been removed. All white spaces (tabs, newlines, spaces) have all been trimmed to a single space character.

Vocab.txt contains the vocabulary text file which we map to the preprocessed words.

ex6_spam.m runs the code on a sample email. The latter part trains the SVM classifier between spam (y = 1) and non-spam (y = 0) emails. spamTrain.mat contains 4000 training examples of spam and non-spam email, while spamTest.mat contains 1000 test examples.

emailFeatures.m performs feature extraction from the dataset and returns a feature vector.

The last part of ex6 spam.m runs the spam classifier over emailSample1.txt and spamSample1.txt and classifies it using the learned SVM. This file can be edited to add your own emails.



