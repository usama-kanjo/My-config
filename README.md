# My Config

Kişisel dotfiles yapılandırmalarım — [chezmoi](https://chezmoi.io) ile yönetiliyor.

## İçindekiler

| Kategori | İçerik |
|----------|--------|
| 🖥️ **Shell** | zsh, p10k, zoxide, fzf |
| ✍️ **Editörler** | Neovim (LazyVim), Vim |
| 🖼️ **DE/WM** | Fastfetch, btop, kitty, tmux |
| 🔧 **Araçlar** | Git, gh, lazygit, ranger, htop |
| 🔐 **Güvenlik** | SSH yapılandırması, age şifreli dosyalar |
| 📦 **Servisler** | opencode, yarn, gh CLI |

## Başka Bir Debian Makinesine Kurulum

### 1. Gereksinimleri yükle

```bash
sudo apt install curl git age
```

### 2. Chezmoi'yi yükle

```bash
sh -c "$(curl -fsLS chezmoi.io/get)"
```

### 3. Age anahtarını kopyala

Şifrelenmiş dosyaları çözmek için age anahtarı gerekli. Mevcut makineden al:

```bash
# Mevcut makinede:
scp ~/.config/chezmoi/key.txt yeni-makine:~/.config/chezmoi/key.txt
```

### 4. Repoyu init et ve uygula

```bash
chezmoi init https://github.com/usama-kanjo/My-config.git
chezmoi diff       # değişiklikleri önizle
chezmoi apply      # uygula
```

### 5. (İsteğe bağlı) Güncellemeleri çek

```bash
chezmoi update     # git pull + chezmoi apply
```

## Notlar

- `.age` dosyaları `age` ile şifrelenmiştir. Çözüm için `key.txt` gerekir.
- `private_` önekli dosyalar hedefte `chmod 600` ile oluşturulur.
