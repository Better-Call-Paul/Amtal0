import os
import json
from typing import Dict, List
from json import JSONEncoder
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


Time = int
Product = str
Position = str
Symbol = str
UserId = str
Observation = int


class Listing:
   """
   """
   def __init__(self, symbol: Symbol, product: Product, denomination: Product):
      self.symbol = symbol
      self.product = product
      self.denomination = denomination

class Order:
   """
   """
   def __init__(self, symbol: Symbol, price: int, quantity: int) -> None:
      self.symbol = symbol
      self.price = price
      self.quantity = quantity
   
   def __str__(self) -> str:
      return "(" + self.symbol + ", " + str(self.price) + ", " + str(self.quantity) + ")"
   
   def __repr__(self) -> str:
      return "(" + self.symbol + ", " + str(self.price) + ", " + str(self.quantity) + ")"
   

class OrderDepth:
   """
   """
   def __init__(self):
      self.buy_orders: Dict[int, int] = {}
      self.sell_orders: Dict[int, int] = {}
      
      
class Trade:
   """
   """
   def __init__(self, symbol: Symbol, price: int, quantity: int, timestamp: int = 0, buyer_id: UserId = None, seller_id: UserId = None):
      self.symbol = symbol
      self.price = price
      self.quantity = quantity
      self.timestamp = timestamp
      self.buyer_id = buyer_id
      self.seller_id = seller_id
      
      
class Trading_State(object):
   def __init__(self, 
               timestamp: Time,
               listings: Dict[Symbol, Listing],
               order_depths: Dict[Symbol, OrderDepth],
               own_trades: Dict[Symbol, List[Trade]],
               market_trades: Dict[Symbol, List[Trade]],
               position: Dict[Product, Position],
               observations: Dict[Product, Observation]):
      self.timestamp = timestamp
      self.listings = listings
      self.order_depths = order_depths
      self.own_trades = own_trades
      self.market_trades = market_trades
      self.position = position
      self.observations = observations
      
   def toJSON(self):
      return json.dumps(self, default=lambda o: o.__dict__, sort_keys=True)
   


class Encoder(JSONEncoder):
   """
   """
   def default(self, o):
      return o.__dict__


def main():

   pass
  
if __name__ == "__main__":
  main()