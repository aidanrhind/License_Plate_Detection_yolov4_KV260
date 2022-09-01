vai_q_tensorflow quantize --input_frozen_graph ../tf_model/tf_model.pb \
			  --input_fn yolov4_graph_input_keras_fn.calib_input \
			  --output_dir ../yolov4_quantized \
	          --input_nodes image_input \
			  --output_nodes conv2d_93/BiasAdd,conv2d_101/BiasAdd,conv2d_109/BiasAdd \
			  --input_shapes ?,512,512,3 \
			  --gpu 0 \
			  --calib_iter 100 \
