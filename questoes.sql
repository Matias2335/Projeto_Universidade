--Mostre todo o histórico escolar de um aluno que teve reprovação em uma disciplina, retornando inclusive a reprovação em um semestre e a aprovação no semestre seguinte
select 
    a.ID as aluno_id,
    a.nome as aluno_nome,
    c.titulo as disciplina,
    c.id_materia,
    t.ano,
    t.secao,
    he.nota,
    he.aprovado
from historico_escolar he
join aluno a on a.ID = he.aluno_id
join turma t on t.id = he.turma_id
join curso c on c.id_materia = t.id_materia
where a.ID = '76653'
order by c.id_materia, t.ano;

--Mostre todos os TCCs orientados por um professor junto com os nomes dos alunos que fizeram o projeto;
select 
    p.nome as professor_orientador,
    t.titulo as titulo_tcc,
    a.nome as aluno_nome,
    a.ID as aluno_id
from tcc t
join professor p on p.nome = t.professor_orientador
join aluno_tcc at on at.tcc_id = t.id
join aluno a on a.ID = at.aluno_id
order by p.nome, t.titulo;


--Mostre a matriz curicular de pelo menos 2 cursos diferentes que possuem disciplinas em comum (e.g., Ciência da Computação e Ciência de Dados). Este exercício deve ser dividido em 2 queries sendo uma para cada curso;

--Ciencia da computação
select 
    id_materia,
    titulo,
    creditos,
    depart_nome
from curso
where depart_nome = 'Cienc. Comp.'
order by id_materia;
--Ciencia de dados 
select 
    id_materia,
    titulo,
    creditos,
    depart_nome
from curso
where depart_nome = 'Cienc. Dados'
order by id_materia;

select 
    titulo,
    count(distinct depart_nome) as qtd_cursos
from curso
group by titulo
having count(distinct depart_nome) > 1;

--Para um determinado aluno, mostre os códigos e nomes das diciplinas já cursadas junto com os nomes dos professores que lecionaram a disciplina para o aluno;
select 
    c.id_materia as codigo_disciplina,
    c.titulo as nome_disciplina,
    p.nome as professor_nome
from historico_escolar he
join turma t on t.id = he.turma_id
join curso c on c.id_materia = t.id_materia
join leciona l on l.id_materia = t.id_materia and l.ano = t.ano
join professor p on p.nome = l.professor_nome
join aluno a on a.ID = he.aluno_id
where a.ID = '00128' 
order by c.id_materia;


--Liste todos os chefes de departamento e coordenadores de curso em apenas uma query de forma que a primeira coluna seja o nome do professor, a segunda o nome do departamento coordena e a terceira o nome do curso que coordena. Substitua os campos em branco do resultado da query pelo texto "nenhum"
select 
    coalesce(p.nome, 'nenhum') as nome_professor,
    coalesce(dep.depart_nome, 'nenhum') as chefe_departamento,
    coalesce(curso_info.depart_nome, 'nenhum') as curso_coordenado
from professor p
left join (
    select min(nome) as nome, depart_nome
    from professor
    group by depart_nome
) dep on dep.nome = p.nome
left join (
    select distinct on (l.id_materia)
        l.professor_nome as nome,
        c.depart_nome
    from leciona l
    join curso c on c.id_materia = l.id_materia
    order by l.id_materia, l.ano desc
) curso_info on curso_info.nome = p.nome
order by p.nome;

--Quais são os instrutores e seus salários em um departamento específico
select nome, salario
from professor
where depart_nome ilike 'Cienc. Comp.';

-- Quais são os cursos oferecidos por um determinado departamento?
select 
    id_materia as codigo,
    titulo as nome_disciplina
from curso
where depart_nome ilike 'Cienc. Comp.';

--Quais são os alunos que ainda não se formaram em um departamento específico?
select nome
from aluno
where depart_nome ilike 'fisica' and total_credito <= 120 

--Quais são os cursos com créditos maiores que um determinado valor?

SELECT depart_nome,titulo
FROM curso
WHERE creditos >= 4

--Quais são os alunos que têm a maior quantidade de créditos em um determinado departamento?
SELECT nome
FROM aluno
WHERE depart_nome = 'Biologia'
    AND total_credito = (
        SELECT max(total_credito)
        FROM aluno
        WHERE depart_nome = 'Biologia'
    )

--Quais são os instrutores que têm um salário maior que a média do departamento deles?
WITH avg_salario AS (
    SELECT depart_nome, avg(salario) AS avg_salario
    FROM professor
    GROUP BY depart_nome
)
SELECT nome, salario
FROM professor i
INNER JOIN avg_salario a
    ON i.salario > a.avg_salario
    AND i.depart_nome = a.depart_nome 
    
-- Liste os cursos que foram ministrados pelos professores Isaac’ e ‘Joao’?
SELECT DISTINCT c.titulo
FROM curso c
JOIN leciona l ON l.id_materia = c.id_materia
WHERE l.professor_nome IN ('Isaac', 'Joao');

--Encontre os professores que ensinam 'Genetica' (id_materia = 'BIO-301') no ano de 2021.
SELECT DISTINCT l.professor_nome
FROM leciona l
WHERE l.id_materia = 'BIO-301' AND l.ano = 2021;

--Liste os títulos dos cursos e os professores para os cursos ministrados no prédio "Bloco azul"
SELECT 
    c.titulo AS curso,
    l.professor_nome AS professor,
    d.predio
FROM curso c
JOIN departamento d ON d.depart_nome = c.depart_nome
JOIN leciona l ON l.id_materia = c.id_materia
WHERE d.predio ILIKE 'Bloco Azul';

--Liste os nomes dos estudantes que não cursaram nenhum curso no departamento de "Cienc. Comp".
SELECT nome
FROM aluno
WHERE depart_nome NOT IN ('Cienc. Comp.');