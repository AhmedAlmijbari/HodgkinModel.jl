using HodgkinModel
using Test
using DiffEqFlux
using OrdinaryDiffEq

@testset "HodgkinModel.jl" begin
    u0 = -70.2
    m0 = 0.03
    n0 = 0.25
    h0 = 0.75
    
    x0=[u0,n0,m0,h0]
    
    # time
    T = 50 # ms
    dt = 0.01 # ms
    tspan = (0, T)
    
    g_Na = 120 #mS/cm**2
    g_K = 36   #mS/cm**2
    g_L = 0.3  #mS/cm**2
    E_Na = 55  #mV
    E_K = -75  #mV
    E_L = -69  #mV
    C = 0.1    #µF/cm**2
    I=-9
    
    p=[g_Na,g_K,g_L,E_Na,E_K,E_L,C,I]
    
    prob = ODEProblem(HHDifferentialEq, x0, tspan, p)
    sol = solve(prob, Tsit5(), saveat=dt);

    @test sol.u[end]≈[-73.65098985320532, 0.6805349994101058, 0.020695460168234803, 0.15400008770651596]
    




end
