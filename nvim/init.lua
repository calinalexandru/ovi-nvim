require 'base';
require 'highlights';
require 'plugins.index';
require 'functions';
require 'maps';

if vim.g.vscode then
    require 'vscode.maps';
end
