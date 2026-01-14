// Add timestamp to copied text
var text = str(data());
if (text.length > 0) {
    var now = new Date();
    var timestamp = now.toLocaleString();
    var newText = text + '\n\n---\nCopied: ' + timestamp;
    setData('text/plain', newText);
}
