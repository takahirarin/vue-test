# ベースとなるイメージを指定（Node.jsを使用）
FROM node:14

# コンテナ内の作業ディレクトリを設定
WORKDIR /app

# ホストのpackage.jsonとpackage-lock.jsonをコンテナ内の作業ディレクトリにコピー
COPY package*.json ./

# npm installコマンドを実行して依存パッケージをインストール
RUN npm install

# ホストのソースコードをコンテナ内の作業ディレクトリにコピー
COPY . .
RUN pwd

# アプリをビルド
RUN npm run build

# アプリを起動
CMD ["npm", "run", "serve"]
