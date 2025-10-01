class MlxManager < Formula
  desc "Ollama-inspired MLX model manager with CLI and OpenAI-compatible API"
  homepage "https://github.com/yourusername/mlx-manager"
  url "https://github.com/yourusername/mlx-manager/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_REAL_SHA256"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/mlx-manager --help")
    assert_match "MLX Model Manager CLI", output
  end
end
