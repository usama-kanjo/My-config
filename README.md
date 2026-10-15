# My Config

- [English](#english)
- [Türkçe](#türkçe)

## English

Personal dotfiles managed with [chezmoi](https://chezmoi.io).

### Contents

| Category | Contents |
|----------|----------|
| 🖥️ **Shell** | zsh, p10k, zoxide, fzf |
| ✍️ **Editors** | Neovim (LazyVim), Vim |
| 🖼️ **DE/WM** | Fastfetch, btop, kitty, tmux |
| 🔧 **Tools** | Git, gh, lazygit, ranger, htop |
| 🔐 **Security** | SSH configuration, age-encrypted files |
| 📦 **Services** | opencode, yarn, gh CLI |

### Setup on Another Debian Machine

#### 1. Install prerequisites

```bash
sudo apt install curl git age
```

#### 2. Install chezmoi

```bash
sh -c "$(curl -fsLS chezmoi.io/get)"
```

#### 3. Copy the age key

The age key is required to decrypt encrypted files. Copy it from your current machine:

```bash
# On your current machine:
scp ~/.config/chezmoi/key.txt new-machine:~/.config/chezmoi/key.txt
```

#### 4. Initialize and apply

```bash
chezmoi init https://github.com/usama-kanjo/My-config.git
chezmoi diff       # preview changes
chezmoi apply      # apply changes
```

#### 5. (Optional) Update

```bash
chezmoi update     # git pull + chezmoi apply
```

### Notes

- Files with `.age` extension are encrypted with `age`. The `key.txt` is required for decryption.
- Files with `private_` prefix are created with `chmod 600` on the target.

## Türkçe

Kişisel dotfiles yapılandırmalarım — [chezmoi](https://chezmoi.io) ile yönetiliyor.

### İçindekiler

| Kategori | İçerik |
|----------|--------|
| 🖥️ **Shell** | zsh, p10k, zoxide, fzf |
| ✍️ **Editörler** | Neovim (LazyVim), Vim |
| 🖼️ **DE/WM** | Fastfetch, btop, kitty, tmux |
| 🔧 **Araçlar** | Git, gh, lazygit, ranger, htop |
| 🔐 **Güvenlik** | SSH yapılandırması, age şifreli dosyalar |
| 📦 **Servisler** | opencode, yarn, gh CLI |

### Başka Bir Debian Makinesine Kurulum

#### 1. Gereksinimleri yükle

```bash
sudo apt install curl git age
```

#### 2. Chezmoi'yi yükle

```bash
sh -c "$(curl -fsLS chezmoi.io/get)"
```

#### 3. Age anahtarını kopyala

Şifrelenmiş dosyaları çözmek için age anahtarı gerekli. Mevcut makineden al:

```bash
# Mevcut makinede:
scp ~/.config/chezmoi/key.txt yeni-makine:~/.config/chezmoi/key.txt
```

#### 4. Repoyu init et ve uygula

```bash
chezmoi init https://github.com/usama-kanjo/My-config.git
chezmoi diff       # değişiklikleri önizle
chezmoi apply      # uygula
```

#### 5. (İsteğe bağlı) Güncellemeleri çek

```bash
chezmoi update     # git pull + chezmoi apply
```

### Notlar

- `.age` dosyaları `age` ile şifrelenmiştir. Çözüm için `key.txt` gerekir.
- `private_` önekli dosyalar hedefte `chmod 600` ile oluşturulur.
