const { environment } = require('@rails/webpacker')

const merge = require('webpack-merge')
const webpack = require('webpack')

// Add an additional plugin of your choosing : ProvidePlugin
environment.plugins.prepend('Provide', new webpack.ProvidePlugin({
    $: 'jquery',
    JQuery: 'jquery',
    Popper: ['popper.js', 'default'], // for Bootstrap 4
  })
)

const envConfig = module.exports = environment
    const aliasConfig = module.exports = {
    resolve: {
	alias: {
	    jquery: 'jquery/src/jquery'
	}
    }
}

module.exports = merge(envConfig.toWebpackConfig(), aliasConfig)