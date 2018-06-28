#‘utf-8’ codec can’t decode byte 0xff in position 0: invalid start byte
image_raw_data_jpg = tf.gfile.FastGFile('../test_images/test_1.jpg', 'r').read()
image_raw_data_jpg = tf.gfile.FastGFile('../test_images/test_1.jpg', 'rb').read()
