Los grafico de caja son utilizados para resumir de forma visual un conjunto de datos, los máximos, mínimos, mediana y cuartiles.

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

## Grafico de caja en R

```r
cars %>% ggplot(aes(y=dist)) +
    geom_boxplot()
```

<div align="center">
<img src="https://drive.google.com/uc?id=1xtg94cFKyg7wIQc0iVq26e99pdtvcVr4"/>
</div>

## Grafico de caja en Python

```python
plt.clf()
x=np.array(r.cars["dist"])
plt.boxplot(x)
plt.show()
```

<div align="center">
<img src="https://drive.google.com/uc?id=17HW5oalpnmYOPEKVuXm_30jfStQOI7W0"/>
</div>
