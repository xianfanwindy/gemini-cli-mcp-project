COMMIT="84967093b3105381f26e13eca4ab8af60e8f40db"
DOMAINS=(
  "https://lf-cdn.trae.com.cn/obj/trae-com-cn"
  "https://lf-cdn.trae.ai/obj/trae-ai-us"
)
PATHS=(
  "pkg/server/releases/stable/$COMMIT/linux"
  "pkg/server/releases/stable/$COMMIT/linux-debian10"
  "pkg/server/releases/stable/$COMMIT/linux-x64"
  "binaries/stable/$COMMIT"
)
FILES=(
  "Trae-linux-x64.tar.gz"
  "Trae-linux-x64.tar.xz"
  "Trae CN-linux-x64.tar.xz"
  "vscode-server-linux-x64.tar.gz"
  "server-linux-x64.tar.gz"
)

for d in "${DOMAINS[@]}"; do
  for p in "${PATHS[@]}"; do
    for f in "${FILES[@]}"; do
      URL="$d/$p/$f"
      # URL encode space for Trae CN
      URL="${URL// /%20}"
      echo "Testing $URL"
      curl -I -s -L "$URL" | grep -E "HTTP/|Content-Length" | head -n 2 &
    done
  done
done
wait
