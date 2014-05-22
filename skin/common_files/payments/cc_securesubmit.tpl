<h1>SecureSubmit Payment Method</h1>
{$lng.txt_cc_configure_top_text}
<br /><br />
{capture name=dialog}
<form action="cc_processing.php?cc_processor={$smarty.get.cc_processor}" method="post">
<table cellspacing="10">
<tr>
<td>{$lng.lbl_cc_securesubmit_public_key}:</td>
<td><input type="text" name="param01" size="32" value="{$module_data.param01|escape}" /></td>
</tr>
<tr>

<tr>
<td>{$lng.lbl_cc_securesubmit_secret_key}:</td>
<td><input type="text" name="param02" size="32" value="{$module_data.param02|escape}" /></td>
</tr>

<tr>
<td>{$lng.lbl_cc_securesubmit_payment_mode}:</td>
<td>
<select name="param03">
<option value="capture"{if $module_data.param03 eq "capture"} selected="selected"{/if}>Authorize &amp; Capture</option>
<option value="authorize"{if $module_data.param03 eq "authorize"} selected="selected"{/if}>Authorize</option>
</select>
</td>
</tr>

</table>
<br /><br />
<input type="submit" value="{$lng.lbl_update|strip_tags:false|escape}" />
</form>
<br /><br />{$lng.lbl_cc_ideb_note}

{/capture}
{include file="dialog.tpl" title=$lng.lbl_cc_settings content=$smarty.capture.dialog extra='width="100%"'}
