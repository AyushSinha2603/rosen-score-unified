{ pkgs, lib, config, inputs, ... }:

{
  packages = [ pkgs.git ];

  languages.javascript.enable = true;
  languages.javascript.package = pkgs.nodejs-slim_24;
  languages.javascript.npm.enable = true;
  languages.javascript.pnpm.enable = true;
  languages.javascript.pnpm.install.enable = true;
  languages.javascript.corepack.enable = true;

  # process.managers.process-compose.tui.enable = false;

  processes.test = {
    exec = "vitest --watch";
  };

  processes.dev = {
    exec = "pnpm run dev";
  };
}
