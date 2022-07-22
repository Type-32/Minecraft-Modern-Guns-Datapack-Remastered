scoreboard players set @a tempHighScore 0
execute as @a run scoreboard players operation @s tempHighScore = @s playerkills
scoreboard players set #highestScore arcadeRule 0
scoreboard players operation #highestScore arcadeRule > @a tempHighScore
scoreboard players operation @a tempHighScore -= #highestScore arcadeRule
scoreboard players add @a[scores={tempHighScore=0..}] a_stats.totalWonMatches 1
scoreboard players add @a[scores={tempHighScore=0..}] a_stats.matchWinStreak 1
scoreboard players set @a[scores={tempHighScore=..-1}] a_stats.matchWinStreak 0
