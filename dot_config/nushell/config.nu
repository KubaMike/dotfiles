$env.config = {
  show_banner: false
  buffer_editor: "vim"
  edit_mode: "vi"
  cursor_shape: {
    vi_insert: "blink_block"
    vi_normal: "block"
  }
  filesize: {
    unit: "binary"
  }
  auto_cd_implicit: true
}

$env.PATH = ( $env.PATH | append /opt/nvim-linux-x86_64/bin | append /home/kubamike/n/bin | append /home/kubamike/.cargo/bin | append /home/kubamike/.opencode/bin | append /home/kubamike/.local/bin | append /home/linuxbrew/.linuxbrew/bin)

alias la = ls -a
alias ll = ls -l
alias lll = ls -la
# alias python = python3

# Functions

def installedPackages () {
    apt list --installed |
    lines |
    parse "{package}/{repo_info},now {version} {arch} [{flags}]"
  }

use scripts/weather.nu
