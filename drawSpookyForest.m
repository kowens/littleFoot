function [imageHeight,imageWidth] = drawBackground (imageName)

 % remove all figures
   clf;

 %create a figure
  figure(1);

 % read image
  image = imread(imageName);
  [imageHeight,imageWidth]= size(image);

  % display image
  imshow(imageName);


endfunction
