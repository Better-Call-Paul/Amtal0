#ifndef TRADINGENGINE_H
#define TRADINGENGINE_H

namespace Amtal {

/*
Matching Algorithms:


FIFO
    * First is tie-break for price

Prorata
    * Price, Quantity, Time priority
    * > quantity will be filled for more and earlier than peers regardless of time 
    * if more quantity waiting that quantity in the order book, 
    * Algo: share is proportional to quantity
    *   case 1: 10,000 shares avaliable; buyer 1: 1; buyer2: 10,000; buyer 2 gets 10,000 
    *   case 2: 10,000 shares avaliable; buyer 1: 10,000; buyer2: 10,000, 5,000 for each

Top (most important)

    * If at top price and minimum of x quantity -> allocated entire top quantity
    * One at a time, best bid/offer and minimum quantity


Lead Market Maker (LMM)

    * Lead market maker is always assigned y% of trades regardless of queue position (but still need best price)
    * always < 50% and is propriatary/private 




*/










    

}

#endif 