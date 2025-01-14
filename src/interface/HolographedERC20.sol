/*HOLOGRAPH_LICENSE_HEADER*/

/*SOLIDITY_COMPILER_VERSION*/

/// @title Holograph ERC-20 Fungible Token Standard
/// @dev See https://holograph.network/standard/ERC-20
///  Note: the ERC-165 identifier for this interface is 0xFFFFFFFF.
interface HolographedERC20 {
  // event id = 1
  function bridgeIn(
    uint32 _chainId,
    address _from,
    address _to,
    uint256 _amount,
    bytes calldata _data
  ) external returns (bool success);

  // event id = 2
  function bridgeOut(
    uint32 _chainId,
    address _from,
    address _to,
    uint256 _amount
  ) external returns (bytes memory _data);

  // event id = 3
  function afterApprove(address _owner, address _to, uint256 _amount) external returns (bool success);

  // event id = 4
  function beforeApprove(address _owner, address _to, uint256 _amount) external returns (bool success);

  // event id = 5
  function afterOnERC20Received(
    address _token,
    address _from,
    address _to,
    uint256 _amount,
    bytes calldata _data
  ) external returns (bool success);

  // event id = 6
  function beforeOnERC20Received(
    address _token,
    address _from,
    address _to,
    uint256 _amount,
    bytes calldata _data
  ) external returns (bool success);

  // event id = 7
  function afterBurn(address _owner, uint256 _amount) external returns (bool success);

  // event id = 8
  function beforeBurn(address _owner, uint256 _amount) external returns (bool success);

  // event id = 9
  function afterMint(address _owner, uint256 _amount) external returns (bool success);

  // event id = 10
  function beforeMint(address _owner, uint256 _amount) external returns (bool success);

  // event id = 11
  function afterSafeTransfer(
    address _from,
    address _to,
    uint256 _amount,
    bytes calldata _data
  ) external returns (bool success);

  // event id = 12
  function beforeSafeTransfer(
    address _from,
    address _to,
    uint256 _amount,
    bytes calldata _data
  ) external returns (bool success);

  // event id = 13
  function afterTransfer(address _from, address _to, uint256 _amount) external returns (bool success);

  // event id = 14
  function beforeTransfer(address _from, address _to, uint256 _amount) external returns (bool success);
}
