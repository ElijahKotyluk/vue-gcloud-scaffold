const path = require('path');
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: [
    './{project_name}/assets/js/main.js',
    './{project_name}/assets/styles/main.scss'
  ],
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'main.bundle.js'
  },
  devServer: {
    port: 8080,
    contentBase: path.join(__dirname, 'public'),
    disableHostCheck: true
  },
  module: {
    rules: [
      {
        test: /\.scss$/,
        loader: ExtractTextPlugin.extract(['css-loader', 'sass-loader'])
      },
      {
        test: /\.vue$/,
        loader: 'vue-loader',
        options: {
          loaders: {
            'scss': 'vue-style-loader!css-loader!sass-loader'
          }
        }
      }
    ]
  },
  resolve: {
    alias: {
      vue: 'vue/dist/vue.js',
      '@': path.resolve(__dirname, '{project_name}', 'assets')
    }
  },
  plugins: [
  	new ExtractTextPlugin({
      filename: 'main.bundle.css',
      allChunks: true
    }),
    new HtmlWebpackPlugin({
      template: 'template.html',
      inject: 'body'
    })
  ]
}
