# Machine Learning Basecamp
This project seeks to streamline the process of installing and experimenting with the current crop of machine learning frameworks/toolkits, namely

* [TensorFlow](https://www.tensorflow.org/)
* [Spark](http://spark.apache.org/)
* [Torch](http://torch.ch/)
* [Theano](http://deeplearning.net/software/theano/)
* [Keras](https://keras.io/)
* [scikit-learn](http://scikit-learn.org/stable/)

The project runs on a [Vagrant](https://www.vagrantup.com/) box and uses [Anaconda](http://conda.pydata.org/miniconda.html) (actually miniconda) to manage the various Python libraries. The notebooks are served from the VM by [Jupyter](http://jupyter.org/).

It is very much a work-in-progress. I am currently making my way through Kevin Murphy's [Machine Learning: A Probabilistic Perspective](https://www.amazon.co.uk/Machine-Learning-Probabilistic-Perspective-Computation/dp/0262018020/ref=sr_1_3?ie=UTF8&qid=1476201367&sr=8-3&keywords=machine+learning). My plan is to create a corresponding notebook for each thematic area covered therein e.g.

* Bayesian models
* Regression
* Kernels
* Markov models
* State space models
* Clustering
* Deep learning


## Installation
```
$ git clone git@github.com:philipobrien/machine-learning-basecamp.git
$ cd machine-learning-basecamp
$ vagrant up
```

Once the machine is ready (it can take quite a while)
```
$ vagrant ssh
$ cd /vagrant
$ make basecamp
$ source activate basecamp
$ cd /vagrant/notebooks
$ jupyter notebook --ip=0.0.0.0 --no-browser
```

In your browser navigate to `localhost:8888` and have fun!