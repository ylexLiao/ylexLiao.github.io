const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  // 只在这里设置publicPath，不要在configureWebpack中重复设置
  publicPath: './',
  outputDir: 'dist',
  
  // 移除了之前的configureWebpack.output.publicPath配置
  configureWebpack: {
    optimization: {
      splitChunks: {
        chunks: 'all'
      }
    }
  }
})