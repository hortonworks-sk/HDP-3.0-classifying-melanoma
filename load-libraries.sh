!pip2 install tensorflow
!pip2 install keras
!pip2 install sklearn
!pip install scipy --upgrade


bla = $CDSW_ENGINE_ID 


!.local/bin/tensorboard --logdir /home/cdsw/demo/tensorboard/tf_files/training_summaries --port  8081 --host localhost
