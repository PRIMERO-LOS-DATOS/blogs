Los gráficos de líneas nos permiten ver la evolución de una variable atreves del tiempo que es como generalmente se lo utilizara el grafico de líneas.

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

## Grafico de líneas en R

```r
BOD %>%  ggplot(aes(x=Time, y=demand)) +
    geom_line()
```

<div align="center">
<img src="https://drive.google.com/uc?id=1HQwVQTja65oLIl-rldNYf7jDvyc5dgw7"/>
</div>

## Grafico de líneas en Python

```python
plt.clf()
x=np.array(r.BOD["Time"])
y=np.array(r.BOD["demand"])
plt.plot(x,y)
plt.show()
```

<div align="center">
<img src="https://drive.google.com/uc?id=1HAnpa7GVBOEhI24-2zMV65LW0doAYmdb"/>
</div>
