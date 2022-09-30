/*HOLOGRAPH_LICENSE_HEADER*/

/*SOLIDITY_COMPILER_VERSION*/

interface IHolographOperator {
  function lzReceive(
    uint16 _srcChainId,
    bytes calldata _srcAddress,
    uint64 _nonce,
    bytes calldata _payload
  ) external payable;

  function executeJob(bytes calldata _payload) external payable;

  function jobEstimator(bytes calldata _payload) external payable;

  function send(
    uint256 gas,
    uint256 gasPrice,
    uint32 toChain,
    address msgSender,
    bytes calldata _payload
  ) external payable;

  function getLZEndpoint() external view returns (address lZEndpoint);
}
