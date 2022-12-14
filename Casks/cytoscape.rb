cask "cytoscape" do
  version "3.9.1"
  # github.com/cytoscape/cytoscape/ was verified as official when first introduced to the cask
  url "https://github.com/cytoscape/cytoscape/releases/download/#{version}/Cytoscape_#{version.dots_to_underscores}_macos.dmg"
  appcast "https://github.com/cytoscape/cytoscape/releases.atom"
  name "Cytoscape"
  desc "Open-source platform for network analysis and visualization"
  homepage "https://cytoscape.org/"

  installer script: {
    executable: "Cytoscape Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall script: {
    executable: "#{appdir}/Cytoscape_v#{version}/Cytoscape Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  caveats do
    depends_on_java "11"
  end
end
