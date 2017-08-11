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

<table id="summary-tab">
  <tr>
    <th class="sp sp-left sp-bold">{l s='PO Reference' d='Shop.Pdf' pdf='true'}</th>
    <td class="sp sp-left">{$order->getUniqReference()}</td>
    <th class="sp sp-left sp-bold">{l s='Customer GSTIN' d='Shop.Pdf' pdf='true'}</th>
    <td class="sp sp-left">{if $addresses.invoice->vat_number}{$addresses.invoice->vat_number}{/if}</td>
  </tr>
  <tr>
    <th class="sp sp-left sp-bold">{l s='PO Date' d='Shop.Pdf' pdf='true'}</th>
    <td class="sp sp-left">{dateFormat date=$order->date_add full=0}</td>
    <th>&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
</table>
