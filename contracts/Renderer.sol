//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./SVG.sol";
import "./Utils.sol";
import "./IRenderer.sol";

contract Renderer is IRenderer {
    function render(uint256 _tokenId) public pure returns (string memory) {
        return string.concat(
            '<svg xmlns="http://www.w3.org/2000/svg" width="300" height="300" style="background:#000">',
            SVG.text(
                string.concat(
                    SVG.prop("x", "20"), SVG.prop("y", "40"), SVG.prop("font-size", "22"), SVG.prop("fill", "white")
                ),
                string.concat(SVG.cdata("Hello, token #"), utils.uint2str(_tokenId))
            ),
            SVG.rect(
                string.concat(
                    SVG.prop("fill", "purple"),
                    SVG.prop("x", "20"),
                    SVG.prop("y", "50"),
                    SVG.prop("width", utils.uint2str(160)),
                    SVG.prop("height", utils.uint2str(10))
                ),
                utils.NULL
            ),
            "</svg>"
        );
    }

    function example() external pure returns (string memory) {
        return render(1);
    }
}
