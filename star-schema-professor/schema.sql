CREATE TABLE Dim_Professor (
    idProfessor INT PRIMARY KEY,
    nome VARCHAR(100),
    titulacao VARCHAR(50),
    regimeTrabalho VARCHAR(50)
);

CREATE TABLE Dim_Curso (
    idCurso INT PRIMARY KEY,
    nomeCurso VARCHAR(100),
    nivel VARCHAR(50)
);

CREATE TABLE Dim_Departamento (
    idDepartamento INT PRIMARY KEY,
    nomeDepartamento VARCHAR(100)
);

CREATE TABLE Dim_Disciplina (
    idDisciplina INT PRIMARY KEY,
    nomeDisciplina VARCHAR(100),
    cargaHoraria INT
);

CREATE TABLE Dim_Tempo (
    idTempo INT PRIMARY KEY,
    dataOferta DATE,
    ano INT,
    semestre INT,
    mes INT
);

CREATE TABLE Fato_Professor (
    idFato INT PRIMARY KEY,
    idProfessor INT,
    idCurso INT,
    idDepartamento INT,
    idDisciplina INT,
    idTempo INT,
    qtdDisciplinas INT,
    FOREIGN KEY (idProfessor) REFERENCES Dim_Professor(idProfessor),
    FOREIGN KEY (idCurso) REFERENCES Dim_Curso(idCurso),
    FOREIGN KEY (idDepartamento) REFERENCES Dim_Departamento(idDepartamento),
    FOREIGN KEY (idDisciplina) REFERENCES Dim_Disciplina(idDisciplina),
    FOREIGN KEY (idTempo) REFERENCES Dim_Tempo(idTempo)
);
