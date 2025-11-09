# Neural Fake Factor Estimation Using Data-Based Inference

The main code is located in [SeeSawML](https://github.com/j-gavran/SeeSawML) and is included as a submodule. This repository contains configuration files specific to the neural fake factor estimation article.

## How to run 

All the settings are configured in the YAML files located in the `fakes/` directory. Follow these steps to run the code:

1. Setup the environment by editing and sourcing the `setup.sh` script:
   ```bash
   nano setup.sh  # Edit paths as needed
   source setup.sh
   ```
    This will configure paths for your analysis code, output directories, and virtual environment automatically. It will also install the project scripts required to run the code.

2. Prepare your data and configuration files in the `fakes/` directory. Modify the YAML files to suit your dataset and analysis needs.

3. Download ATLAS Open Data sample by running:
   ```bash
   download_open_data
   ```
    Note: this will take ~400 GB of disk space.

4. Convert ROOT ntuples to HDF5 format using:
   ```bash
   convert_open_data
   ```
    This will produce HDF5 training files in the specified data directory. You can plot the dataset with:
    ```bash
    plot_fakes
    ```

5. Perform feature scaling:
   ```bash
   scale_fakes
   ```

6. Train the neural network models:
   ```bash
    train_fakes
   ```
   This will train numerator, denominator and ratio models.

7. Evaluate the trained models and produce closure plots:
   ```bash
    fakes_closure
    plot_fakes_model_ff
    plot_fakes_density_ratio
    fakes_opendata_SR
   ```
