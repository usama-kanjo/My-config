# YOUTUBE İNDİRME
function youdown
    set -l filename %(title)s--[%(id)s]--[720p].%(ext)s
    echo "🎬 720p indiriliyor: $argv"
    
    yt-dlp -f "bv[height<=720]+ba/b" \
        --verbose \
        --no-restrict-filenames \
        --merge-output-format mp4 \
        -o "$HOME/Downloads/Youtube/youtube_downloader/$(date +%Y-%m-%d)/$filename" \
        $argv
    
    echo "✅ İndirme tamamlandı!"
end

function youdown480
    set -l filename %(title)s--[%(id)s]--[480p].%(ext)s
    echo "🎬 480p indiriliyor: $argv"
    
    yt-dlp -f "bv[height<=480]+ba/b" \
        --verbose \
        --no-restrict-filenames \
        --merge-output-format mp4 \
        -o "$HOME/Downloads/Youtube/youtube_downloader/$(date +%Y-%m-%d)/$filename" \
        $argv
end


