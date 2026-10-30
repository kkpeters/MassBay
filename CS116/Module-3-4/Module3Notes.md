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



