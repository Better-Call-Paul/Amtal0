import React from 'react';
import { Search, Sun, TrendingUp, Download } from 'lucide-react';

const HomeBaseUI = () => {
  const stocks = [
    { name: 'AAPL', change: '+2.3%' },
    { name: 'GOOGL', change: '-0.8%' },
    { name: 'TSLA', change: '+4.1%' },
    { name: 'AMZN', change: '+1.2%' },
    { name: 'MSFT', change: '+0.5%' },
  ];

  return (
    <div className="bg-gray-200 p-3 rounded-lg shadow-lg max-w-2xl mx-auto text-xs">
      <div className="flex items-center justify-between mb-3">
        <div className="flex items-center space-x-1">
          <div className="w-2 h-2 rounded-full bg-red-500"></div>
          <div className="w-2 h-2 rounded-full bg-yellow-500"></div>
          <div className="w-2 h-2 rounded-full bg-green-500"></div>
        </div>
        <div className="flex items-center bg-white rounded-full px-2 py-1">
          <Search className="text-gray-400 mr-1" size={12} />
          <input
            type="text"
            placeholder="Search stocks..."
            className="bg-transparent outline-none text-xs w-24"
          />
        </div>
      </div>

      <div className="flex items-center mb-4">
        <Sun className="text-gray-600 mr-1" size={14} />
        <span className="font-semibold text-gray-700">Market Overview</span>
      </div>

      <div className="grid grid-cols-5 gap-2 mb-4">
        {stocks.map((stock, index) => (
          <div key={index} className="bg-white rounded p-1 shadow">
            <div className="h-12 bg-gray-300 rounded mb-1"></div>
            <p className="font-semibold truncate">{stock.name}</p>
            <p className={`${stock.change.startsWith('+') ? 'text-green-500' : 'text-red-500'}`}>
              {stock.change}
            </p>
            {index === 2 ? (
              <button className="mt-1 bg-gray-200 px-1 py-0.5 rounded flex items-center text-[10px]">
                <TrendingUp size={10} className="mr-0.5" /> Trade
              </button>
            ) : index > 2 ? (
              <button className="mt-1 text-blue-500 px-1 py-0.5 rounded flex items-center text-[10px]">
                <Download size={10} className="mr-0.5" /> Watch
              </button>
            ) : (
              <button className="mt-1 bg-gray-200 px-1 py-0.5 rounded flex items-center text-[10px]">
                <TrendingUp size={10} className="mr-0.5" />
              </button>
            )}
          </div>
        ))}
      </div>

      <div className="bg-gray-300 rounded p-2 mb-3">
        <div className="flex items-center mb-1">
          <div className="w-8 h-8 bg-gray-400 rounded-full mr-2"></div>
          <div>
            <h3 className="font-semibold text-[11px]">S&P 500 reaches new all-time high</h3>
            <p className="text-[10px] text-gray-600">Bullish sentiment drives major indices to record levels as tech sector leads...</p>
          </div>
        </div>
        <div className="flex justify-center">
          <div className="w-1.5 h-1.5 bg-gray-400 rounded-full mx-0.5"></div>
          <div className="w-1.5 h-1.5 bg-gray-400 rounded-full mx-0.5"></div>
          <div className="w-1.5 h-1.5 bg-gray-600 rounded-full mx-0.5"></div>
          <div className="w-1.5 h-1.5 bg-gray-400 rounded-full mx-0.5"></div>
          <div className="w-1.5 h-1.5 bg-gray-400 rounded-full mx-0.5"></div>
        </div>
      </div>

      <div className="flex justify-between items-center">
        <div className="flex space-x-1">
          <div className="w-6 h-6 bg-gray-300 rounded"></div>
          <div className="w-6 h-6 bg-gray-300 rounded"></div>
        </div>
        <div className="text-right">
          <p className="font-semibold">$25,000 / $32,000</p>
          <div className="w-24 h-1.5 bg-gray-300 rounded-full mt-0.5">
            <div className="w-18 h-1.5 bg-blue-500 rounded-full"></div>
          </div>
          <p className="text-[10px] text-gray-500 mt-0.5">79% of portfolio value</p>
        </div>
      </div>
    </div>
  );
};

export default HomeBaseUI;