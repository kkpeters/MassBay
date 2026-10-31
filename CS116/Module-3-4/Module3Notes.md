# Module 3: Fundamentals of Cryptography 

# Defining Cryptography 

## Steganography: Hidding the Message 

- Steganography attempts to hide the very existence of the message or information. Today, steganography often hides data in a harmless image, audio, or video file. Takes the data, divides it into smaller pieces, and hides these among invisible portions of the file like the header fields the describe the file, between section of the **metadata** (data that is used to describe the content or structure of the actual data). It is one form of obfuscation. 

## Cryptography: Hiding the Meaning 

- One method is **transposition**, in which each letter of hte message is rearranged. "Ran" to "arn". Can be dificult to decrypt. Short messages could be easily broken, but longer ones would be harder, for both an attacker AND the recipient.
- Another method is **substitution**: one letter is substitutted for another. One method is **ROT13**, where the alphabet is rotated by 13 steps (A=N, B=O, etc). Another method is substituting letters with numbers. The **XOR** cypher is based on the binary operation exclusive OR to compare two bits. 
- **Cryptography** is the practice of transforming information so that its meaning cannot be understood by unauthorized parties but can only be understood by approved recipients. 
    - **Encryption**: changing the plaintext into ciphertext.
    - **Decryption**: changing the ciphertext into plaintext. 
    - **Cleartext**: unencrypted data that is not intended to be encrypted. 
    - **Cryptographic algorithm (aka cipher)**: procedure based on a mathematical formula. Designed to be public and well known.
    - A **key** is a mathematical value entered into the algorithm to produce the ciphertext. The key can be used to decrypt ciphertext into plaintext. Key must always be kept secret. 

## Benefits of Cryptography 

- Helps with **mitigation** (reducing the vulnerability or severity).
- Considered **hardening** (technique that makes a system more resilient to attacks. 
- Protects data in each of its three states. 

- Common cases for which cryptography can provide security:
    - **Confidentiality**: ensures only authorized parties can view it
    - **Integrity**: protects the integrity of informaiton, no alternation has been made by an attacker
    - **Authentication**: authentication of the sender can be verified through cryptography 
    - **Nonrepudiation**: repudation is defined as denial, Nonrepudiation is the inability to deny. Nonrepudiation is the process of proving that a user performed an action. 
    - **Obfuscation**: can provide a degree of obfuscation by encrypting data so that an unauthorized user cannot read it.

- **Security through Obscurity** (if the bad guys dont know about it, it is secure) is flawed. 

#### Table 3-1: Information Protections by cryptography 
| Characteristic | Description | Protection |
|---|---|---|
| Confidentiality | Ensures that only authorized parties can view the information | Encrypted information can only be viewed by those who have been provided the key. |
| Integrity | Ensures that the information is correct and no unauthorized person or malicious software has altered the data | Encrypted information cannot be changed except by authorized users who have the key. |
| Authentication | Provides proof of the genuineness of the user | Proof that the sender was legitimate and not an imposter can be obtained. |
| Nonrepudiation | Proves that a user performed an action | Individuals are prevented from fraudulently denying that they were involved in a transaction. |
| Obfuscation | Makes something obscure or unclear | By making it obscure, the original information cannot be determined. |

# Cryptographic Algorithms

## Variations of Algorithms 

### Cipher Machines versus Computers 

- Cipher disk: two rotating disks that helped encrypt and decrypt messages. Enigma is a more modern and enhanced version of this. 
- **One-time Pad**: combined plaintext with a random key. A **pad** is a long sequence of random letters. Combined to produce the ciphertext. To decipher, recipient must have a copy of the pad to reverse the process. Should be used once and then destroyed. 

### Stream Versus Block 

- **Stream cipher**: takes one character and replaces it with another.
- **Block cipher**: manipulates an entire block of plaintext. Blocks can be randomized for extra security.
- **Sponge cipher**: takes an input of any length and returns a string with a requested length. Repeatedly applies a process on the input that has been padded with additional characters until all characters are used. 

## Hash Algorithms 

- A **hash** algorithm creates a unique "digital fingerprint" of a set of data, process is called **hashing**, resulting fingerprint is called a **digest** (or **message digest** or hash) that represents the contents. 
- Hashing protects the integrity of the data. Used primarily for comparison purposes. 
- A hashing algorithm is considered secure if it has these characteristics:
    - **Fixed size**: digest of a short set of data should produce the same size as a digest of a long set of data.
    - **Unique**: two different sets of data cannot produce the same digest 
    - **Original**: it should not be possible to produce a data set that has a desired or predefined hash.
    - **Secure**: the resulting hash cannot be reversed to determine the original plaintext. 
- Secure hash algorithms:
    - **Secure Hash Algorithm (SH5A)**: Most common versions are SHA-256, SHA-384, and SHA-512 (last number is how many bits are in hte digest)
    - **RipeMD**: Uses two different and independent parallel chains of compution that are combined at the end of the process.
    - **Whirlpool**: uses a block cipher and takes any message less than 2256 bits and returns a 512 bit digest. 

## Symmetric Cryptographic Algorithms 

- Use the same key to encrypt and decrypt data. Key must be kept private, therefore also called **private key encryption**. 
- Algorithms:
    - **Advanced Encryption Standard (AES)**
    - **Blowfish and Twofish**

## Asymmetric Cryptographic Algorithms 

- **Public key cryptography** uses two keys instead of one, a private and public key. Public key is public, private key is only known to the person to whom it belongs. 
- When Bob wants to send a secure message to Alice, he uses Alice's public key to encrypt the message, then Alice uses her private key to decrypt it. 
- Important principles:
    - **Key pairs**
    - **Public key**: do not need to be protected.
    - **Private key**
    - **Both directions**: Asymmetric cryptography keys can work in both directions. 

### RSA 

- Asymmetric Algorithm 
- I'm not writing all that down 

### Elliptic Curve Cryptography (ECC)

- Instead of using large prime numbers like with RSA, ECC uses sloping curves.
- I'm also not writing all this down

### Digital Signature Algorithm (DSA)

- Proof that the sender is who they really are (not someone pretending to be your friend), a digital Signature can be made as electronic verification of the sender. 
