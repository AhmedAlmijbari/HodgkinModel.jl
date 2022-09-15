using HodgkinModel
using Documenter

DocMeta.setdocmeta!(HodgkinModel, :DocTestSetup, :(using HodgkinModel); recursive=true)

makedocs(;
    modules=[HodgkinModel],
    authors="Ahmed Almijbari <ahmed.elmagbri@gmail.com>",
    repo="https://github.com/AhmedAlmijbari/HodgkinModel.jl/blob/{commit}{path}#{line}",
    sitename="HodgkinModel.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
