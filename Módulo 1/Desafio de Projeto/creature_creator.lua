#!/bin/lua

--[[ 
Versão Interativa: Criador de Criaturas!
--]]

-- Função que gera uma barra de progresso textual
local function getProgressBar(attribute)
    local max = 10

    local bar = ""
    for i = 1, max do
        if i <= attribute then
            bar = bar .. "⬛"
        else
            bar = bar .. "⬜"
        end
    end
    return bar
end

-- Função auxiliar para entrada de número com validação
local function readNumber(prompt)
    io.write(prompt)
    local num = tonumber(io.read())
    if num == nil or num < 0 then
        print("Por favor, insira um número válido (>= 0).")
        return readNumber(prompt)
    end
    if num > 10 then
        print("O valor máximo permitido é 10.")
        return readNumber(prompt)
    end
    return num
end

-- Entrada de dados
io.write("Digite o nome da criatura: ")
local monsterName = io.read()

io.write("Descreva a criatura: ")
local description = io.read()

io.write("Digite um emoji para a criatura: ")
local emoji = io.read()

io.write("Digite o som que ela faz: ")
local sound = io.read()

io.write("Qual o horário favorito dela? ")
local favoriteTime = io.read()

io.write("Qual o item favorito dela? ")
local item = io.read()

-- Atributos
print("\nAgora, defina os atributos de 0 a 10:")

local attackAttribute = readNumber("Ataque: ")
local defenseAttribute = readNumber("Defesa: ")
local lifeAttribute = readNumber("Vida: ")
local speedAttribute = readNumber("Velocidade: ")
local inteligenceAttribute = readNumber("Inteligência: ")

-- Habilidades
local abilities = {}
print("\nDigite até 3 habilidades (ou pressione Enter para pular):")
for i = 1, 3 do
    io.write("Habilidade " .. i .. ": ")
    local ability = io.read()
    if ability == "" then
        break
    end
    table.insert(abilities, ability)
end

-- Cartão
print("\n===================================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favoriteTime)
print("| ")

print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(inteligenceAttribute))
print("| ")

if #abilities > 0 then
    print("| Habilidades:")
    for _, ability in ipairs(abilities) do
        print("|    - " .. ability)
    end
    print("| ")
end

print("===================================================")

