# YOUTUBE İNDİRME - 720p
youdown() {
    local filename="%(title)s--[%(id)s]--[720p].%(ext)s"
    echo "🎬 720p indiriliyor: $*"
    
    yt-dlp -f "bv[height<=720]+ba/b" \
        --verbose \
        --no-restrict-filenames \
        --merge-output-format mp4 \
        -o "$HOME/Downloads/youtube_downloader/$(date +%Y-%m-%d)/$filename" \
        "$@"
    
    echo "✅ İndirme tamamlandı!"
}

# YOUTUBE İNDİRME - 480p
youdown480() {
    local filename="%(title)s--[%(id)s]--[480p].%(ext)s"
    echo "🎬 480p indiriliyor: $*"
    
    yt-dlp -f "bv[height<=480]+ba/b" \
        --verbose \
        --no-restrict-filenames \
        --merge-output-format mp4 \
        -o "$HOME/Downloads/Youtube/youtube_downloader/$(date +%Y-%m-%d)/$filename" \
        "$@"
}