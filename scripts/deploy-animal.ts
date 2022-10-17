import { ethers } from "hardhat";

async function main() {

    const Animal = await ethers.getContractFactory('Animal');
    const animal1 = await Animal.deploy() ;

    (await animal1).deployed()
    
    console.log('Contract Address :',  animal1.address);
    
 
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
  