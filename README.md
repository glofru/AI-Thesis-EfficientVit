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
| METER  | 48.440 | 36.270 |0.143|0.819|0.959|0.988|3,295,168|
| MetaMETER | 50.758 |37.860|0.150|0.802|0.950|0.988|3,220,864|
| PyraMETER | 49.159 |36.690|0.145|0.809|0.957|0.987|5,527,168|

### EfficientVit
| Model    | RMSE | MAE | Abs rel | &delta;1 | &delta;2 | &delta;3 | Parameters number |
| -------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- |
|EfficientVit|58.878|44.828|0.172|0.734|0.933|0.982|2,627,668|
|MobileEfficientVit|47.525|35.344|0.138|0.825|0.962|0.989|3,288,415|
|MetaEfficientVit|51.162|38.462|0.149|0.793|0.950|0.987|3,115,696|
|PyraEfficientVit|47.710|35.718|0.140|0.818|0.963|0.989|3,309,115|


## Time metrics
Note: GPU is NVIDIA RTX GeForce 4090
### METER
| Model    | Average CPU (ms) |  P90 CPU (ms) | Average GPU (ms) | P90 GPU (ms) |
| -------- | ------- | ------- | ------- | ------- |
|METER | 17.879|18.679|4.944|4.186|
|MetaMeter|15.370|15.770|3.625|3.792|
|PyraMETER|15.203|16.401|4.465|4.573|

### EfficientVit
| Model    | Average CPU (ms) |  P90 CPU (ms) | Average GPU (ms) | P90 GPU (ms) |
| -------- | ------- | ------- | ------- | ------- |
|EfficientVit|13.305|13.941|8.367|8.430|
|MobileEfficientVit|15.663|16.304|7.031|7.185|
|MetaEfficientVit|12.441|12.821|2.913|3.114|
|PyraEfficientVit|11.081|14.125|8.759|9.735|
