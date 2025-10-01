class MlxManager < Formula
  desc "Ollama-inspired MLX model manager with CLI and OpenAI-compatible API"
  homepage "https://github.com/yourusername/mlx-manager"
  url "https://github.com/yourusername/mlx-manager/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  def install
    system "python3.11", "-m", "pip", "install", ".", *std_pip_args
  end

  test do
    assert_match "MLX Model Manager CLI", shell_output("#{bin}/mlx-manager --help")
  end
end
