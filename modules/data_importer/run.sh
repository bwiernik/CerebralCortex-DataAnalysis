#!/usr/bin/env bash

CC_CONFIG_PATH='/cerebralcortex/code/config/cc_starwars_configuration.yml'

#DATA_DIR='/cerebralcortex/code/qualtrics_data/mPerf_data_20180505/Daily_Surveys'
DATA_DIR='/cerebralcortex/code/qualtrics_data/20180606'
CONTEXT_DATA_DIR='/cerebralcortex/code/qualtrics_data/mPerf_data_20180505/Context'
IGTB_DATA_DIR='/cerebralcortex/code/qualtrics_data/mPerf_data_20180505/IGTB'

UUID_MAPPING='/cerebralcortex/code/anand/qualtrics/mperf_ids.txt'

export PYTHONPATH='/cerebralcortex/code/eggs/MD2K_Cerebral_Cortex-2.2.2-py3.6.egg':$PYTHONPATH


#python3.6 context_data_importer.py -c $CC_CONFIG_PATH -d $CONTEXT_DATA_DIR -u $UUID_MAPPING
python3.6 qualtrix_data_importer.py -c $CC_CONFIG_PATH -d $DATA_DIR -u $UUID_MAPPING

#echo 'Processing IGTB'
python3.6 igtb_qualtrix_data_importer.py -c $CC_CONFIG_PATH -d $IGTB_DATA_DIR -u $UUID_MAPPING
