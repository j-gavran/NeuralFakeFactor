# Path to the analysis code (directory)
export ANALYSIS_ML_CODE_DIR="path/to/your/analysis" # Example: "/data0/jang/analysis/NeuralFakeFactor"
# Output directory for ML analysis
export ANALYSIS_ML_OUTPUT_DIR="path/to/your/output" # Example: "/data0/jang/analysis"

# Internal directories for ML analysis
export ANALYSIS_ML_CONFIG_DIR="${ANALYSIS_ML_CODE_DIR}/ml_config"
export ANALYSIS_ML_DATA_DIR="${ANALYSIS_ML_OUTPUT_DIR}/ml_data"
export ANALYSIS_ML_RESULTS_DIR="${ANALYSIS_ML_OUTPUT_DIR}/ml_results"
export ANALYSIS_ML_MODELS_DIR="${ANALYSIS_ML_RESULTS_DIR}/models"
export ANALYSIS_ML_LOGS_DIR="${ANALYSIS_ML_RESULTS_DIR}/logs"

# If not set will use TNAnalysis venv, set to your own venv if needed
export ANALYSIS_ML_VENV_PATH="path/to/your/venv" # Example: "/data0/jang/analysis/seesawml_venv"

source "${ANALYSIS_ML_CODE_DIR}/modules/SeeSawML/seesaw/utils/setup/setup.sh"
