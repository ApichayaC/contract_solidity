import { ethers } from "hardhat"

describe("Happypig Test",function (){
    it("Test success",async function () {
        const AngryBird = await ethers.getContractFactory('Happypig')
        const bird = await AngryBird.deploy('noknok')
        await bird.deployed()

        await bird.setFood(2)
        await bird.activity(0)
        await bird.specialFood('banana')

        console.log('Name :', await bird.getName());
        
        console.log('Energy :', await bird.getEnergy());
        console.log('Status :', await bird.getStatus());
        console.log('Dead :' , await bird.dead());
        
    })
})