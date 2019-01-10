set -e

name=data-mining
conda create -n $name python=3.7
source activate $name
conda install -y pandas tqdm numpy ipykernel
conda install -y scikit-learn tensorflow=1.7.0 keras=2.2.4
