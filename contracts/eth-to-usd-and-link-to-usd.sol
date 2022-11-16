// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract TestChainlink {
    AggregatorV3Interface internal eth_usd_price_feed;
    AggregatorV3Interface internal link_usd_price_feed;

    /**
     * Network: Goerli
     * Aggregator: ETH/USD
     * Address: 0x9326BFA02ADD2366b30bacB125260Af641031331
     * Aggregator: LINK/USD
     * Address: 0xD627B1eF3AC23F1d3e576FA6206126F3c1Bd0942
     */
    constructor() {
        eth_usd_price_feed = AggregatorV3Interface(
            0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
        );
        link_usd_price_feed = AggregatorV3Interface(
            0xb4c4a493AB6356497713A78FFA6c60FB53517c63
        );
    }

    /**
     * Returns the latest price
     */
    function getETHUSD() public view returns (int) {
        (
            uint80 roundID,
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = eth_usd_price_feed.latestRoundData();

        return price;
    }

    function getLINKUSD() public view returns (int) {
        (
            uint80 roundID,
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = link_usd_price_feed.latestRoundData();

        return price;
    }
}
