function HHDifferentialEq(x,p,t)
    g_Na,g_K,g_L,E_Na,E_K,E_L,C,I=p
    du=(g_Na*x[3]^3*x[4]*(E_Na-x[1])+g_K*x[2]^4*(E_K-x[1])+g_L*(E_L-x[1])-I)/C
    dn=alphan(x[1])*(1-x[2])-betan(x[1])*x[2]
    dm=alpham(x[1])*(1-x[3])-betam(x[1])*x[3]
    dh=alphah(x[1])*(1-x[4])-betah(x[1])*x[4]
    [du;dn;dm;dh]
end