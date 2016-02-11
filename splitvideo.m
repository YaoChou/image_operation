readerobj = VideoReader('test_video1.mp4');
vidFrames = read(readerobj);
numFrames = get(readerobj, 'numberOfFrames')
for k = 1 : numFrames
mov(k).cdata = vidFrames(:,:,:,k);
mov(k).colormap = [];
imshow(mov(k).cdata);
end