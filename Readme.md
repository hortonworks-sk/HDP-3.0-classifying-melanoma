<h3>HDP 3.0 Classifying Melanoma</h3>

<br><b>To Get the data:</b>

<br>&nbsp;&nbsp;&nbsp;&nbsp;1) Clone Repo <a href="https://github.com/vgupta-ai/ISIC-Dataset-Downloader">ISIC-Dataset-Downloader</a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;3) <code>python ISIC-Dataset-Downloader/downloadImageMetaData.py</code>
<br>&nbsp;&nbsp;&nbsp;&nbsp;this will download images into directories named after the data set id (e.g. 5627f5f69fc3c132be08d852)
<br>&nbsp;&nbsp;&nbsp;&nbsp;    /malignant
<br>&nbsp;&nbsp;&nbsp;&nbsp;    /benign
<br>&nbsp;&nbsp;&nbsp;&nbsp;3) <code>python ISIC-Dataset-Downloader/downloadImages.py</code>


<br><b>Copy the data to training and test folders:</b>

(Replace folder names 54b6e869bae4785ee2be8652, etc, with correct names is necessary)

<br>&nbsp;&nbsp;&nbsp;&nbsp;2) <code>cp -R ISIC-Dataset-Downloader/54b6e869bae4785ee2be8652/benign/. data/test/benign</code>
<br>&nbsp;&nbsp;&nbsp;&nbsp;3) <code>cp -R ISIC-Dataset-Downloader/54b6e869bae4785ee2be8652/malignant/. data/test/malignant</code>
<br>&nbsp;&nbsp;&nbsp;&nbsp;3) <code>cp -R ISIC-Dataset-Downloader/54ea816fbae47871b5e00c80/benign/. data/test/benign</code>
<br>&nbsp;&nbsp;&nbsp;&nbsp;3) <code>cp -R ISIC-Dataset-Downloader/54ea816fbae47871b5e00c80/malignant/. data/test/malignant</code>
<br>&nbsp;&nbsp;&nbsp;&nbsp;2) <code>cp -R ISIC-Dataset-Downloader/54b6e869bae4785ee2be8652/benign/. data/train/benign</code>
<br>&nbsp;&nbsp;&nbsp;&nbsp;3) <code>cp -R ISIC-Dataset-Downloader/54b6e869bae4785ee2be8652/malignant/. data/train/benign</code>
<br>&nbsp;&nbsp;&nbsp;&nbsp;3) <code>cp -R ISIC-Dataset-Downloader/54ea816fbae47871b5e00c80/benign/. data/train/malignant</code>
<br>&nbsp;&nbsp;&nbsp;&nbsp;3) <code>cp -R ISIC-Dataset-Downloader/54ea816fbae47871b5e00c80/malignant/. data/train/malignant</code>

<br><b>Build the CNN:</b>

<br>&nbsp;&nbsp;&nbsp;&nbsp; Train a fully connected neural network classifier
<br>&nbsp;&nbsp;&nbsp;&nbsp; 1) <code>python classifier.py</code>

<br>&nbsp;&nbsp;&nbsp;&nbsp; Re-training the stripped VGG16
<br>&nbsp;&nbsp;&nbsp;&nbsp; 1) <code>python tuner.py</code>


<br><b>References:</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&bull;&nbsp;<a href="https://blog.keras.io/building-powerful-image-classification-models-using-very-little-data.html">Transfer Learning</a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&bull;&nbsp;<a href="https://keras.io/">Keras Docs</a>

