Los gráficos de nubes de palabras son utilizados para representan el reconteo de diferentes palabras dentro de un marco de datos.

## Librerías R necesarias

```r
library(wordcloud)
```

## Forma de los datos

Para generar nubes de palabras se requiere dos campos, uno que representa las palabras y otro que representa la frequencia de dichas palabras.

```r
palabras <- c(letters, LETTERS, 0:9)
frecuenciaPalabras <- sample(1:100,62,TRUE)
```

## Grafico de nube de palabras con R

```r
wordcloud(words = palabras,
          freq = frecuenciaPalabras,
          min.freq = 3,
          max.words = Inf,
          random.order = TRUE,
          random.color = FALSE,
          rot.per = .1,
          colors = "black",
          ordered.colors = FALSE,
          use.r.layout = FALSE,
          fixed.asp = TRUE)

```

<div class="separator" style="clear: both; text-align: center;">
  <a href="https://drive.google.com/uc?id=1seBm35WQ0qjEJj97esQhuQ0pt1M-3KJX" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
    <img border="0" data-original-height="198" data-original-width="557" height="251" src="https://drive.google.com/uc?id=1seBm35WQ0qjEJj97esQhuQ0pt1M-3KJX" width="636" />
  </a>
</div>
