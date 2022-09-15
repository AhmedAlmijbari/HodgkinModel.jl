module HodgkinModel

    include("transitionrates.jl") 
    include("HHDifferentialEq.jl")

    export alpham,betam,alphan,betan,alphah,betah,HHDifferentialEq

end