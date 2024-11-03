//have our invariants

// //what are our invariants

// //1. the total supply of dsc should be less than the total value of collateral
// //2. getter view functions should never revert

// // SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// import {Test, console} from "forge-std/Test.sol";
// import {StdInvariant} from "forge-std/StdInvariant.sol";
// import {DeployDSC} from "../../script/DeployDSC.s.sol";
// import {DSCEngine} from "../../src/DSCEngine.sol";
// import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
// import {HelperConfig} from "../../script/HelperConfig.s.sol";
// import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// contract OpenInvariantsTest is StdInvariant, Test {
//     DeployDSC deployer;
//     DSCEngine dsce;
//     DecentralizedStableCoin dsc;
//     HelperConfig config;
//     address public ethUsdPriceFeed;
//     address public btcUsdPriceFeed;
//     address public weth;
//     address public wbtc;
//     uint256 public deployerKey;

//     function setUp() public {
//         deployer = new DeployDSC();
//         (dsc, dsce, config) = deployer.run();
//         (ethUsdPriceFeed, btcUsdPriceFeed, weth, wbtc, deployerKey) = config
//             .activeNetworkConfig();
//         targetContract(address(dsce));
//     }

//     function invariant_protocolMustHaveMoreValueThanTotalSupply() public view {
//         //get value of all the collateral in the protocol
//         //compare it to all the debt (total supply of dsc)
//         uint256 totalSupply = dsc.totalSupply();
//         uint256 totalWethDeposited = IERC20(weth).balanceOf(address(dsce));
//         uint256 totalWbtcDeposited = IERC20(wbtc).balanceOf(address(dsce));

//         uint256 wethValue = dsce.getUsdValue(weth, totalWethDeposited);
//         uint256 wbtcValue = dsce.getUsdValue(wbtc, totalWbtcDeposited);

//         console.log("weth value: ", wethValue);
//         console.log("wbtc value: ", wbtcValue);
//         console.log("total supply: ", totalSupply);

//         assert(wethValue + wbtcValue >= totalSupply);
//     }
// }
