# 使用官方穩定的 LiteLLM 映像檔
FROM ghcr.io/berriai/litellm:main-stable

# 將您的設定檔複製到容器內的 /app 目錄
COPY config.yaml /app/config.yaml

# 暴露 LiteLLM 預設的 4000 埠 (或是您在 Zeabur 設定的 Port)
EXPOSE 4000

# 啟動指令，明確指定讀取 config.yaml
CMD ["--config", "/app/config.yaml", "--port", "4000"]