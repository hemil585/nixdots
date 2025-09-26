{...}:{
  programs.btop = {
      enable = true;
      settings = {
        color_theme = "custom";
        theme_background = false;
      };
      themes = {
        custom = ''
        theme[main_bg]="#2b3339"
        theme[main_fg]="#d3c6aa"
        theme[title]="#d3c6aa"
        theme[hi_fg]="#e67e80"
        theme[selected_bg]="#4b565c"
        theme[main_bg]="#262427"
        theme[main_fg]="#fcfcfc"
        theme[title]="#fcfcfc"
        theme[hi_fg]="#ff8787"
        theme[selected_bg]="#464447"
        theme[selected_fg]="#fcfcfc"
        theme[inactive_fg]="#a5a5a5"
        theme[graph_text]="#fcfcfc"
        theme[meter_bg]="#c6e472"
        theme[proc_misc]="#ff8787"
        theme[cpu_box]="#ffd271"
        theme[mem_box]="#c6e472"
        theme[net_box]="#baebf6"
        theme[proc_box]="#fcfcfc"
        theme[div_line]="#fcfcfa"
        theme[temp_start]="#c6e472"
        theme[temp_mid]="#ffd271"
        theme[temp_end]="#ff8787"
        theme[cpu_start]="#c6e472"
        theme[cpu_mid]="#ffd271"
        theme[cpu_end]="#ff8787"
        theme[free_start]="#c6e472"
        theme[free_mid]="#ffd271"
        theme[free_end]="#ff8787"
        theme[cached_start]="#c6e472"
        theme[cached_mid]="#ffd271"
        theme[cached_end]="#ff8787"
        theme[available_start]="#c6e472"
        theme[available_mid]="#ffd271"
        theme[available_end]="#ff8787"
        theme[used_start]="#c6e472"
        theme[used_mid]="#ffd271"
        theme[used_end]="#ff8787"
        theme[download_start]="#c6e472"
        theme[download_mid]="#ffd271"
        theme[download_end]="#ff8787"
        theme[upload_start]="#c6e472"
        theme[upload_mid]="#ffd271"
        theme[upload_end]="#ff8787"
        theme[process_start]="#c6e472"
        theme[process_mid]="#ffd271"
        theme[process_end]="#ff8787"
        '';
      };
  };
}