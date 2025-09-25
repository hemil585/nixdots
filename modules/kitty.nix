{...}:{
    programs.kitty = {
    enable = true;
    shellIntegration = {
	    enableZshIntegration = true;
    }; 
   
    settings = {
      # colorscheme
      foreground             = "#f2f4f8";
      background             = "#161616";
      selection_foreground   = "#f2f4f8";
      selection_background   = "#2a2a2a";

      cursor                 = "#f2f4f8";
      cursor_text_color      = "#161616";

      url_color              = "#25be6a";

      active_border_color    = "#78a9ff";
      inactive_border_color  = "#535353";
      bell_border_color      = "#3ddbd9";

      active_tab_foreground  = "#0c0c0c";
      active_tab_background  = "#78a9ff";
      inactive_tab_foreground = "#6e6f70";
      inactive_tab_background = "#2a2a2a";

      color0  = "#282828";
      color8  = "#484848";

      color1  = "#ee5396";
      color9  = "#f16da6";

      color2  = "#25be6a";
      color10 = "#46c880";

      color3  = "#ebcb8b";
      color11 = "#f0d399";

      color4  = "#78a9ff";
      color12 = "#8cb6ff";

      color5  = "#be95ff";
      color13 = "#c8a5ff";

      color6  = "#33b1ff";
      color14 = "#52bdff";

      color7  = "#dfdfe0";
      color15 = "#e4e4e5";

      color16 = "#3ddbd9";
      color17 = "#ff7eb6";
      
      font_family = ".";
      font_size = "13.0";
      cursor_shape = "beam";

      background_opacity = "0.95";
      background_blur = "10";

      window_padding_width = "10";
      window_padding_height = "10";

      enable_audio_bell = "no";
      # draw_minimal_borders = "no";
      hide_window_decorations = "yes";
    };
  };
}
