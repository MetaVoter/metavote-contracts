// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract MetaVote {
    // Storage
    mapping (bytes32 => address) public elections;

    // Events
    event ElectionCreated(bytes32 indexed electionId, string metadataURI, bytes metadataBlob);
    event Vote(address indexed voter, bytes value, bytes32 indexed electionId);
    event TagAdded(bytes32 indexed electionId, string indexed tag);

    /// @notice
    /// Election metadata should conform to the MetaVote JSON Schema.
    /// @param electionId  A user-generated unique identifier for the election
    /// @param metadataURI  A URI to the metadata describing the election. Immutable data is preferred.
    /// @param metadataBlob  A blob of metadata conforming to the MetaVote election JSON schema.
    function createElection(
        bytes32 electionId,
        string metadataURI,
        bytes metadataBlob,
        ) external {
            elections[electionId] = msg.sender;
            emit ElectionCreated(electionId, metadataURI, metadataBlob);
        }
  }

