{ ... }:
{
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "custom";
      theme_background = false;
    };

    themes = {
      custom = ''
        # Main background
        theme[main_bg]="#282a36"

        # Main text color
        theme[main_fg]="#f8f8f2"

        # Title color
        theme[title]="#f8f8f2"

        # Highlight color
        theme[hi_fg]="#6272a4"

        # Selected process
        theme[selected_bg]="#ff79c6"
        theme[selected_fg]="#f8f8f2"

        # Inactive text
        theme[inactive_fg]="#44475a"

        # Graph text
        theme[graph_text]="#f8f8f2"

        # Meter background
        theme[meter_bg]="#44475a"

        # Process misc
        theme[proc_misc]="#bd93f9"

        # Box outlines
        theme[cpu_box]="#bd93f9"
        theme[mem_box]="#50fa7b"
        theme[net_box]="#ff5555"
        theme[proc_box]="#8be9fd"

        # Divider lines
        theme[div_line]="#44475a"

        # Temperature
        theme[temp_start]="#bd93f9"
        theme[temp_mid]="#ff79c6"
        theme[temp_end]="#ff33a8"

        # CPU
        theme[cpu_start]="#bd93f9"
        theme[cpu_mid]="#8be9fd"
        theme[cpu_end]="#50fa7b"

        # Free memory
        theme[free_start]="#ffa6d9"
        theme[free_mid]="#ff79c6"
        theme[free_end]="#ff33a8"

        # Cached memory
        theme[cached_start]="#b1f0fd"
        theme[cached_mid]="#8be9fd"
        theme[cached_end]="#26d7fd"

        # Available memory
        theme[available_start]="#ffd4a6"
        theme[available_mid]="#ffb86c"
        theme[available_end]="#ff9c33"

        # Used memory
        theme[used_start]="#96faaf"
        theme[used_mid]="#50fa7b"
        theme[used_end]="#0dfa49"

        # Network download
        theme[download_start]="#bd93f9"
        theme[download_mid]="#50fa7b"
        theme[download_end]="#8be9fd"

        # Network upload
        theme[upload_start]="#8c42ab"
        theme[upload_mid]="#ff79c6"
        theme[upload_end]="#ff33a8"

        # Process gradients
        theme[process_start]="#50fa7b"
        theme[process_mid]="#59b690"
        theme[process_end]="#6272a4"
      '';
    };
  };
}
