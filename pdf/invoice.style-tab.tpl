{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/OSL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/OSL-3.0 Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}



{assign var=color_header        value="#f0f0f0"}

{assign var=color_border        value="#000000"}
{assign var=color_border_light  value="#888888"}

{assign var=color_line_even     value="#ffffff"}
{assign var=color_line_odd      value="#fafafa"}

{assign var=color_text_normal   value="#444444"}
{assign var=color_text_dark     value="#000000"}
{assign var=color_text_light    value="#888888"}

{assign var=font_size_text      value="8pt"}
{assign var=font_size_header    value="8pt"}
{assign var=font_size_product   value="6pt"}

{assign var=height_header       value="20px"}

{assign var=table_padding_big   value="4px"}
{assign var=table_padding_small value="2px"}

{*
 * Definitions to be removed after customization is done.
 *}

{assign var=table_padding       value="4px"}


{*
 * Some styles don't seem to work properly viz. element 'th' is not 'bold'.
 * Setting 'font-weight: bold;' doesn't have any impact either.
 *
 * However, assigning a class containing these attributes seems to be working.
 *}

<style>
  table {
    margin: 0px;
    padding: 0px;
    table-layout: fixed;
    border-collapse: collapse;
    border: none;
  }

  .sp {
    color: {$color_text_normal};
    font-size: {$font_size_text};
    vertical-align: middle;
    white-space: nowrap;
  }

  .sp-bold {
    font-weight: bold;
  }

  .sp-center {
    text-align: center;
  }

  .sp-left {
    text-align: left;
  }

  .sp-right {
    text-align: right;
  }

  .sp-border {
    border: 1px solid {$color_border};
  }

  .sp-border-light {
    border: 1px solid {$color_border_light};
  }

  .sp-head {
    background-color: {$color_header};
    font-weight: bold;
  }

  .sp-row-head {
    background-color: {$color_header};
  }


  /* ---- Address table     ----- */

  table#addresses-tab {
    width: 100%;
    padding: {$table_padding_small} {$table_padding_big};
  }

  table#addresses-tab th.label {
    width: 10%;
  }

  table#addresses-tab td.addr {
    width: 40%;
  }

  /* ---- Summary table     ----- */

  table#summary-tab {
    width: 100%;
    padding: {$table_padding_small} {$table_padding_big};
    border: 1px solid {$color_border};
  }

  table#summary-tab th {
    width: 20%;
  }

  table#summary-tab td {
    width: 30%;
  }

  /* ---- Product table     ----- */

  table.product {
    width: 100%;
    padding: {$table_padding_small};
    font-size: {$font_size_header};
  }

  table.product th,
  table.product td {
    vertical-align: middle;
    border: 1px solid {$color_border};
  }

  .product-sno {
    min-width: 3%;
    width: 3%;
  }

  .product-sku {
    min-width: 6%;
    width: 6%;
  }

  .product-hsc {
    min-width: 6%;
    width: 6%;
  }

  .product-desc {
    min-width: 15%;
    width: 15%;
  }

  .product-discount {
    min-width: 5%;
    width: 5%;
  }

  .product-price {
    min-width: 6%;
    width: 6%;
    border-bottom: none !important;
  }

  .product-price-cont {
    width: 6%;
    border-top: none !important;
  }

  .product-qty {
    min-width: 4%;
    width: 4%;
  }

  .product-tax {
    min-width: 12%;
    width: 12%;
  }

  .product-tax-rate {
    min-width: 5%;
    width: 5%;
  }

  .product-tax-amount {
    min-width: 7%;
    width: 7%;
  }

  .product-total {
    min-width: 7%;
    width: 7%;
  }

  .product-total-cont {
    min-width: 7%;
    width: 7%;
  }

  /* ---- Tax table         ----- */

  table#tax-tab {
    width: 100%;
    padding: {$table_padding_small};
    border: 1px solid {$color_border};
  }

  /* ---- Payments Table    ----- */

  table#payment-tab {
    width: 100%;
    padding: {$table_padding_small};
    border: 1px solid {$color_border};
  }

  table.payments {
    width: 100%;
    padding: {$table_padding_small};
  }

  /* ---- Shipping Table    ----- */

  table#shipping-tab {
    width: 100%;
    padding: {$table_padding_small};
  }
	table#total-tab {
		padding: {$table_padding};
		border: 1pt solid {$color_border};
	}
	table#note-tab {
		padding: {$table_padding};
		border: 1px solid {$color_border};
	}
	table#note-tab td.note{
		word-wrap: break-word;
	}

	tr.discount th.header {
		border-top: 1px solid {$color_border};
	}

	tr.color_line_even {
		background-color: {$color_line_even};
	}

	tr.color_line_odd {
		background-color: {$color_line_odd};
	}

	tr.customization_data td {
	}

	th.header {
		font-size: {$font_size_header};
		height: {$height_header};
		background-color: {$color_header};
		vertical-align: middle;
		text-align: center;
		font-weight: bold;
	}

	th.header-right {
		font-size: {$font_size_header};
		height: {$height_header};
		background-color: {$color_header};
		vertical-align: middle;
		text-align: right;
		font-weight: bold;
	}

	th.tva {
		background-color: {$color_header};
		vertical-align: middle;
		font-weight: bold;
	}

	tr.separator td {
		border-top: 1px solid #000000;
	}

	.left {
		text-align: left;
	}

	.fright {
		float: right;
	}

	.right {
		text-align: right;
	}

	.center {
		text-align: center;
	}

	.bold {
		font-weight: bold;
	}

	.border {
		border: 1px solid black;
	}

	.no_top_border {
		border-top:hidden;
		border-bottom:1px solid black;
		border-left:1px solid black;
		border-right:1px solid black;
	}

	.grey {
		background-color: {$color_header};

	}

	/* This is used for the border size */
	.white {
		background-color: #FFFFFF;
	}

	.big,
	tr.big td{
		font-size: 110%;
	}

	.small, table.small th, table.small td {
		font-size:small;
	}
</style>
