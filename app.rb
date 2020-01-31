require 'bundler'
Bundler.require

# lignes qui appellent les fichiers dans le dossier lib
$:.unshift File.expand_path('./../lib', __FILE__)

require 'player'
require 'game'
require 'board'
require 'boardcase'
require 'show'
require 'application'

Application.new.perform