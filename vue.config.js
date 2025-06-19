// const { defineConfig } = require('@vue/cli-service')
// module.exports = defineConfig({
//   transpileDependencies: true,
//   publicPath: process.env.NODE_ENV === 'production' ? './' : '/',
//   outputDir: 'dist'
// })

const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  // 这里很重要：GitHub Pages 的路径配置
  publicPath: process.env.NODE_ENV === 'production' ? './' : '/',
  outputDir: 'dist',
  
  // 确保资源路径正确
  assetsDir: '',
  
  // 配置开发服务器
  devServer: {
    port: 8080,
    open: true
  }
})