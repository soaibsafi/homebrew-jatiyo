cask "macos-jatiyo" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/soaibsafi/jatiyo-keylayout/archive/refs/tags/v#{version}.tar.gz"
  name "Jatiyo Bengali Keyboard"
  desc "Open-source Bengali keyboard layout (BDS 1520:2018)"
  homepage "https://github.com/soaibsafi/jatiyo-keylayout"

  # GitHub tarballs extract to a folder named: repo-name-version
  keyboard_layout "jatiyo-keylayout-#{version}/macos-native/jatiyo.keylayout"
  keyboard_layout "jatiyo-keylayout-#{version}/macos-native/jatiyo.icns"

  uninstall delete: [
    "/Library/Keyboard Layouts/jatiyo.keylayout",
    "/Library/Keyboard Layouts/jatiyo.icns",
  ]

  caveats do
    reboot
    <<~EOS
      To enable the layout:
      1. Open System Settings → Keyboard → Input Sources.
      2. Click the + button.
      3. Select Other (or Bengali) and add 'বাংলা (Jatiyo)'.
    EOS
  end
end