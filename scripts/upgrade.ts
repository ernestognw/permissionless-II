import { ethers, defender } from "hardhat";

async function main() {
  const BoxV2 = await ethers.getContractFactory("BoxV2");

  const proposal = await defender.proposeUpgradeWithApproval('0x64ABDEa398dd1e8Bd60C250Ee0Cd3babAD5299F5', BoxV2);

  console.log(`Upgrade proposed with URL: ${proposal.url}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
