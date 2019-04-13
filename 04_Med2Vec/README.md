Med2Vec
=========================================

Med2Vec is a multi-layer representation learning tool for learning code representations and visit representations from EHR datasets.

[![Med2Vec Coordinate-wise Interpretation Demo](http://www.cc.gatech.edu/~echoi48/images/med2vec_interpret.png)](https://youtu.be/UR_f2rmMJkk?t=2m34s "Med2Vec Coordinate-wise Interpretation Demo - Click to Watch!")
Med2Vec embeddings not only help improve predictive performance of healthcare applications, but also enable the interpretation of the learned code representations in a coodinate-wise manner. You can see that these six coordinates (chosen by their strong correlation with patient severity level) of the code representation space demonstrate medically coherent groups of symptoms (diagnoses, medications, and procedures). 

#### Relevant Publications

Med2Vec implements an algorithm introduced in the following [paper](http://www.kdd.org/kdd2016/subtopic/view/multi-layer-representation-learning-for-medical-concepts):

    Multi-layer Representation Learning for Medical Concepts
	Edward Choi, Mohammad Taha Bahadori, Elizabeth Searles, Catherine Coffey, 
	Michael Thompson, James Bost, Javier Tejedor-Sojo, Jimeng Sun
	KDD 2016, pp.1495-1504

#### Running Med2Vec

**STEP 1: Installation**  

1. Install [python](https://www.python.org/), [Theano](http://deeplearning.net/software/theano/index.html). We use Python 2.7, Theano 0.7. Theano can be easily installed in Ubuntu as suggested [here](http://deeplearning.net/software/theano/install_ubuntu.html#install-ubuntu)

2. If you plan to use GPU computation, install [CUDA](https://developer.nvidia.com/cuda-downloads)

3. Download/clone the Med2Vec code  

**STEP 2: Fast way to test Med2Vec with MIMIC-III**

This step describes how to run, with minimum number of steps, Med2Vec using MIMIC-III. 

0. You will first need to request access for [MIMIC-III](https://mimic.physionet.org/gettingstarted/access/), a publicly avaiable electronic health records collected from ICU patients over 11 years. 

1. You can use "process_mimic.py" to process MIMIC-III dataset and generate a suitable training dataset for Med2Vec.
Place the script to the same location where the MIMIC-III CSV files are located, and run the script. 
The execution command is `python process_mimic.py ADMISSIONS.csv DIAGNOSES_ICD.csv <output file>`.
Instructions are described inside the script. 

2. Run Med2Vec using the ".seqs" file generated by process_mimic.py, using the following command.
`python med2vec.py <seqs file> 4894 <output path>`
where 4894 is the number of unique ICD9 diagnosis codes in the dataset.
As described in the paper, however, it is a good idea to use the grouped codes for training the Softmax component of Med2Vec. Therefore we recommend using the following command instead.
`python med2vec.py <seqs file> 4894 <output path> --label_file <3digitICD9.seqs file> --n_output_codes 942`
where 942 is the number of unique 3-digit ICD9 diagnosis codes in the dataset.
You can also use ".3digitICD9.seqs" to begin with, if you interested in learning the representation of 3-digit ICD9 codes only, using the following command.
`python med2vec.py <3digitICD9.seqs file> 942 <output path>`

3. As suggested in STEP 4, you might want to adjust the hyper-parameters. 
I recommend decreasing the `--batch_size` to 100 or so, since the default value 1,000 is too big considering the small number of patients in MIMIC-III datasets. 
There are only 7,500 patients who made more than a single visit, and most of them have only two visits.

**STEP 3: Preparing training data**  

1. Med2Vec training data need to be a Python Pickled list of list of medical codes (e.g. diagnosis codes, medication codes, or procedure codes). 
First, medical codes need to be converted to an integer. Then a single visit can be converted as a list of integers. 
For example, [5,8,15] means the patient was assigned with code 5, 8, and 15 at a certain visit. 
If a patient made two visits [1,2,3] and [4,5,6,7], it can be converted to a list of list [[1,2,3], [4,5,6,7]]. 
If there are multiple patients, each patient must be delimited by a list [-1]. 
For example, [[1,2,3], [4,5,6,7], [-1], [2,4], [8,3,1], [3]] means there are two patients where the first patient made two visits and the second patient made three visits. 
This list of list needs to be pickled using cPickle. We will refer to this file as the "visit file".

2. The total number of unique medical codes is required to run Med2Vec. 
For example, if the dataset is using 14,000 diagnosis codes and 11,000 procedure codes, the total number is 25,000. 
Note that using a huge number of codes could lead to memory problems, depending on your RAM/VRAM (thanks for the tip [tRosenflanz](https://github.com/tRosenflanz))

3. For a faster training, you can provide an additional dataset, which is simply the same dataset in step 1, but with grouped medical codes. 
For example, ICD9 diagnosis codes can be grouped into 283 categories by using [CCS](https://www.hcup-us.ahrq.gov/toolssoftware/ccs/ccs.jsp) groupers. 
You will still be able to learn the code representations for the original un-grouped codes. 
The grouped dataset is used only for speeding up the training speed. (Refer to section 4.4 of the paper) 
The grouped dataset should be prepared in the same way as the dataset in step 1. We will refer to this grouped dataset as the "label file".

4. Same as step 2, you will need to remember the total number of unique grouped codes if you plan to use this grouped dataset.

5. If you wish to use patient demographic information (e.g. age, weight, gender) you need to create a demographics vector for each visit the patient made. 
For example, if you are using age (real-valued) and ethnicity(categorical, assume 6 categories), you can create a vector such as [45.0, 0, 0, 0, 0, 1, 0]. 
Similar to the [-1] vector in step 1, each patient is delimited with an all-zero vector. 
Therefore the demographic information will be a pickled matrix where column size is the size of the demographics vector and row size is the number of total visits of all patients plus the delimiters. 
We will refer to this file as the "demo file".

6. Similar to step 2, you will need to remeber the size of the demographics vector if you plan to use the demo file. 
In the example of step 5, the size of the demographics vector is 7.

**STEP 4: Running Med2Vec**  

1. The minimum input you need to run Med2Vec is the visit file, the number of unique medical codes and the output path
`python med2vec <path/to/visit_file> <the number of unique medical codes> <path/to/output>`  

2. Specifying `--verbose` option will print training process after each 10 mini-batches.

3. Additional options can be specified such as the size of the code representation, the size of the visit representation and the number of epochs. Detailed information can be accessed by `python med2vec --help`

**STEP 5: Looking at your results**  

Med2Vec produces a model file after each epoch. The model file is generated by [numpy.savez_compressed](http://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.savez_compressed.html).

The 2D scatterplot of the learned code representations would look similar to [this](http://mp2893.com/scatterplot/nnsg_h200e49_category10.html).
(This is the scatterplot of the code representations trained with Non-negative Skip-gram, which is essentially Med2Vec minus the visit-level training)