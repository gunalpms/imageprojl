# imageprojl
Image processing Jupyter Notebooks for Julia

## Running the notebooks:

#### You need [jupyter notebook installed](https://jupyter.org/install) (requires python 3):

#### You need the [Julia Programming Language installed](https://julialang.org):

#### IJulia library for Julia which can be installed by accessing the Julia REPL and running these commands:
_(The Julia REPL can be accessed by running Julia from your terminal (CMD for Windows))_

```jl
using Pkg
Pkg.add("IJulia")
```

#### Last but not least, to run Jupyter with Julia, run these commands in the Julia REPL:
```jl
using IJulia
notebook()
```

For other package dependencies, you can simply run ```jl Pkg.add("PackageName")``` after running ```jl using Pkg``` from the Julia REPL.



