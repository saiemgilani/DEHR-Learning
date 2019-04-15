import matplotlib.pyplot as plt
# TODO: You can use other packages if you want, e.g., Numpy, Scikit-learn, etc.
import numpy as np
import pandas as pd
import itertools
from sklearn.metrics import confusion_matrix
import os


def plot_learning_curves(train_losses, valid_losses, train_accuracies, valid_accuracies,path):
    # TODO: Make plots for loss curves and accuracy curves.
    # TODO: You do not have to return the plots.
    # TODO: You can save plots as files by codes here or an interactive way according to your preference.
    df=pd.DataFrame({'Epochs': range(0,len(train_losses)), 'Training Loss': train_losses, 'Validation Loss': valid_losses})
    df2=pd.DataFrame({'Epochs': range(0,len(train_accuracies)), 'Training Accuracy': train_accuracies, 
                      'Validation Accuracy': valid_accuracies})
    # multiple line plot
    f = plt.figure(1)    

    plt.plot( 'Epochs', 'Training Loss', data=df, marker='', color='skyblue', linewidth=4)
    plt.plot( 'Epochs', 'Validation Loss', data=df, marker='', color='olive', linewidth=2)
    plt.legend()
    f.savefig(os.path.join(path,"Learning_Curve.png"))
    
    g = plt.figure(2)    

    plt.plot('Epochs', 'Training Accuracy', data = df2, marker = '',  color='blue', linewidth=4)
    plt.plot('Epochs', 'Validation Accuracy', data=df2, marker = '',  color='green', linewidth=2)
    plt.legend()
    g.savefig(os.path.join(path,"Accuracy_Curve.png"))


def plot_confusion_matrix(results, class_names,path):
    # TODO: Make a confusion matrix plot.
    # TODO: You do not have to return the plots.
    # TODO: You can save plots as files by codes here or an interactive way according to your preference.
    predicted = [i[0] for i in results]
    actual = [i[1] for i in results]

    conf_mat = confusion_matrix(predicted,actual)
    conf_mat = conf_mat.astype('float') / conf_mat.sum(axis=1)[:,np.newaxis]
    title = "Normalized confusion matrix"
    np.set_printoptions(precision=2)

    h = plt.figure(3)
    plt.imshow(conf_mat, interpolation='nearest', cmap=plt.cm.Blues)
    plt.title(title)
    plt.colorbar()
    tick_marks = np.arange(len(class_names))
    plt.xticks(tick_marks, class_names, rotation=45)
    plt.yticks(tick_marks, class_names)
    fmt = '.2f' 
    thresh = conf_mat.max() / 2.
    for i, j in itertools.product(range(conf_mat.shape[0]), range(conf_mat.shape[1])):
        plt.text(j, i, format(conf_mat[i, j], fmt),
            horizontalalignment="center",
            color="white" if conf_mat[i, j] > thresh else "black")
    plt.ylabel('Actual')
    plt.xlabel('Predicted')
    plt.subplots_adjust(bottom=0.4)

    h.savefig(os.path.join(path,"Confusion_Matrix.png"))
