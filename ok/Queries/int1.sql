.mode columns
.headers on
.nullvalue NULL

---Indique o nome do melhor marcador do campeonato, qual sua equipa e o total de golos marcados.

SELECT nomeJogador, nomeEquipa, totalGolos
FROM Jogador
ORDER BY totalGolos DESC
LIMIT 1;
