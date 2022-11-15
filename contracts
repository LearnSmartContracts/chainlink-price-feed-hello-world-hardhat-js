// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: Goerli
     * Aggregator: ETH/USD
     * Address: 0x48731cF7e84dc94C5f84577882c14Be11a5B7456
     * Aggregator: Link/USD
     */Address: 0xb4c4a493AB6356497713A78FFA6c60FB53517c63
    constructor() {
        priceFeed = AggregatorV3Interface(
            0x48731cF7e84dc94C5f84577882c14Be11a5B7456
        );
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            ,
            /*uint80 roundID*/
            int price, /*uint startedAt*/
            ,
            ,

        ) = /*uint timeStamp*/
            /*uint80 answeredInRound*/
            priceFeed.latestRoundData();
        return price;
    }
}
