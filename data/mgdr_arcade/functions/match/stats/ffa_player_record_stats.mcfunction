scoreboard players add @s a_stats.totalWonMatches 1
scoreboard players add @s a_stats.matchWinStreak 1
team leave @s
scoreboard players set @a[team=ffa_player] a_stats.matchWinStreak 0
