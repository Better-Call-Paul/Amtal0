import React, { useState } from 'react';
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';

const FinancialAnalysis = () => {
  const [selectedTab, setSelectedTab] = useState('Profitability');

  const tabs = ['Key Stats', 'I/S', 'B/S', 'C/F', 'Ratios', 'Segments', 'Addl', 'ESG', 'Custom'];
  const subTabs = ['Profitability', 'Growth', 'Credit', 'Credit Ex Operating Leases', 'Liquidity', 'Working Capital', 'Yield Analysis'];

  const financialData = {
    'Return on Common Equity': [46.27, 69.01, 140.77, 684.03, 1048.62, null],
    'Return on Assets': [5.87, 5.53, 5.46, 8.36, 9.11, -0.51],
    'Return on Capital': [26.83, 31.41, 38.99, 74.05, 80.39, -0.38],
    'Return on Invested Capital': [24.68, 33.51, 36.94, 64.57, 70.35, -4.40],
    'Gross Margin': [15.44, 14.59, 15.48, 18.50, 19.42, 5.83],
    'EBITDA Margin': [10.33, 9.65, 9.00, 13.18, 13.94, 0.74],
    'Operating Margin': [8.23, 7.74, 6.98, 11.00, 11.85, -2.58],
    'Incremental Operating Margin': [22.01, null, -34.99, 749.90, 23.07, -56.83],
    'Pretax Margin': [7.86, 7.44, 6.19, 10.75, 11.47, -2.95],
    'Income before XO Margin': [6.00, 5.39, 5.38, 9.00, 10.34, -0.83],
    'Net Income Margin': [6.00, 5.39, 5.38, 9.00, 10.34, -0.83],
    'Net Income to Common Margin': [6.00, 5.39, 5.38, 9.00, 10.34, -0.83],
    'Effective Tax Rate': [23.69, 27.66, 12.95, 16.32, 9.86, null],
    'Dvd Payout Ratio': [40.58, 49.75, 57.65, 42.53, 39.81, null],
    'Sustainable Growth Rate': [27.49, 34.68, 59.62, 393.13, 631.13, null],
  };

  // Prepare data for the graph
  const graphData = [2014, 2015, 2016, 2017, 2018, 2019].map((year, index) => ({
    year,
    'Return on Common Equity': financialData['Return on Common Equity'][index],
    'Return on Assets': financialData['Return on Assets'][index],
    'Return on Capital': financialData['Return on Capital'][index],
  }));

  return (
    <div className="text-xs flex-grow overflow-hidden">
      <div className="flex justify-between bg-gray-800 text-white p-1">
        <span>ADJ Boeing Co/The ASC 842</span>
        <span>Periods 10</span>
        <span className="bg-yellow-500 text-black px-1">Annuals</span>
        <span>Cur FRC (USD)</span>
      </div>
      <div className="flex bg-gray-700 text-white">
        {tabs.map((tab, index) => (
          <span key={index} className="px-2 py-1 border-r border-gray-600">
            {index + 1}) {tab}
          </span>
        ))}
      </div>
      <div className="flex bg-gray-600 text-white overflow-x-auto">
        {subTabs.map((tab, index) => (
          <span
            key={index}
            className={`px-2 py-1 border-r border-gray-500 cursor-pointer ${selectedTab === tab ? 'bg-blue-500' : ''}`}
            onClick={() => setSelectedTab(tab)}
          >
            {index + 11}) {tab}
          </span>
        ))}
      </div>
      <div className="mt-1">
        <table className="w-full text-left">
          <thead>
            <tr className="bg-gray-800 text-white">
              <th className="p-1">In Millions of USD except Per Share</th>
              {[2014, 2015, 2016, 2017, 2018, 2019].map(year => (
                <th key={year} className="p-1">{year} Y</th>
              ))}
            </tr>
            <tr className="bg-gray-700 text-white">
              <th className="p-1">12 Months Ending</th>
              {[2014, 2015, 2016, 2017, 2018, 2019].map(year => (
                <th key={year} className="p-1">12/31/{year}</th>
              ))}
            </tr>
          </thead>
          <tbody>
            {Object.entries(financialData).map(([key, values], index) => (
              <tr key={index} className={index % 2 === 0 ? 'bg-gray-900' : 'bg-black'}>
                <td className="p-1 text-blue-300">{key}</td>
                {values.map((value, i) => (
                  <td key={i} className="p-1 text-yellow-500">
                    {value !== null ? value.toFixed(2) : '-'}
                  </td>
                ))}
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      
      {/* New Graph Section */}
      <div className="mt-4 bg-gray-900 p-4">
        <h3 className="text-white mb-2">Financial Performance Graph</h3>
        <ResponsiveContainer width="100%" height={300}>
          <LineChart data={graphData}>
            <CartesianGrid strokeDasharray="3 3" stroke="#444" />
            <XAxis dataKey="year" stroke="#888" />
            <YAxis stroke="#888" />
            <Tooltip contentStyle={{ backgroundColor: '#333', border: '1px solid #555' }} />
            <Legend />
            <Line type="monotone" dataKey="Return on Common Equity" stroke="#8884d8" />
            <Line type="monotone" dataKey="Return on Assets" stroke="#82ca9d" />
            <Line type="monotone" dataKey="Return on Capital" stroke="#ffc658" />
          </LineChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
};

export default FinancialAnalysis;