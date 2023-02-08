Los gráficos de barras son utilizado comúnmente para representar variables discretas o cualitativas, para visualizar el conteo de variables o coparación de magnitudes entre categorias.

## Librerías R necesarias

```r
library(gcookbook)
library(reticulate)
library(ggplot2)
library(dplyr)
```

## Librerías Python necesarias

```python
import numpy as np
import matplotlib.pyplot as plt
```

## Grafico de barras con R

```r
pg_mean %>% ggplot(aes(x=group, y=weight)) +
    geom_col()
```

<div align="center">
<img src="https://drive.google.com/uc?id=1w2FEZmcNMrujtlrKns0WnZBDtbO8pzjz"/>
</div>

## Grafico de barras con Python

```python
plt.clf()
x=np.array(r.pg_mean["group"])
y=np.array(r.pg_mean["weight"])
plt.bar(x,y)
plt.show()
```

<div align="center">
<img src="https://drive.google.com/uc?id=14YA5NvJ7MMFc3QPJ270UbexmYK0NdWDf"/>
</div>