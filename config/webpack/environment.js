const { environment } = require('@rails/webpacker')
const giftrConfig = require('./giftrconfig')
const webpack = require('webpack')

// Set nested object prop using path notation
environment.config.set('resolve.extensions', ['.foo', '.bar'])
environment.config.set('output.filename', '[name].js')

// Merge custom config
environment.config.merge(giftrConfig)
environment.config.merge({ devtool: 'none' })

environment.plugins.prepend(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        jquery: 'jquery',
        foundation: 'foundation'
    })
)

module.exports = environment
