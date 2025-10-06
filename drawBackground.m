function [imageHeight,imageWidth] = drawBackground (imageName)

 % remove all figures
  clf;

  % create a figure
  figure(1)

 % read image
  image = imread(imageName);
  [imageHeight,imageWidth]= size(image);

  % display image
  imshow(imageName);

  %make the image full window size
  set(gca, "position", [0 0 1 1]);  % make the axes fill the figure
  set(gcf, "units", "normalized", "outerposition", [0 0 1 1]);

  %start a keyboard listener
  set(gcf,'KeyPressFcn',  @(src,event)keyPress(src,event));

endfunction
