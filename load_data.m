function [image_data] = load_data()

filenames = dir(['.' filesep 'data' filesep '*.fig']);

    for x = 1:length(filenames)

        figure = hgload(['.' filesep 'data' filesep filenames(x).name]);
        children = get(figure,'Children');
        l=get(children,'Children');
        image_data{x} = l{2}.CData;
        close all

    end

end

