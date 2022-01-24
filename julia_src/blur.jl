using Images, ImageView, ImageFiltering

misty = load("misty.jpg") 
#= You can find misty.jpg in the resources folder, 
make sure to put it in the same directory you run the code =#

# let's blur misty
# calling reflect will convert correlation to a convolution
kernel = reflect(Kernel.gaussian(6)) 
# a kernel is a 2d matrix where the sum of the values are (usually) 1
blurred_misty = imfilter(misty, kernel) 
imview(blurred_misty)
# imfilter function conlolves the kernel over the image 

# we can see that misty is now blurred
# what this does: it takes the values from the kernel and multiplies them by corresponding RGB values
# to modify the pixel. it takes the sum of the multiplied pixel values to replace the center pixel value with it

# what happens is that for every pixel p, it multiplies the RGB values of the center pixel by the center value from the kernel,
# multiplies the pixel one to the left by the value one left to the center in the kernel and so on
# essentially think of it as a grid marching on the image.
# different kernels give out different results

# check out this awesome video if you want to learn more about how this works
# https://www.youtube.com/watch?v=8rrHTtUzyZA&t=960s

# that's actually it for blurring. very simple to implement, hard to understand, haha
