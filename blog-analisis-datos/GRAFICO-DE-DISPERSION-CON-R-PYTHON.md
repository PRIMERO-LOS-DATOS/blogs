El grafico de dispersión, nos permite representar la relación entre dos variables continuas.

## Librerías R necesarias

```r
library(reticulate)
library(ggplot2)
library(dplyr)
```

## Librerías Python necesarias

```python
import numpy as np
import matplotlib.pyplot as plt
```

## Grafico de dispersión con R

```r
cars %>% ggplot(aes(x=speed,y=dist)) + geom_point()
```

<div align="center">
<img src="https://drive.google.com/uc?id=1jvvJEBvQ8_Im5wX3ZpAKLChxjE6dwfrc"/>
</div>

## Grafico de dispersión con Python

```python
plt.clf()
x=np.array(r.cars["speed"])
y=np.array(r.cars["dist"])
plt.scatter(x,y)
plt.show()
```

<div align="center">
<img src="https://drive.google.com/uc?id=1Ff6Cd8zSi9OEGGhdN_xjwhSmoE2So1n4"/>
</div>
