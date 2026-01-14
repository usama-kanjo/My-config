// Auto-shorten URLs
var text = str(data());
if (text.match(/^https?:\/\//)) {
    // Remove tracking parameters
    text = text.replace(/(\?|&)(utm_[^=&\s]+=[^&\s]*)/g, '');
    text = text.replace(/(\?|&)(fbclid|gclid)=[^&\s]*/g, '');
    setData('text/plain', text);
}
