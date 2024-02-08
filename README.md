# README
This file is in TODO

Related works:

* [Optimize Vision Transformer Architecture via Efficient Attention Modules: A Study on the Monocular Depth Estimation Task](https://www.researchgate.net/publication/377643419_Optimize_Vision_Transformer_Architecture_via_Efficient_Attention_Modules_A_Study_on_the_Monocular_Depth_Estimation_Task)
* [EfficientViT: Memory Efficient Vision Transformer with Cascaded Group Attention](https://arxiv.org/pdf/2305.07027.pdf)

This work aimed to adopt EfficientVit architecture, on METER depth estimation models, to analyze performance and seek for improvements.

Original METER models are:

* METER (encoder + decoder)
* MetaMETER
* PyraMETER

Variations studied in this work:

* EfficientVit + decoder METER
* Encoder (MobileVit + EfficientVit) + decoder METER
* MetaEfficientVit + decoder METER
* PyraEfficientVit + decoder METER (TODO)



# Results

## Performance metrics
### METER
| Model    | RMSE | MAE | Abs rel | &delta;1 | &delta;2 | &delta;3 | Parameters number |
| -------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- |
| METER  | 47.035 |35.151|0.137|0.816|0.962|0.990|3,295,168|
| MetaMETER | 49.129 |36.650|0.144|0.811|0.959|0.988|3,220,864|
| PyraMETER | 48.424 |36.350|0.142|0.817|0.960|0.989|5,527,168|

### EfficientVit
| Model    | RMSE | MAE | Abs rel | &delta;1 | &delta;2 | &delta;3 | Parameters number |
| -------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- |
|EfficientVit|58.878|44.828|0.172|0.734|0.933|0.982|2,627,668|
|MobileEfficientVit|50.688|37.751|0.147|0.807|0.957|0.988|1,233,612|
|MetaEfficientVit|52.647|39.647|0.156|0.782|0.950|0.988|1,158,112|
|PyraEfficientVit|TODO


## Time metrics
Note: GPU is NVIDIA RTX GeForce 4090
### METER
| Model    | Average CPU (ms) |  P90 CPU (ms) | Average GPU (ms) | P90 GPU (ms) |
| -------- | ------- | ------- | ------- | ------- |
|METER | 17.879|18.073|4.041|4.186|
|MetaMeter|15.370|15.770|3.625|3.792|
|PyraMETER|TODO||||

### EfficientVit
| Model    | Average CPU (ms) |  P90 CPU (ms) | Average GPU (ms) | P90 GPU (ms) |
| -------- | ------- | ------- | ------- | ------- |
|EfficientVit|13.305|13.941|8.367|8.430|
|MobileEfficientVit|13.956|15.099|5.350|5.478|
|MetaEfficientVit|11.558|12.202|3.004|3.306|
|PyraEfficientVit|TODO
