{ ... }:

{
  environment.persistence."/persistent" = {
    directories = [
      "/etc/nixos"
      "/etc/NetworkManager/system-connections"
    ];
    files = [
      "/etc/machine-id"
      "/etc/ssh/ssh_host_rsa_key"
      "/etc/ssh/ssh_host_rsa_key.pub"
      "/etc/ssh/ssh_host_ed25519_key"
      "/etc/ssh/ssh_host_ed25519_key.pub"
    ];
  };

  my.user.persistent = {
    extraFiles = [
      ".background"
      ".config/fish/fish_variables"

      # Mumble files
      ".config/Mumble/Mumble.conf"
      ".local/share/Mumble/Mumble/mumble.sqlite"
    ];
    extraDirectories = [
      ".caffrc"
      ".config/autorandr"
      ".dotfiles"
      ".gnupg"
      ".local/share/TelegramDesktop/tdata"
      ".local/share/dino"
      ".local/share/direnv"
      ".local/share/emacs"
      ".local/share/fish"
      ".mozilla/firefox"
      ".msmtprc"
      ".password-store"
      ".ssh"
      "Downloads"
      "code"
      "documents"
      "org"

      # Evolution
      ".config/evolution"
      ".config/goa-1.0"
      ".local/share/evolution"
      ".local/share/keyrings"
    ];
  };
}
