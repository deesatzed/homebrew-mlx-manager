class MlxManager < Formula
  desc "Ollama-inspired MLX model manager with CLI and OpenAI-compatible API"
  homepage "https://github.com/deesatzed/mlx-manager"
  url "https://github.com/deesatzed/mlx-manager/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "476bd36d5a68fff144e1a3e057b225541be702c1b7f6795f1a5c1f1530589dbe"
  license "MIT"

  depends_on "python@3.11"

  def install
    system "python3.11", "-m", "pip", "install", ".", *std_pip_args
  end

  test do
    assert_match "MLX Model Manager CLI", shell_output("#{bin}/mlx-manager --help")
  end
end
