O pacote evita página em branco depois de \part.
===============================================

Uso
---
          \edtext{Texto que fará parte}{\nota{}}
          \edtext{Texto que fará parte}{\lemma{Texto...parte.}{\nota{}}}

Comandos
--------
    
          \indentacaoverso                  # dá indentação padrão para ~50 estrofes
          \versosparalelos{textoA}{textoB}
          \textosparalelos{}{}              # a mesma coisa, só que sem \indentacaoverso
          \titulonoverso{}                  # padrão \textsc para título, lembrar de colocar
                                              & & para espaçar linhas. Este comando não 
                                              numera a linha
          \titulonoverso*{}                 # identico, só que conta a numeração
          \nota                             # atalho para \Afootnote
          \original                         # atalho para \Bfootnote

