-- Run ONCE as the Aiven admin (avnadmin), e.g. in IntelliJ's Database console on defaultdb.
-- Creates the limited login that the installers carry. It can read/write game data only:
-- no CREATE/DROP/ALTER, no other tables, no user management.
CREATE USER IF NOT EXISTS 'coderun_player'@'%' IDENTIFIED BY 'ksAJuLX7ahu6tHOfKVrP9NLIEqeZ';
GRANT SELECT, INSERT, UPDATE, DELETE ON `defaultdb`.`users` TO 'coderun_player'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON `defaultdb`.`trivia_questions` TO 'coderun_player'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON `defaultdb`.`player_progress` TO 'coderun_player'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON `defaultdb`.`player_skins` TO 'coderun_player'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON `defaultdb`.`match_results` TO 'coderun_player'@'%';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'coderun_player'@'%';
