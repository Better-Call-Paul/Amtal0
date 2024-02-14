import numpy as np
from scipy.stats import norm

# cumulative distribution

# Call Price based on Bacheliers 

def bacheliers(flag, underlying_price, current_price, strike_price, cdf, volatility):
    
    if flag == "C" or flag == "c":
        
        d1 = 2
        
    else:
        return bacheliers_put(underlying_price, current_price, strike_price, cdf, volatility)


def bacheliers_put(underlying_price, current_price, strike_price, cdf, volatility):
    
    pass
