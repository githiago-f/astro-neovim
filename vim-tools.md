:vimgrep /regex/ `find . -type f` <- find a file on the current directory (find . -type f)

:cdo %s/regex/str/gc

k up
j down
h left
l right

- <- find word in file

  N <- back
  n <- forward

  ciw <- change in word, deletes current word and change

  . <- replay what was done

%s <- "sad" command, changes everything in current file

y <- yank

viw <- visually highlight in word

p <- paste

:reg <- shows registers (where things are yanked to)

"<Leader><register>p <- paste from register

- <- system (linux) register for "clipboard"

qh <- starts recording a new macro at "h" register (press q again to save macro)
