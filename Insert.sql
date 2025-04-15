        -- Inserts para aluno

        insert into departamento (depart_nome, predio, orcamento) values
        ('Biologia', 'Bloco Amarelo', 70000),
        ('Cienc. Comp.', 'Bloco Azul', 95000),
        ('Eng. Eletrica', 'Bloco Azul', 80000),
        ('Finanças', 'Bloco Vermelho', 135000),
        ('Historia', 'Bloco Verde', 60000),
        ('Musica', 'Bloco Roxo', 10000),
        ('Fisica', 'Bloco Amarelo', 65000);

        insert into aluno values ('00128', 'Mateus', 'mateus@email.com', 'Cienc. Comp.', 102);
        insert into aluno values ('12345', 'Fernando', 'fernando@email.com', 'Cienc. Comp.', 32);
        insert into aluno values ('19991', 'Leticia', 'leticia@email.com', 'Historia', 80);
        insert into aluno values ('23121', 'Pietro', 'pietro@email.com', 'Finanças', 110);
        insert into aluno values ('44553', 'Paulo', 'paulo@email.com', 'Fisica', 56);
        insert into aluno values ('45678', 'Sabrina', 'sabrina@email.com', 'Fisica', 46);
        insert into aluno values ('54321', 'Giovanna', 'giovanna@email.com', 'Cienc. Comp.', 54);
        insert into aluno values ('55739', 'Tais', 'tais@email.com', 'Musica', 38);
        insert into aluno values ('70557', 'Beatriz', 'beatriz@email.com', 'Fisica', 0);
        insert into aluno values ('76543', 'Vitoria', 'vitoria@email.com', 'Cienc. Comp.', 58);
        insert into aluno values ('76653', 'Willian', 'willian@email.com', 'Eng. Eletrica', 60);
        insert into aluno values ('98765', 'Hugo', 'hugo@email.com', 'Eng. Eletrica', 98);
        insert into aluno values ('98988', 'Jorge', 'jorge@email.com', 'Biologia', 120);

        insert into professor values ('Joao','joao66@gmail.com', 'Cienc. Comp.', 70000);
        insert into professor values ('Guilherme', 'guilherme7@gmail.com', 'Finanças', 80000);
        insert into professor values ('Gustavo', 'gustavo03@gmail.com', 'Musica', 50000);
        insert into professor values ('Ana', 'anarprof00@gmail.com', 'Fisica', 40000);
        insert into professor values ('Pedro','pedro888@gmail.com', 'Historia', 52000);
        insert into professor values ('Henrique','henrique1@gmail.com', 'Fisica', 77000);
        insert into professor values ('Isaac','isaac777@gmail.com', 'Cienc. Comp.', 63000);
        insert into professor values ('Gabriela','gabi.pro@gmail.com', 'Historia', 54000);
        insert into professor values ('Amanda','amanda66@gmail.com', 'Finanças', 90000);
        insert into professor values ('Thiago','thiago@gmail.com', 'Biologia', 75000);
        insert into professor values ('Yuri','yurialberto9@gmail.com', 'Cienc. Comp.', 88000);
        insert into professor values ('Maria','maria79@gmail.com', 'Eng. Eletrica', 76000);

        

        insert into curso values ('BIO-101', 'Intro. a Biologia', 'Biologia', 4);
        insert into curso values ('BIO-301', 'Genetica', 'Biologia', 4);
        insert into curso values ('BIO-399', 'Biologia Computacional', 'Biologia', 3);
        insert into curso values ('CS-101', 'Intro. to a Cienc. Comput.', 'Cienc. Comp.', 4);
        insert into curso values ('CS-190', 'Design de Jogos', 'Cienc. Comp.', 4);
        insert into curso values ('CS-315', 'Robotica', 'Cienc. Comp.', 3);
        insert into curso values ('CS-319', 'Processamento de Imagem', 'Cienc. Comp.', 3);
        insert into curso values ('CS-347', 'Conceitos de Banco de Dados', 'Cienc. Comp.', 3);
        insert into curso values ('EE-181', 'Intro. a Sistemas Digitais', 'Eng. Eletrica', 3);
        insert into curso values ('FIN-201', 'Investmento Bamcario', 'Finanças', 3);
        insert into curso values ('HIS-351', 'Historia do Mundo', 'Historia', 3);
        insert into curso values ('MU-199', 'Produçao de Videos Musicais', 'Musica', 3);
        insert into curso values ('PHY-101', 'Principios da Fisica', 'Fisica', 4);



        insert into leciona values ('Isaac', 'CS-101', 2022);
        insert into leciona values ('Yuri', 'CS-319', 2023);
        insert into leciona values ('Joao', 'CS-190', 2024);
        insert into leciona values ('Maria', 'EE-181', 2020);
        insert into leciona values ('Thiago', 'BIO-301', 2021);
        insert into leciona values ('Guilherme', 'FIN-201', 2021);
        insert into leciona values ('Gabriela', 'HIS-351', 2022);
        insert into leciona values ('Henrique', 'PHY-101', 2025);
        insert into leciona values ('Pedro', 'HIS-351', 2022);
        insert into leciona values ('Amanda', 'FIN-201', 2021);

        insert into tcc (id, titulo, professor_orientador, ano) values
        (1, 'Reconhecimento Facial com IA', 'Joao', 2024),
        (2, 'Análise Econômica do Brasil Pós-Pandemia', 'Amanda', 2023),
        (3, 'Robôs no Ensino Infantil', 'Maria', 2025),
        (4, 'Impactos da Música no Desenvolvimento Cognitivo', 'Gustavo', 2022),
        (5, 'Automação de Casas com Arduino', 'Maria', 2023),
        (6, 'Ecossistemas em Transformação', 'Thiago', 2024),
        (7, 'Blockchain no Sistema Financeiro', 'Guilherme', 2023);


        insert into aluno_tcc values (1, '00128');
        insert into aluno_tcc values (1, '12345');
        insert into aluno_tcc values (2, '23121');
        insert into aluno_tcc values (2, '44553');
        insert into aluno_tcc values (3, '54321');
        insert into aluno_tcc values (3, '76543');
        insert into aluno_tcc values (4, '55739');
        insert into aluno_tcc values (5, '76653');
        insert into aluno_tcc values (5, '98765');
        insert into aluno_tcc values (6, '98988');
        insert into aluno_tcc values (7, '19991');

        insert into turma values (default, 'CS-101', '1', 1, 2025);
        insert into turma values (default, 'CS-347', '1', 7, 2022);
        insert into turma values (default, 'CS-101', '1', 5, 2023);
        insert into turma values (default, 'CS-190', '2', 3, 2024);
        insert into turma values (default, 'CS-315', '1', 2, 2024);
        insert into turma values (default, 'CS-347', '1', 2, 2024);
        insert into turma values (default, 'HIS-351', '1', 8, 2022);
        insert into turma values (default, 'FIN-201', '1', 9, 2021);
        insert into turma values (default, 'PHY-101', '1', 1, 2025);
        insert into turma values (default, 'CS-101', '1', 8, 2022);
        insert into turma values (default, 'CS-101', '1', 7, 2022);
        insert into turma values (default, 'CS-319', '1', 6, 2023);
        insert into turma values (default, 'CS-101', '1', 6, 2023);
        insert into turma values (default, 'CS-190', '2', 4, 2024);
        insert into turma values (default, 'MU-199', '1', 11, 2020);
        insert into turma values (default, 'CS-101', '1', 5, 2023);
        insert into turma values (default, 'CS-319', '2', 1, 2025);
        insert into turma values (default, 'EE-181', '1', 12, 2020);
        insert into turma values (default, 'CS-101', '1', 6, 2023);
        insert into turma values (default, 'CS-315', '1', 4, 2024);
        insert into turma values (default, 'BIO-101', '1', 9, 2021);
        insert into turma values (default, 'BIO-301', '1', 10, 2021);

        insert into historico_escolar values ('00128', 10, 3.0, false);
        insert into historico_escolar values ('00128', 12, 8.5, true);
        insert into historico_escolar values ('12345', 1, 9.0, true);
        insert into historico_escolar values ('19991', 7, 7.0, true);
        insert into historico_escolar values ('23121', 11, 4.5, false);
        insert into historico_escolar values ('23121', 13, 8.0, true);
        insert into historico_escolar values ('44553', 18, 9.5, true);
        insert into historico_escolar values ('45678', 9, 7.8, true);
        insert into historico_escolar values ('54321', 3, 6.0, true);
        insert into historico_escolar values ('55739', 15, 8.7, true);
        insert into historico_escolar values ('70557', 21, 7.3, true);
        insert into historico_escolar values ('76543', 2, 5.0, true);
        insert into historico_escolar values ('76653', 4, 4.0, false);
        insert into historico_escolar values ('76653', 5, 7.5, true);
        insert into historico_escolar values ('98765', 6, 6.0, true);
        insert into historico_escolar values ('98988', 22, 8.9, true);