# Brainrot Finance

Live market data and your own investment portfolios, in Claude.

- **Prices for almost anything** — US and global stocks, ETFs, crypto and indices; Indian mutual funds; private and pre-IPO companies (Hiive, Forge Global, Nasdaq Private Market); gold and silver rates in Indian cities; Indian property circle rates; money-transfer exchange rates.
- **History and research** — price history, company profiles, news, financial statements, analyst recommendations, holders, dividends and options.
- **Your portfolios** — add buys, sells, income and recurring contributions under your brokers and accounts, see every holding valued live in your base currency with totals, P&L and day change, and undo any change.

## Install

```
/plugin marketplace add Brainrot-Creations/plugins
/plugin install brainrot-finance@brainrot-creations
```

Then run `/brainrot-finance:setup`. You'll sign in with your Brainrot account and approve Claude on brainrotcreations.com; market data works right away, and setup walks you through creating your first portfolio.

## Tools

| Tool | What it does |
|---|---|
| `search` | Find stocks, funds, private companies, property localities and metal rates |
| `quote` | Current price for one or more assets, any kind |
| `price_history` | Price history as dated points |
| `company` | Profile, people, funding, news and research for a company |
| `fundamentals` | Financials, recommendations, holders, dividends, splits, options |
| `currency_rate` | Money-transfer rate, fee and amount received |
| `portfolio_view` | Your portfolio's value, holdings, transactions, structure and versions |
| `portfolio_add` | Add transactions |
| `portfolio_update` / `portfolio_remove` | Change, move or remove entries |
| `portfolio_settings` | Base currency |
| `portfolio_replace` | Import a whole portfolio |
| `portfolio_undo` | Go back to an earlier version |

## Data and privacy

Your portfolios are stored in your Brainrot account and only you, and apps you've approved, can read or change them; disconnect an app any time at [connected apps](https://www.brainrotcreations.com/redirect/oauth/consent). Market data comes from third-party sources and can be delayed; private-market prices are indicative. Brainrot Finance is for information only — it doesn't give investment advice or place trades.

[Privacy policy](https://www.brainrotcreations.com/privacy) · [Terms](https://www.brainrotcreations.com/terms) · [Support](https://www.brainrotcreations.com/support) · [API docs](https://mcp.finance.brainrotcreations.com/docs)
