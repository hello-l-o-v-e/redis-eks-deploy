FROM redis:7.0-alpine

# 设置工作目录
WORKDIR /app

# 复制自定义配置文件
COPY redis.conf /usr/local/etc/redis/redis.conf

# 暴露Redis端口
EXPOSE 6379

# 启动命令
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]