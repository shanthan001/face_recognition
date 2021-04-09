MY_image = imread('photo.jpg');
[width,height] = size(MY_image);
 if width>320
     MY_image = imresize(MY_image, [320 NaN]);
 end
  faceDetector = vision.CascadeObjectDetector();
  location_of_the_face = step(faceDetector,MY_image);