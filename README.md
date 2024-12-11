# MetaTradeBot


## Introduction

MetaTradeBot is a free and open-source Forex autonomous trading robot
designed for the MetaTrader 4 and 5 (MT4/MT5) platforms.

# Features

Below is the list of features for **MetaTradeBot**, a powerful trading robot designed for automated trading:

- **Algorithmic Trading**: Designed for automated trading on Forex markets using algorithms.
- **Automation**: Can run trading strategies automatically on MetaTrader platforms.
- **Backtesting and Optimization**: Supports testing and refining strategies before live trading.
- **Community Contributions**: Hosted on GitHub, welcoming contributions from traders and developers.
- **Condition-Based Task Actions**: Users can set up custom tasks where specific market conditions trigger predefined actions, enhancing automation and responsiveness.
- **Custom Indicators**: Users can add or modify custom indicators for trading analysis.
- **Customizable Parameters**: Traders can adjust numerous parameters to tailor strategies to their specific trading style, risk tolerance, and market conditions.
- **Educational Tool**: Popular among those learning about Forex trading and algorithmic strategies.
- **Free and Open-Source**: MetaTradeBot is available at no cost and its source code is open for anyone to view, modify, and improve.
- **High Customizability**: Allows users to tweak settings for indicators, risk, and money management.
- **Independent Strategy Execution**: Each strategy within MetaTradeBot can operate independently or in conjunction with others, providing robustness through diversification.
- **MQL Compatibility**: Works with MQL4 and MQL5 languages for MetaTrader 4 and 5.
- **Modular Design**: Allows for the implementation of multiple trading strategies within a single framework, enabling users to switch or combine strategies as market conditions change.
- **Multi-Timeframe Analysis**: Capable of analyzing markets across different timeframes simultaneously.
- **Multiple EAs**: Includes Lite, Advanced, Rider, and Elite versions, each with a different trading approach.
- **No Coding Required**: Users can use pre-built functions without needing to code from scratch.
- **Real-Time Market Analysis**: Uses real-time data for decision-making in trades.
- **Risk Management**: Offers tools to manage trading risks effectively.
- **Technical Analysis**: Implements various strategies based on technical indicators.


## Downloads

### Installation

### MetaTrader 5 Platform
1. **Download MetaTrader 5**:  
   - Visit [metatrader5.com](https://www.metatrader5.com/) or your broker's site to download the platform.
2. **Install the Platform**:  
   - Run the downloaded executable file and follow the steps in the installation wizard.
3. **Create or Log into an Account**:  
   - After installation, the Terminal window will open. You can create a demo account by filling in the required details and selecting a deposit amount, or log into an existing account.

---

### MetaTrader 4 Platform
1. **Download MetaTrader 4**:  
   - Visit your broker's website or [MetaQuotes](https://www.metaquotes.net).  
   - Alternatively, click [this link](https://www.metaquotes.net/en/metatrader4) for direct access to the download page.  
   - At the bottom, click the **Download MetaTrader 4 Terminal** button.
2. **Install the Platform**:  
   - Run the downloaded executable file and follow the steps in the installation wizard.
3. **Create or Log into an Account**:  
   - After installation, the Terminal window will open. You can create a demo account by filling in the required details and selecting a deposit amount, or log into an existing account.

---

### Installation of `MetaTradeBot`
1. **Run MetaTrader Trading Terminal**:  
   - Open the `terminal.exe` file of your MetaTrader installation.
2. **Open the Data Folder**:  
   - Click on **File > Open Data Folder** in the top menu bar.
3. **Copy the EA File**:  
   - Copy the provided `EX4` or `EX5` file into the folder (`MQL?/Experts`) that opens.
   - _Note: Check the Releases tab for the latest compiled files (assets)._
4. **Enable Automated Trading**:  
   - Go to **Tools > Options**, navigate to the **Expert Advisors** tab, and enable the following options:  
     - **Allow automated trading**  
     - **Allow DLL imports**  
   - Click **OK** to save changes.
5. **Attach `MetaTradeBot` to a Chart**:  
   - Click **File > New Chart**, select **EURUSD** (recommended), and switch to a desired timeframe (e.g., M1).  
   - In the **Navigator** window, locate `MetaTradeBot` and attach it to the chart either by right-clicking or dragging and dropping it.  
   - If you don't see `MetaTradeBot`, refresh or restart your terminal.
6. **Configure Expert Settings**:  
   - When the `MetaTradeBot` pop-up appears:  
     - Navigate to the **Common** tab.  
     - Enable **Allow live trading**.
7. **Activate `MetaTradeBot`**:  
   - Ensure a smiley face appears in the upper-right corner of your chart, indicating that the EA is active.
   - To toggle `MetaTradeBot` on or off, use the **AutoTrading** button in the top bar.

### Compilation

To download the source code along with all dependencies, use the following Git command:

    git clone --branch master --recursive https://github.com/CHAINSOFTPK/MetaTradeBot.git

After cloning, place the **MetaTradeBot** directory into the `Experts` folder located in
your MetaTrader platform's MQL directory.

