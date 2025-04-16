# 🎓 Projeto 1 - Banco de Dados para uma Universidade

## 👥 Integrantes

- **Nome:** Guilherme Matias Rodrigues de Souza — **RA:** 22.122.071-8 
- **Nome:** Fernando Domingues — **RA:** 22.122.034-6
- **Nome:** Felipe da Rocha Pinheiro — **RA:** 22.222.059-2

---

## 📖 Descrição do Projeto

Este projeto tem como objetivo desenvolver um sistema completo de banco de dados relacional para uma universidade. O sistema é capaz de armazenar e gerenciar informações sobre:

- Alunos
- Professores
- Departamentos
- Cursos
- Disciplinas
- Históricos escolares
- Disciplinas lecionadas por professores
- Trabalhos de Conclusão de Curso (TCCs) — com grupo de alunos e professor orientador

Além do desenvolvimento da modelagem conceitual e lógica, foram implementadas consultas SQL para validar o funcionamento do sistema e responder questões propostas.

---

## 🧩 Entrega do Projeto

### ✅ Modelo Entidade-Relacionamento (MER)

![MER](https://github.com/Matias2335/Projeto_Universidade/blob/main/MER.png?raw=true)

---

### ✅ Modelo Relacional (3FN)

Arquivo incluído no repositório como `modelo_relacional.pdf` ou documentado conforme preferido pelo grupo.

---

### ✅ Código DDL

O arquivo `DDL+dropteste.sql` contém toda a estrutura de criação das tabelas do banco de dados, com os devidos relacionamentos e integridade referencial, além de comandos `DROP` para reinicialização do ambiente.

[🔗 Acesse aqui](https://github.com/Matias2335/Projeto_Universidade/blob/main/DDL%2Bdropteste.sql)

---

### ✅ Inserção de Dados Fictícios

O script `Insert.sql` contém todos os dados gerados ficticiamente para popular o banco. Foram inseridos alunos, professores, cursos, departamentos, disciplinas, históricos, orientações e TCCs.

[🔗 Acesse aqui](https://github.com/Matias2335/Projeto_Universidade/blob/main/Insert.sql)

---

***✅ Queries SQL das Questões

O arquivo questoes.sql contém a implementação de todas as queries exigidas pelo projeto. Inclui as 5 queries propostas no enunciado, além de 10 queries adicionais escolhidas a partir da lista de exercícios de álgebra relacional.

Cada consulta foi testada e teve seu resultado registrado em imagens (Questao1.png até Questao15.png), disponíveis neste repositório.

[🔗 Acesse aqui](https://github.com/Matias2335/Projeto_Universidade/blob/main/questoes.sql)

---

## 🔍 Consultas SQL

### ✅ 5 Consultas Obrigatórias

#### 1️⃣ Histórico escolar com reprovação e aprovação posterior  
![Questão 1](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao1.png?raw=true)

#### 2️⃣ TCCs orientados por professor com nomes dos alunos  
![Questão 2](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao2.png?raw=true)

#### 3️⃣ Matrizes curriculares de dois cursos com disciplinas em comum  
- Curso 1:  
  ![Questão 3](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao3.png?raw=true)

- Curso 2:  
  ![Questão 4](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao4.png?raw=true)

#### 4️⃣ Disciplinas cursadas por aluno com professores que lecionaram  
![Questão 5](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao5.png?raw=true)

#### 5️⃣ Chefes de departamento e coordenadores de curso  
![Questão 6](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao6.png?raw=true)

---

### ✅ Outras 10 Consultas (escolhidas da lista de álgebra relacional)

- Questão 7:  
  ![Questão 7](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao7.png?raw=true)

- Questão 8:  
  ![Questão 8](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao8.png?raw=true)

- Questão 9:  
  ![Questão 9](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao9.png?raw=true)

- Questão 10:  
  ![Questão 10](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao10.png?raw=true)

- Questão 11:  
  ![Questão 11](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao11.png?raw=true)

- Questão 12:  
  ![Questão 12](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao12.png?raw=true)

- Questão 13:  
  ![Questão 13](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao13.png?raw=true)

- Questão 14:  
  ![Questão 14](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao14.png?raw=true)

- Questão 15:  
  ![Questão 15](https://github.com/Matias2335/Projeto_Universidade/blob/main/Questao15.png?raw=true)

---

## ▶️ Como Executar

1. **Abra seu gerenciador de banco de dados**
   - Pode ser qualquer ferramenta com suporte a SQL (ex: DBeaver, pgAdmin, ou Supabase).

2. **Crie um novo banco de dados**

3. **Execute o script de criação das tabelas**
   - Arquivo: `DDL+dropteste.sql`

4. **Insira os dados fictícios**
   - Arquivo: `Insert.sql`

5. **Execute as queries**
   - Arquivo: `questoes.sql`

6. **Valide os resultados**
   - Compare com as imagens `Questao1.png` até `Questao15.png`

---

