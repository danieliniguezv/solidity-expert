# Homework 1
1. Why is client diversity important for Ethereum?
It makes the network more resilient to attacks and bugs. A bug in an individual 
client is less of a risk to the network when representing a minority of 
Ethereum nodes. In the case of an attack it means that the while the attack 
might affect a particular client it will not be replicable in the same way in 
another client.
2. Where is the Ethereum state held?
In the nodes of the network.
3. What is a replay attack, and which 2 pieces of information can prevent it?
A replay attack is a form of network attack in which valid data transmission is 
maliciously or fraudulently repeated or delayed. On the blockchain context such 
attack is taking a transaction on one blockchain and maliciously repeting it on 
another blockchain. This could be the case for perforimng said transactions on 
a testnet and repeating the transaction on a mainnet.

The way to prevent this was introduced with the [EIP-155](https://eips.ethereum.org/EIPS/eip-155) by adding 3 elements 
to the transaction hash where the `v` of the signature is set using `CHAIN_ID` as 
one of the parameters to calculate `v`.
4. In a contract how do we know who called a view function?
It's not possible since it is not a transaction, i.e. it does not modify the 
state of the blockchain, it's a read-only operation.
