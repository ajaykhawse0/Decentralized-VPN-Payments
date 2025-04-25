# 🛡️ Decentralized VPN Payments

## 📖 Project Description

Decentralized VPN Payments is a blockchain-based solution designed to facilitate secure, trustless payments for VPN services. By utilizing smart contracts, it removes the need for third-party intermediaries, ensuring that users' identities and transactions remain private and transparent.

Users can pay a fixed fee to gain access to VPN services, and service providers can securely withdraw their earnings.

---

## 🎯 Project Vision

The vision of this project is to build a decentralized ecosystem for VPN services where:
- No centralized authority can block or restrict payments.
- Users maintain full privacy and anonymity.
- Trust is enforced through code, not intermediaries.

This aligns with the broader Web3 vision of a free, private, and decentralized internet.

---

## ✨ Key Features

- **Smart Contract-Based Payments**: Ensures that payments are handled securely and transparently on the Ethereum blockchain.
- **Access Control**: Users are granted VPN access after successful on-chain payment.
- **Owner Withdrawals**: Only the VPN provider (contract owner) can withdraw collected funds.
- **Immutable Logs**: Events like payments and access grants are recorded on-chain.
- **Dynamic Pricing**: Owner can update the VPN service price.
- **Refund Mechanism**: Owner can refund users if needed.
- **Access Revocation**: Owner can revoke access in case of misuse.
- **Transparency Tools**: Anyone can check contract balance or user access state.

---

## 🚀 Future Scope

- **Subscription Plans**: Allow recurring payments and long-term subscriptions using ERC20 tokens.
- **Multi-Network Support**: Integrate with cheaper and faster networks like Polygon or Optimism.
- **NFT Access Passes**: Provide users with tradable access tokens as NFTs for exclusive VPN plans.
- **Analytics Dashboard**: Build a frontend to show usage, payments, and contract status in real-time.
- **Oracles Integration**: Use decentralized oracles to verify VPN uptime and handle service refunds.

---

## 🧑‍💻 Tech Stack

- **Solidity**: For writing the smart contract logic.
- **Ethereum (or compatible EVM chain)**: For deploying the contract.



---

## 🧪 How to Use

1. Deploy the smart contract with your desired VPN price (in wei).
2. Users call `payForVPN()` to pay and gain access.
3. You (the owner) can call `withdraw()` to collect payments.
4. Check access status using `checkAccess(address)`.
5. Update price via `changePrice(newPriceInWei)`.
6. Refund specific users using `refund(address)`.
7. Revoke access to any address using `revokeAccess(address)`.
8. Monitor funds using `getContractBalance()`.

---

## 📜 Contract Details

**Deployed Address:**  
`0xA0C7092287109e53De7777EB3F0c2e2Eb67E6302`

---

## 📷 Interface Snapshot



![VPN Payment Interface](https://github.com/user-attachments/assets/319aeb95-42cd-46aa-b706-5f33bd143975)
