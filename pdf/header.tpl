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


<table style="width: 100%; border-collapse: collapse; border-layout: fixed;">
<tr>
  <td rowspan="3" style="width: 30%">{strip}
    {if $logo_path}
      <img src="{$logo_path}" style="width:{$width_logo}px; height:{$height_logo}px;" />
    {/if}
  {strip}</td>
  <td rowspan="3" style="width: 50%; font-size: 8pt; text-align: left; color:#484848;">{strip}
    {if isset($shop_addr_obj)}
      {$shop_addr_obj.address1|escape:'html':'UTF-8'},
      {if !empty($shop_addr_obj.address2)}
        &nbsp;{$shop_addr_obj.address2|escape:'html':'UTF-8'},
      {/if}<br />
      {$shop_addr_obj.city|escape:'html':'UTF-8'},&nbsp;
      {$shop_addr_obj.state|escape:'html':'UTF-8'},<br />
      {$shop_addr_obj.country|escape:'html':'UTF-8'}
      {if !empty($shop_addr_obj.postcode)}
        &nbsp;{$shop_addr_obj.postcode|escape:'html':'UTF-8'}
      {/if}
    {/if}
  {/strip}</td>
  <td style="width: 20%; font-size: 12pt; text-align: right; color:#242424; line-height: 1.5;">{strip}
    {if isset($header)}{$header|escape:'html':'UTF-8'|upper}{/if}
  {/strip}</td>
</tr>
<tr>
  <td style="width: 20%; font-size: 8pt; text-align: right; color:#a0a0a0;">{strip}
    {$date|escape:'html':'UTF-8'}
  {/strip}</td>
</tr>
<tr>
  <td style="width: 20%; font-size: 8pt; text-align: right; color:#a0a0a0;">{strip}
    {$title|escape:'html':'UTF-8'}
  {/strip}</td>
</tr>
</table>

<hr style="height: 1px; border: none; color:#c0c0c0; background-color:#c0c0c0;" />
