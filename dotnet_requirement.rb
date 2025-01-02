class DotnetRequirement < Requirement
    fatal true

    satisfy(:build_env => false) do 
      which("dotnet")
    end

    def message; <<~EOS
      dotnet sdk is required; install it via one of:
        brew install dotnet-sdk --cask
      EOS
    end
  end
