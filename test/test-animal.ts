import { ethers } from "hardhat"

describe("Animal Test",function (){
    it("Test success",async function () {
        const Animal = await ethers.getContractFactory('Animal')
        const animal1 = await Animal.deploy()
        await animal1.deployed()
    })
})