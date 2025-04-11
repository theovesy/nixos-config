{pkgs, ...}:
{
  programs.nvf = {
    enable = true;
    settings.vim = {
        # Settings
        viAlias = true;
        vimAlias = true;
        filetree.nvimTree.setupOpts = {
          view.relativenumber = true;
        };
        options = {
          tabstop = 2;
          shiftwidth = 2;
          autoindent = true;
        };

        # Theme
        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
        };

        # Plugins
        statusline.lualine = {
          enable = true;
          theme = "catppuccin";
        };
        telescope.enable = true;
        binds.cheatsheet.enable = true;
        autocomplete.nvim-cmp.enable = true;
        autopairs.nvim-autopairs.enable = true;
        comments.comment-nvim.enable = true;
        filetree.neo-tree = {
          enable = true;
          setupOpts = {
            enable_cursor_hijack = true;
            enable_diagnostics = true;
            enable_git_status = true;
            enable_modified_markers = true;
            enable_opened_markers = true;
          };
        }; 
        git = {
          enable = true;
          gitsigns.enable = true;
          vim-fugitive.enable = true;
        };
        treesitter = {
          enable = true;
          fold = true;
          indent.enable = true;
          grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [qmljs cmake];
        };
        utility = {
          preview.markdownPreview.enable = true;
          diffview-nvim.enable = true;
        };
        notes.todo-comments.enable = true;
      # ui.noice.enable = true;

        
        # Languages
        languages = {
          enableLSP = true;
          enableTreesitter = true;

          nix.enable = true;
          rust.enable = true;
          clang.enable = true;
          assembly.enable = true;
          markdown.enable = true;
          python.enable = true;
          html.enable = true;
          zig.enable = true;
          bash.enable = true;
      };

      # Mappings
      comments.comment-nvim.mappings = {
        toggleCurrentBlock = "gbc";
        toggleCurrentLine = "gcc";
      };
    };
  };
}

