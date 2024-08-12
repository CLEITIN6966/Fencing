-- Script para carregar dois scripts de URLs

-- Função para executar o primeiro script
local function loadFirstScript()
    local url1 = "https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source"
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url1))()
    end)
    if not success then
        warn("Erro ao carregar o primeiro script: " .. result)
    end
end

-- Função para executar o segundo script
local function loadSecondScript()
    local url2 = "https://rentry.co/n55gmtpi/raw"
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url2, true))()
    end)
    if not success then
        warn("Erro ao carregar o segundo script: " .. result)
    end
end

-- Executar ambos os scripts
loadFirstScript()
loadSecondScript()
