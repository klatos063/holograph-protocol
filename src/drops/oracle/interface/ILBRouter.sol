// SPDX-License-Identifier: MIT

/*SOLIDITY_COMPILER_VERSION*/

import {ILBPair} from "./ILBPair.sol";

interface ILBRouter {
  function getSwapIn(
    ILBPair _LBPair,
    uint256 _amountOut,
    bool _swapForY
  ) external view returns (uint256 amountIn, uint256 feesIn);
}
