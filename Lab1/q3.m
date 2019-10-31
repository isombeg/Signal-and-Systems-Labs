% Retrieve and format data
image = imread('ee3tp3picture2019.png');
image_of_doubles = double(image);

% Edit and fix picture
fixed_image = contrast_image(image_of_doubles, 6.0, -890);

% Plotting histogram of original image's pixel values
figure;
[n_elements, centers] = hist(image_of_doubles(:),20);
bar(centers, n_elements);
xlim([0 255]);
title('Guy-Jacques Isombe 400137394, Olayiwola Bakare 400130008');
xlabel('Pixel Value')
ylabel('Frequency');

% Plotting histogram of fixed image's pixel values
figure;
[n_elements, centers] = hist(fixed_image(:),20);
bar(centers, n_elements);
xlim([0 255]);
title('Guy-Jacques Isombe 400137394, Olayiwola Bakare 400130008');
xlabel('Pixel Value')
ylabel('Frequency');

% Display original image
figure;
imshow(uint8(image_of_doubles));

% Display fixed image
figure;
imshow(uint8(fixed_image));

% Save edited picture
imwrite(uint8(fixed_image), 'saved_image.png');