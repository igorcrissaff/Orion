---

# Orion

Implementação da **especificação léxica e sintática da linguagem Orion** utilizando **ANTLR 4**.

Este projeto foi desenvolvido como Trabalho Prático da disciplina de **Compiladores** e tem como objetivo construir as etapas iniciais de um compilador, realizando a análise léxica e sintática de programas escritos na linguagem Orion.

---

## Objetivos

O projeto implementa:

* Analisador léxico (Lexer);
* Analisador sintático (Parser);
* Reconhecimento de programas válidos;
* Detecção de erros léxicos e sintáticos;
* Geração da árvore sintática (Parse Tree);
* Testes utilizando o ANTLR Lab.

Nesta etapa **não** são realizadas verificações semânticas, como:

* declaração prévia de variáveis;
* compatibilidade de tipos;
* existência de operações ou rotinas;
* validação de escopo.

O foco do projeto está exclusivamente no reconhecimento da estrutura da linguagem.  

---

# Estrutura do Projeto

```text
.
├── grammar/
│   ├── OrionLexer.g4
│   └── OrionParser.g4
│
├── examples/
│   ├── valid/
│   └── invalid/
│
├── docs/
│   ├── lexical-specification.pdf
│   └── syntax-specification.pdf
│
├── generated/
│
├── README.md
└── .gitignore
```

---

# Recursos da Linguagem Orion

A gramática desenvolvida reconhece os principais elementos da linguagem:

* declaração de programas;
* variáveis;
* constantes;
* registros (`record`);
* vetores (`array`);
* operações com retorno (`operation`);
* rotinas (`routine`);
* comandos de entrada e saída;
* atribuições;
* expressões aritméticas;
* expressões relacionais;
* expressões lógicas;
* estruturas condicionais (`when`);
* seleção múltipla (`select`);
* laços (`during`, `count` e `loop`);
* comandos `leave` e `skip`;
* comentários de linha e bloco.

A precedência dos operadores também é respeitada conforme especificado no trabalho.  

---

# Tecnologias Utilizadas

* ANTLR 4
* Java (runtime do ANTLR)
* ANTLR Lab
* Git

---

# Gerando o Lexer e o Parser

Execute o comando abaixo na pasta onde estão os arquivos `.g4`:

```bash
antlr4 OrionLexer.g4 OrionParser.g4
```

Ou, caso utilize uma gramática combinada:

```bash
antlr4 Orion.g4
```

Depois compile os arquivos gerados:

```bash
javac *.java
```

---

# Executando

Para analisar um programa Orion:

```bash
grun Orion program -tree exemplo.orion
```

ou

```bash
antlr4-parse Orion.g4 program exemplo.orion -tree
```

Dependendo da instalação do ANTLR, os comandos podem variar.

---

# Programas de Teste

O projeto contém dois conjuntos de exemplos:

### Programas válidos

Demonstram corretamente:

* declarações;
* expressões;
* operações;
* rotinas;
* condicionais;
* laços;
* vetores;
* registros.

### Programas inválidos

Foram produzidos para verificar o tratamento de erros como:

* palavras-chave incorretas;
* identificadores inválidos;
* ausência de ponto e vírgula;
* parênteses não balanceados;
* declarações malformadas;
* comandos incompletos;
* literais inválidos.

Esses testes seguem os requisitos mínimos definidos para o trabalho. 

---

# Exemplo de Programa Orion

```orion
program Hello

start
do
    output "Hello, Orion";
end

endprogram
```



---

# Requisitos

* Java JDK 17+ (ou versão compatível)
* ANTLR 4
* Git

---

# Autores

Projeto desenvolvido para a disciplina de **Compiladores**.

---

# Licença

Este projeto foi desenvolvido exclusivamente para fins acadêmicos. Sua utilização é destinada ao estudo de análise léxica, análise sintática e construção de gramáticas utilizando ANTLR 4.
