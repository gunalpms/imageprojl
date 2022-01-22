#use imshow(image_name) in order to see the images if you're running from this file

using Images, ImageView, ImageFiltering

misty = load("misty.jpg")
#= You can find misty.jpg in the resources folder, 
make sure to put it in the same directory you run the code =#

cropped_misty = misty[500:800, 500:800] # we can crop the image by specifying a range of indices

reduced_misty = misty[1:5:end, 1:5:end] # this reduces the image size by only taking every 5th pixel. 

red_square = zeros(RGB, 50, 50) #this creates a black 50x50 image
red_square[1:50, 1:50] .= RGB(1.0, 0.0, 0.0) #this makes every pixel value red since 1, 0, 0 is red in RGB

#similarly, we can modify the pixels of misty
squaerd_misty = misty[50:100, 50:100] .= RGB(0.0, 0.5, 0.8)
imshow(misty) #we need this because for some reason jupyter only displays the modified pixels (disregard the output below)

invert(color::AbstractRGB) = RGB(1-color.r, 1-color.g, 1-color.b) 
# this function inverts r, g, b values of any image it is passed
inverted_misty = invert.(misty)

gray_misty = Gray.(misty)
#we can also convert misty to grayscale like this

#this was i hope a basic introduction to image modification in julia. 
#please check other notebooks for more cool examples!