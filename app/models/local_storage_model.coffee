Model = require('./model')

# Base model that utilizes local storage instead of mongo
class LocalStorageModel extends Model

    localStorage: new Backbone.LocalStorage('Nutrition')


module.exports = LocalStorageModel
