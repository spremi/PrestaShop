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
<table class="product">
  <thead>
    <tr>
      <th rowspan="2" class="sp sp-bold sp-center product-sno">{l s='#' d='Shop.Pdf' pdf='true'}</th>
      <th rowspan="2" class="sp sp-bold sp-center product-sku">{l s='SKU#' d='Shop.Pdf' pdf='true'}</th>
      <th rowspan="2" class="sp sp-bold sp-center product-hsc">{l s='HS Code' d='Shop.Pdf' pdf='true'}</th>
      <th rowspan="2" class="sp sp-bold sp-center product-desc">{l s='Description' d='Shop.Pdf' pdf='true'}</th>
      <th class="sp sp-bold sp-center product-price">{l s='MRP' d='Shop.Pdf' pdf='true'}</th>
      <th class="sp sp-bold sp-center product-price">{l s='Price' d='Shop.Pdf' pdf='true'}</th>
      <th rowspan="2" class="sp sp-bold sp-center product-discount">{l s='Less' d='Shop.Pdf' pdf='true'}</th>
      <th rowspan="2" class="sp sp-bold sp-center product-price">{l s='Bill Price' d='Shop.Pdf' pdf='true'}</th>
      <th rowspan="2" class="sp sp-bold sp-center product-qty">{l s='Qty' d='Shop.Pdf' pdf='true'}</th>
      <th colspan="2" class="sp sp-bold sp-center product-tax">SGST</th>
      <th colspan="2" class="sp sp-bold sp-center product-tax">CGST</th>
      <th colspan="2" class="sp sp-bold sp-center product-tax">IGST</th>
      <th class="sp sp-bold sp-center product-total">{l s='Line Total' d='Shop.Pdf' pdf='true'}</th>
    </tr>
    <tr>
      <th class="sp sp-center product-price-cont">{l s='(Incl Tax)' d='Shop.Pdf' pdf='true'}</th>
      <th class="sp sp-center product-price-cont">{l s='(Excl Tax)' d='Shop.Pdf' pdf='true'}</th>
      <th class="sp sp-center product-tax-rate">Rate</th>
      <th class="sp sp-center product-tax-amount">Amount</th>
      <th class="sp sp-center product-tax-rate">Rate</th>
      <th class="sp sp-center product-tax-amount">Amount</th>
      <th class="sp sp-center product-tax-rate">Rate</th>
      <th class="sp sp-center product-tax-amount">Amount</th>
      <th class="sp sp-center product-total-cont">{l s='(Incl Tax)' d='Shop.Pdf' pdf='true'}</th>
    </tr>
  </thead>
  <tbody>
  <!-- PRODUCTS -->
  {counter start=0 print=false}

  {foreach $order_details as $order_detail}
    {assign var=gst_idx value="o{$order_detail.id_order_detail}"}

    {if array_key_exists($gst_idx, $gst_data)}
      {assign var=gst value=$gst_data[$gst_idx]}
    {else}
      {assign var=gst value=[]}
    {/if}

    <tr>
      <!-- S. No -->
      <td class="sp sp-right">{counter}.</td>
      <!-- SKU -->
      <td class="sp sp-left">{strip}
        {if isset($order_detail.product_reference) && !empty($order_detail.product_reference)}
          {$order_detail.product_reference}
        {/if}
      {/strip}</td>
      <!-- HS Code -->
      <td class="sp sp-left"></td>
      <!-- Desc -->
      <td class="sp sp-left">{$order_detail.product_name}</td>
      <!-- MRP -->
      <td class="sp sp-right">{strip}
        {displayPrice currency=$order->id_currency price=$order_detail.unit_price_tax_incl}
      {/strip}</td>
      <!-- Price -->
      <td class="sp sp-right">{strip}
        {if ($order_detail.reduction_percent > 0)}
          {displayPrice currency=$order->id_currency price=$order_detail.unit_price_tax_excl_before_specific_price}
        {else}
          {displayPrice currency=$order->id_currency price=$order_detail.unit_price_tax_excl}
        {/if}
      {/strip}</td>
      <!-- Discount -->
      <td class="sp sp-right">{strip}
        {if ($order_detail.reduction_percent > 0)}
          {$order_detail.reduction_percent}%
        {else}
          -
        {/if}
      {/strip}</td>
      <!-- Bill price -->
      <td class="sp sp-right">{strip}
        {displayPrice currency=$order->id_currency price=$order_detail.unit_price_tax_excl}
      {/strip}</td>
      <!-- Qty -->
      <td class="sp sp-right">{$order_detail.product_quantity}</td>
      <!-- SGST Rate -->
      <td class="sp sp-right">{strip}
        {if array_key_exists('SGST', $gst)}
          {$gst['SGST'].tax_rate}%
        {else}
          -
        {/if}
      {/strip}</td>
      <!-- SGST Amt -->
      <td class="sp sp-right">{strip}
        {if array_key_exists('SGST', $gst)}
          {displayPrice currency=$order->id_currency price=$gst['SGST'].tax_amount}
        {else}
          -
        {/if}
      {/strip}</td>
      <!-- CGST Rate -->
      <td class="sp sp-right sp-product-tax-rate">{strip}
        {if array_key_exists('CGST', $gst)}
          {$gst['CGST'].tax_rate}%
        {else}
          -
        {/if}
      {/strip}</td>
      <!-- CGST Amt -->
      <td class="sp sp-right">{strip}
        {if array_key_exists('CGST', $gst)}
          {displayPrice currency=$order->id_currency price=$gst['CGST'].tax_amount}
        {else}
          -
        {/if}
      {/strip}</td>
      <!-- IGST Rate -->
      <td class="sp sp-right">{strip}
        {if array_key_exists('IGST', $gst)}
          {$gst['IGST'].tax_rate}%
        {else}
          -
        {/if}
      {/strip}</td>
      <!-- IGST Amt -->
      <td class="sp sp-right">{strip}
        {if array_key_exists('IGST', $gst)}
          {displayPrice currency=$order->id_currency price=$gst['IGST'].tax_amount}
        {else}
          -
        {/if}
      {/strip}</td>
      <!-- LineTotal -->
      <td class="sp sp-right">{strip}
        {displayPrice currency=$order->id_currency price=$order_detail.total_price_tax_incl}
      {/strip}</td>
    </tr>
  {/foreach}
  </tbody>
</table>
