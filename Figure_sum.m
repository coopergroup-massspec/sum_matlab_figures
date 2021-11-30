%% Place all *.fig files in a directory called "data" and CD in to the parent directory.
image_data = load_data();

new_image = zeros(size(image_data{1})); %create blank array to sum data in to

    for x = 1:length(image_data)

        new_image = new_image + image_data{x}; % Sum images

    end

imagesc(new_image);
axis equal; axis tight; % Fix default ugly axis.