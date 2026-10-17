---
name: setup
description: Set up Brainrot Finance after installing it - confirm the user is signed in and create their first portfolio (base currency, then their holdings). Use when the user runs setup, says they just installed or connected Brainrot Finance, or asks how to start tracking their investments.
---

# Set up Brainrot Finance

Get the user from "just installed" to a portfolio they can value. Explicit instructions from the user override these steps; skip anything they've already done or don't want.

## Input

Nothing up front. Ask only for what a step needs.

## Steps

1. **Check sign-in and existing portfolios.** Call `portfolio_list`.
   - If the tool asks for sign-in or returns a 401, tell the user to connect Brainrot Finance with their Brainrot account (they approve it on brainrotcreations.com), then stop until they have.
   - If they already have a portfolio with holdings, say so, call `portfolio_value` to show it, and stop: setup is done.
2. **Base currency.** Ask which currency totals should be shown in (for example USD or INR). Don't assume one from their location or language. Set it with `portfolio_settings` once the portfolio exists, or pass it as `baseCurrency` on the first `portfolio_add`.
3. **Holdings.** Ask where they invest (brokers or platforms, and accounts within them) and what they hold. For each holding you need a symbol or name, quantity, price per unit, date and currency. Ask for anything missing; never invent a price, quantity or date. Add them with `portfolio_add`, using the platform and account as the `path` (for example `["Robinhood", "Individual"]`).
   - If they paste a full export or a `transactions.json` document, use `portfolio_replace` instead, after confirming it should replace the empty portfolio.
4. **Show the result.** Call `portfolio_value` and summarise the total, the largest holdings and anything priced at cost because no live price was found.
5. **Tell them what's next:** they can ask for its value any time, add or edit transactions in plain language, and undo any change (`portfolio_undo`).

## Output

A short confirmation of what was set up, followed by the portfolio summary from step 4.

## Don't

- Don't give investment advice or recommend buying or selling anything.
- Don't add transactions the user hasn't confirmed.
- Don't fill in tool results yourself; if a tool fails, say what failed and offer to retry.
