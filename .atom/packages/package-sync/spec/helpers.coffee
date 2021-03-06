#
# Copyright (c) 2014 by Lifted Studios. All Rights Reserved.
#

CSON = require 'season'
fs = require 'fs'
os = require 'os'
path = require 'path'

# Public: Module of helper methods for tests.
class Helpers
  createPackages: (packages, packagesPath = @getPackagesPath()) ->
    CSON.writeFileSync(packagesPath, packages)

  deletePackages: (packagesPath = @getPackagesPath()) ->
    if fs.existsSync(packagesPath)
      fs.unlinkSync(packagesPath)

  getPackagesPath: ->
    path.join(os.tmpdir(), 'packages.cson')

module.exports = new Helpers
