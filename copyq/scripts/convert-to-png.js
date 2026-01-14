// Convert images to PNG when copied
if (dataFormats().indexOf('image/png') === -1 && 
    dataFormats().indexOf('image/') !== -1) {
    var img = image(data());
    if (!img.isNull()) {
        var ba = toByteArray(img, 'PNG');
        setData('image/png', ba);
    }
}
