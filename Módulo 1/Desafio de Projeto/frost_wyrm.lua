#!/bin/lua

--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habilidades
    Gelo Supremo
    Voo Ártico

===================================================
|
| FROST WYRM
| Um dragão ancestral que domina os ventos gelados.
|
| Som: Rooooarrrr
|
| Atributos:
|   Ataque: #######...
|   Defesa: #####.....
|   ...
|
===================================================

]]

-- Criatura
local monsterName = "FROST WYRM"
local description = "Um dragão ancestral que domina os ventos gelados."
local emoji = "❄️"
local sound = "Rooooarrrr"
local favoriteTime = "Inverno"
local item = "Cristal de Gelo"

-- Atributos
local attackAttribute = 7
local defenseAttribute = 5
local lifeAttribute = 9
local speedAttribute = 4
local inteligenceAttribute = 6

-- Habilidades
local abilities = { "Gelo Supremo", "Voo Ártico" }

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

-- Cartão
print("===================================================")
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

print("| Habilidades:")
for _, ability in ipairs(abilities) do
    print("|    - " .. ability)
end

print("| ")
print("===================================================")

