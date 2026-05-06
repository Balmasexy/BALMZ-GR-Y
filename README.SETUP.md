# BALMZ Token - Setup Guide

## Project Structure

```
BALMZ-GR-Y/
├── contracts/              # Smart contract files (Solidity)
├── scripts/                # Deployment and utility scripts
├── test/                   # Test files
├── artifacts/              # Compiled contract artifacts (auto-generated)
├── cache/                  # Hardhat cache (auto-generated)
├── .env.example            # Environment variables template
├── .gitignore              # Git ignore rules
├── hardhat.config.js       # Hardhat configuration
├── package.json            # Project dependencies
├── LICENSE                 # MIT License
├── CONTRIBUTING.md         # Contribution guidelines
└── README.md               # Main project documentation
```

## Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/Balmasexy/BALMZ-GR-Y.git
cd BALMZ-GR-Y
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Setup Environment
```bash
# Copy the example environment file
cp .env.example .env

# Edit .env and add your configuration
# You'll need:
# - INFURA_API_KEY (from https://www.infura.io/)
# - ETHERSCAN_API_KEY (from https://etherscan.io/apis)
# - PRIVATE_KEY (your wallet's private key)
```

### 4. Compile Smart Contracts
```bash
npm run compile
```

### 5. Run Tests
```bash
npm run test
```

### 6. Deploy to Testnet
```bash
# Deploy to Sepolia testnet
npm run deploy:sepolia
```

## Available Commands

| Command | Description |
|---------|-------------|
| `npm run compile` | Compile Solidity contracts |
| `npm run test` | Run all tests |
| `npm run test:coverage` | Generate test coverage report |
| `npm run deploy:sepolia` | Deploy to Sepolia testnet |
| `npm run deploy:mainnet` | Deploy to Ethereum mainnet |
| `npm run deploy:localhost` | Deploy to local hardhat node |
| `npm run node` | Start a local Hardhat node |
| `npm run verify` | Verify contracts on Etherscan |
| `npm run clean` | Clean build artifacts |

## Getting API Keys

### Infura API Key
1. Visit [https://www.infura.io/](https://www.infura.io/)
2. Sign up for a free account
3. Create a new project
4. Copy the API key to your `.env` file

### Etherscan API Key
1. Visit [https://etherscan.io/apis](https://etherscan.io/apis)
2. Sign up for a free account
3. Create an API key
4. Copy it to your `.env` file

## Network Configuration

The project supports the following networks:
- **Hardhat**: Local testing environment
- **Localhost**: Local node (requires `npm run node`)
- **Sepolia**: Ethereum testnet (requires testnet ETH)
- **Mainnet**: Ethereum mainnet (requires real ETH)

## Next Steps

1. **Create Smart Contract**: Add your ERC-20 token contract in `contracts/`
2. **Write Tests**: Create test files in `test/`
3. **Create Deployment Script**: Add deployment logic in `scripts/deploy.js`
4. **Deploy**: Run deployment commands when ready

## Important Security Notes

⚠️ **Never commit your `.env` file to GitHub!**
⚠️ **Never share your PRIVATE_KEY!**
⚠️ **Always test on testnet before deploying to mainnet!**

## Troubleshooting

### Module not found errors
```bash
rm -rf node_modules package-lock.json
npm install
```

### Compilation errors
Make sure you have the correct Solidity version specified in `hardhat.config.js`

### Network connection errors
1. Check your INFURA_API_KEY in `.env`
2. Verify your internet connection
3. Make sure you're using a valid network

## Support

For issues and questions:
- Open an issue on [GitHub Issues](https://github.com/Balmasexy/BALMZ-GR-Y/issues)
- Check the [CONTRIBUTING.md](CONTRIBUTING.md) guidelines
- Review the [README.md](README.md) for more information

---

**Created with ❤️ by Balmasexy**
