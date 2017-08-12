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
<table id="total-tab">
  <tr>
    <th class="sp sp-head total-cell">{l s='Total Products' d='Shop.Pdf' pdf='true'}</th>
    <td class="sp total-cell">{displayPrice currency=$order->id_currency price=$footer.products_before_discounts_tax_excl}</td>
  </tr>

  {if $footer.product_discounts_tax_excl > 0}
    <tr>
      <th class="sp sp-head total-cell">{l s='Total Discounts' d='Shop.Pdf' pdf='true'}</th>
      <td class="sp total-cell">- {displayPrice currency=$order->id_currency price=$footer.product_discounts_tax_excl}</td>
    </tr>
  {/if}
  {if !$order->isVirtual()}
  <tr>
    <th class="sp sp-head total-cell">{l s='Shipping Costs' d='Shop.Pdf' pdf='true'}</th>
    <td class="sp total-cell">{strip}
      {if $footer.shipping_tax_excl > 0}
        {displayPrice currency=$order->id_currency price=$footer.shipping_tax_excl}
      {else}
        {l s='Free Shipping' d='Shop.Pdf' pdf='true'}
      {/if}
    {/strip}</td>
  </tr>
  {/if}

  {if $footer.wrapping_tax_excl > 0}
    <tr>
      <th class="sp sp-head total-cell">{l s='Wrapping Costs' d='Shop.Pdf' pdf='true'}</th>
      <td class="sp total-cell">{displayPrice currency=$order->id_currency price=$footer.wrapping_tax_excl}</td>
    </tr>
  {/if}

  <tr>
    <th class="sp sp-head total-cell">{l s='Total (Excl. taxes)' d='Shop.Pdf' pdf='true'}</th>
    <td class="sp total-cell">{displayPrice currency=$order->id_currency price=$footer.total_paid_tax_excl}</td>
  </tr>
  {if $footer.total_taxes > 0}
    <tr>
      <th class="sp sp-head total-cell">{l s='Total Tax' d='Shop.Pdf' pdf='true'}</th>
      <td class="sp total-cell">{displayPrice currency=$order->id_currency price=$footer.total_taxes}</td>
    </tr>
  {/if}
  <tr>
    <th class="sp sp-head total-cell">{l s='Total' d='Shop.Pdf' pdf='true'}</th>
    <td class="sp total-cell">{displayPrice currency=$order->id_currency price=$footer.total_paid_tax_incl}</td>
  </tr>
</table>
