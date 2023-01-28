Los histogramas se los utiliza comúnmente para visualizar la forma en se distribuyen los datos.

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

## Histograma en R

```r
cars %>% ggplot(aes(x=dist)) +
    geom_histogram()
```

<div align="center">
<img src="https://drive.google.com/uc?id=1w446fFBFBN43611TfZLjGyqQU824-qkA"/>
</div>

## Histograma en Python

```python
plt.clf()
x=np.array(r.cars["dist"])
plt.hist(x)
plt.show()
```

<div align="center">
<img src="https://drive.google.com/uc?id=1voLaImZhfMP69Pc88pWq84kqnrpsDBQa"/>
</div>
