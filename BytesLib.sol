// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library BytesLib {
    function bytesToHexString(bytes1[6] memory data) internal pure returns (string memory) {
        bytes memory alphabet = "0123456789abcdef";
        bytes memory str = new bytes(data.length * 2);
        for (uint256 i = 0; i < data.length; i++) {
            str[i * 2] = alphabet[uint256(uint8(data[i] >> 4))];
            str[i * 2 + 1] = alphabet[uint256(uint8(data[i] & 0x0F))];
        }
        return string(str);
 
   }

function bytesToHexString(bytes memory input) internal pure returns (string memory) {
    bytes memory alphabet = "0123456789abcdef";
    bytes memory str = new bytes(input.length * 2);

    for (uint256 i = 0; i < input.length; i++) {
        str[i * 2] = alphabet[uint8(input[i] >> 4)];
        str[i * 2 + 1] = alphabet[uint8(input[i] & 0x0f)];
    }

    return string(str);
}

function bytes2hex(bytes memory b) internal pure returns (string memory) {
    bytes memory alphabet = "0123456789abcdef";
    bytes memory s = new bytes(2 * b.length);

    for (uint i = 0; i < b.length; i++) {
        s[2*i] = alphabet[uint(uint8(b[i] >> 4))];
        s[2*i+1] = alphabet[uint(uint8(b[i] & 0x0f))];
    }

    return string(s);
}


}
