# Blockchain-Based Luxury Goods Authentication

This decentralized platform provides an immutable record of luxury item authenticity from production through ownership transfers and maintenance. By leveraging blockchain technology, the system creates a transparent verification ecosystem that combats counterfeiting while enhancing consumer confidence.

## System Overview

The Blockchain-Based Luxury Goods Authentication platform consists of four primary smart contracts:

1. **Manufacturer Verification Contract**: Validates authentic luxury producers and brands
2. **Product Registration Contract**: Documents unique luxury items with digital certificates
3. **Ownership Transfer Contract**: Tracks the complete chain of possession
4. **Service History Contract**: Records maintenance, repairs, and restoration work

## Getting Started

### Prerequisites

- Node.js (v16.0+)
- Blockchain development environment (Truffle/Hardhat)
- Web3 library
- NFC/RFID integration capability
- Digital wallet (MetaMask or similar)

### Installation

1. Clone the repository
   ```
   git clone https://github.com/yourusername/luxury-authentication.git
   cd luxury-authentication
   ```

2. Install dependencies
   ```
   npm install
   ```

3. Compile smart contracts
   ```
   npx hardhat compile
   ```

4. Deploy to test network
   ```
   npx hardhat run scripts/deploy.js --network testnet
   ```

## Smart Contract Architecture

### Manufacturer Verification Contract
Establishes a registry of authenticated luxury brands and producers with verified digital identities. Records manufacturing facilities, product lines, and authorized representatives to prevent counterfeit producer registration.

### Product Registration Contract
Creates digital certificates for individual luxury items including watches, handbags, jewelry, and fashion pieces. Each item receives a unique identifier linked to production details, materials, craftsmanship features, and authenticity markers.

### Ownership Transfer Contract
Documents the complete chain of custody from manufacturer to current owner. Records each transfer including seller, buyer, transaction date, and verification methodology used during the transfer process.

### Service History Contract
Maintains a chronological record of all maintenance, repairs, and restoration work performed on the luxury item. Documents service providers, procedures conducted, parts replaced, and any modifications to the original item.

## Usage Examples

### Registering a Luxury Product
```javascript
const productRegistry = await ProductRegistrationContract.deployed();
await productRegistry.registerProduct(
  "BRAND-ROLEX-001", // manufacturer ID
  "Submariner Date Ref. 126610LN",
  "SN12345678",
  "2025-01-15", // production date
  "Watch",
  "https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/details.json",
  "NFC-TAG-UUID-9876543210"
);
```

### Recording Ownership Transfer
```javascript
const ownershipTransfer = await OwnershipTransferContract.deployed();
await ownershipTransfer.transferOwnership(
  "PRODUCT-12345", // product ID
  "OWNER-PREV-5678", // previous owner ID
  "OWNER-NEW-9101", // new owner ID
  1714924800, // timestamp (Unix format)
  "IN-PERSON-VERIFICATION",
  "https://ipfs.io/ipfs/QmRzTuh5EYuMqQNwTwBnmC2qAN7TwH5T9NpifziwKLgMtT/transfer_docs.pdf"
);
```

## Features

- **Brand Protection**: Validates authentic producers to combat counterfeit products
- **Item Authentication**: Creates verifiable digital certificates for luxury goods
- **Ownership Tracking**: Documents complete chain of possession
- **Service Verification**: Records authorized maintenance and repair history
- **Consumer Confidence**: Enables buyers to verify product authenticity
- **Resale Value Preservation**: Enhances item worth through proven provenance

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For questions or support, please contact: support@luxuryauthentication.org
