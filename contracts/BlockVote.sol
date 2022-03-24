// // SPDX-License-Identifier: GPL-3.0

// pragma solidity >=0.5.0 <0.9.0;

// struct Admin {
//     string name;
//     string mobileNo;
//     string walletKey;
// }

// struct ECI {
//     string name;
//     string mobileNo;
//     string walletKey;
// }

// struct Voter {
//     string name;
//     string mobileNo;
//     string homeAddress;
//     string aadharCardNo;
//     string voterId;
//     string walletKey;
//     bool isVoted;

// }

// contract BlockVote {
//     Voter[] public voters;
//     Admin[] public admins;
//     string votingPhase = "preVoting"; // Voting, Result
    
//     // voterid   : Voter;
//     mapping(string=>Voter) public map_voterid_details;
//     function setMapVoterDetails(string memory _voterid, Voter memory v) public {
//         map_voterid_details[_voterid] = v;
//     }

//     function hasVoted(string memory _voterid) public view returns(bool){
//         return map_voterid_details[_voterid].isVoted;
//     }

//     // Voter ////////////////////////////////////////// 
    
//     function addVoter(Voter memory item) public {
//         if(keccak256(abi.encodePacked((map_voterid_details[item.voterId].name))) != keccak256(abi.encodePacked((""))))
//             voters.push(item);
//     }

//     function voterLength() public view returns(uint) {
//         return voters.length;
//     }
//     /////////////////////////////////////////////////

//     // Admin /////////////////////////////////////////
    
//     function addAdmin(Admin memory item) public {
//         admins.push(item);
//     }

//     function adminLength() public view returns(uint) {
//         return admins.length;
//     }
//     ////////////////////////////////////////////////////



// }

// contract AdminCon {
//     Admin public a;

//     constructor(string memory _name, string memory _mobileNo, string memory  _walletKey) {
//         a.name = _name;
//         a.mobileNo = _mobileNo;
//         a.walletKey = _walletKey;
//     }

// }

// contract ECICon is BlockVote {
//     Admin public e;

//     constructor() {
//         e.name = "ECI";
//         e.mobileNo = "9876543210";
//         e.walletKey = "0xB663Fde35c596E597A5660de6728b4bC302cb677";
//     }

//     function getECI() public view returns(string memory) {
//        return e.walletKey;
//     }

//     function setAdmin(string memory _name, string memory _mobileNo, string memory _walletKey) public {
//         Admin memory newAdmin = Admin({
//             name:_name, 
//             mobileNo:_mobileNo,
//             walletKey:_walletKey
//         });
//         addAdmin(newAdmin); 
//     }

//     function startVoting() public {
//         votingPhase = "Voting";
//     }

//     function endVoting() public {
//         votingPhase = "Result";
//     }
// }

// contract VoterCon is BlockVote {
//     Voter public v;
    
//     constructor(string memory _name, string memory _mobileNo, string memory _homeAddress,
//      string memory _aadharCardNo, string memory _voterId, string memory _walletKey) {
//         v.name = _name;
//         v.mobileNo = _mobileNo;
//         v.homeAddress = _homeAddress;
//         v.aadharCardNo = _aadharCardNo;
//         v.voterId = _voterId;
//         v.walletKey = _walletKey;
//         v.isVoted = false;
//         addVoter(v);
//         setMapVoterDetails(_voterId, v);
//      }

    

// }

