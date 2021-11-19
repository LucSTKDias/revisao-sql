drop user if exists mark;
drop user if exists mark@"localhost";
-- create user mark@"%" identified by "1234"; -- o % libera acesso de qualquer local
-- create user mark@"255.255.255.255" identified by "1234"; -- definindo acesso por endereço ip
-- create user mark@"localhost" identified by "1234"; -- a boa prática é definir por localhost
-- create user mark@"localhost" identified by "1234" password expire; /* o password expire faz com que quando o usuário logar, a  
--																     -- senha atual será considerada "velha" e então colocará
--                                                                      uma senha dele*/

-- create user mark@"localhost" identified by "1234"
-- password expire interval 90 day;		-- a senha será resetada a cada 90 dias.

-- create user mark@"localhost" identified by "1234"
--	 password expire interval 90 day failed_login_attempts 3 password_lock_time 2; -- se forem feitas 3 tentativas erradas de login, o usuário ficará com acesso bloqueado por dois dias

-- create user mark@"localhost" attribute '{"nome":"mark joselli"}'; -- designa atributos para o usuário
-- create user mark@"localhost" comment 'usuario principal'; -- adiciona um "comentário"
-- create user mark@"localhost" with max_queries_per_hour 2; -- limita a quantidade de queries do usuário
-- create user mark@"localhost" with max_connections_per_hour 2; -- limita a quantidade de conexões do usuário por hora
select * from information_schema.user_attributes