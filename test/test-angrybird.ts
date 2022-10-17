import { ethers } from "hardhat"

describe("Angrybird Test",function (){
    it("Test success",async function () {
        const AngryBird = await ethers.getContractFactory('Angrybird')
        const bird = await AngryBird.deploy('noknoi')
        await bird.deployed()

        await bird.setFood(2)
        await bird.activity(1)
        await bird.setName('noknoi')
        // await bird.getBonus()

        console.log('Name :', await bird.getName());
        
        console.log('Energy :', await bird.getEnergy());
        console.log('Status :', await bird.getStatus());
        console.log('Dead :' , await bird.dead());
        
    })
})