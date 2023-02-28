async function main() {
  const MetaVote = await ethers.getContractFactory('MetaVote');
  const metaVote = await MetaVote.deploy();

  await metaVote.deployed();

  console.log('Metavote deployed to:', metaVote.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});