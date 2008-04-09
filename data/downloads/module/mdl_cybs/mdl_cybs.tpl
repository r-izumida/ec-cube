<!--{*
/*
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 */
*}-->
<!--　-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">

<head>
<meta http-equiv="content-type" content="application/xhtml+xml; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="content-script-type" content="text/javascript" />
<meta http-equiv="content-style-type" content="text/css" />
<link rel="stylesheet" href="<!--{$smarty.const.URL_DIR}-->admin/css/contents.css" type="text/css" media="all" />
<script type="text/javascript" src="<!--{$smarty.const.URL_DIR}-->js/css.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.URL_DIR}-->js/navi.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.URL_DIR}-->js/win_op.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.URL_DIR}-->js/site.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.URL_DIR}-->js/admin.js"></script>
<!--{include file='css/contents.tpl'}-->
<title><!--{$tpl_subtitle}--></title>
<script type="text/javascript">
function toggleBox(checkbox, id) {
    var checked = checkbox.checked;
    var target  = document.getElementById(id);
    
    if (checked) {
        target.disabled = true;
    } else {
        target.disabled = false;
    }
}
</script>
</head>

<body bgcolor="#ffffff" text="#666666" link="#007bb7" vlink="#007bb7" alink="#cc0000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload='<!--{$tpl_onload}-->'>
<noscript>
<link rel="stylesheet" href="<!--{$smarty.const.URL_DIR}-->admin/css/common.css" type="text/css" />
</noscript>

<div align="center">
<!--★★メインコンテンツ★★-->
<table width="500" border="0" cellspacing="0" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.REQUEST_URI|escape}-->">
<input type="hidden" name="mode" value="edit">
    <tr valign="top">
        <td class="mainbg">
            <!--▼登録テーブルここから-->
            <table width="500" border="0" cellspacing="0" cellpadding="0" summary=" ">
                <!--メインエリア-->
                <tr>
                    <td align="center">
                        <table width="470" border="0" cellspacing="0" cellpadding="0" summary=" ">
                            <tr><td height="14"></td></tr>
                            <tr>
                                <td colspan="3"><img src="<!--{$smarty.const.URL_DIR}-->img/contents/main_top.jpg" width="470" height="14" alt=""></td>
                            </tr>
                            <tr>
                                <td background="<!--{$smarty.const.URL_DIR}-->img/contents/main_left.jpg"><img src="<!--{$smarty.const.URL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
                                <td bgcolor="#cccccc" >
                                    <table width="442" border="0" cellspacing="0" cellpadding="0" summary=" ">
                                        <tr>
                                            <td colspan="3"><img src="<!--{$smarty.const.URL_DIR}-->img/contents/contents_title_top.gif" width="442" height="7" alt=""></td>
                                        </tr>
                                        <tr>
                                            <td background="<!--{$smarty.const.URL_DIR}-->img/contents/contents_title_left_bg.gif"><img src="<!--{$smarty.const.URL_DIR}-->img/contents/contents_title_left.gif" width="22" height="12" alt=""></td>
                                            <td bgcolor="#636469" width="402" class="fs14n"><span class="white"><!--コンテンツタイトル--><!--{$tpl_subtitle}--></span></td>
                                            <td background="<!--{$smarty.const.URL_DIR}-->img/contents/contents_title_right_bg.gif"><img src="<!--{$smarty.const.URL_DIR}-->img/common/_.gif" width="18" height="1" alt=""></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3"><img src="<!--{$smarty.const.URL_DIR}-->img/contents/contents_title_bottom.gif" width="442" height="7" alt=""></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3"><img src="<!--{$smarty.const.URL_DIR}-->img/contents/main_bar.jpg" width="442" height="10" alt=""></td>
                                        </tr>
                                    </table>

                                    <table width="442" border="0" cellspacing="1" cellpadding="8" summary=" ">
                                        <tr class="fs12n">
                                            <td bgcolor="#ffffff">
                                                サイバーソース決済モジュールをご利用頂く為には、ユーザ様ご自身で
                                                サイバーソース株式会社様とご契約を行っていただく必要があります。 <br/>
                                                お申し込みにつきましては、下記のページから、お申し込みを行って下さい。<br/><br/>
                                                <a href="http://www.cybersource.co.jp/" target="_blank"> ＞＞ サイバーソース決済システムについて</a>
                                            </td>
                                        </tr>
                                    </table>
                                    
                                    <table width="442" border="0" cellspacing="0" cellpadding="0" summary=" ">
                                        <tr><td><img src="<!--{$smarty.const.URL_DIR}-->img/contents/main_bar.jpg" width="442" height="10" alt=""></td></tr>
                                    </table>

                                    <table width="442" border="0" cellspacing="1" cellpadding="8" summary=" ">
                                        <!--{if $extension_installed == false}-->
                                        <tr class="fs12n red">
                                            <td colspan="2" width="90" bgcolor="#f3f3f3">※PHP拡張モジュールがインストールされていません。</td>
                                        </tr>
                                        <!--{/if}-->
                                        <tr class="fs12n">
                                            <td colspan="2" width="90" bgcolor="#f3f3f3">■設定項目</td>
                                        </tr>
                                        <tr class="fs12n">
                                            <td width="" bgcolor="#f3f3f3">マーチャントID<span class="red"> ※</span></td>
                                            <td width="300" bgcolor="#ffffff">
                                            <!--{assign var=key value="cybs_merchant_id"}-->
                                            <span class="red12"><!--{$arrErr[$key]}--></span>
                                            <input type="text" name="<!--{$key}-->" style="ime-mode:disabled; <!--{$arrErr[$key]|sfGetErrorColor}-->" value="<!--{$arrForm[$key].value}-->" class="box40" maxlength="<!--{$arrForm[$key].length}-->">
                                            </td>
                                        </tr>
                                        <tr class="fs12n">
                                            <td width="" bgcolor="#f3f3f3">リクエスト先<span class="red"> ※</span></td>
                                            <td width="300" bgcolor="#ffffff">
                                            <!--{assign var=key value="cybs_request_url"}-->
                                            <span class="red12"><!--{$arrErr[$key]}--></span>
                                            <input type="radio"
                                                   value="1"
                                                   name="<!--{$key}-->" <!--{if $arrForm[$key].value == 1 || $arrForm[$key].value == ''}-->checked<!--{/if}-->>テスト環境(<!--{$smarty.const.MDL_CYBS_REQUEST_URL_TEST}-->)<br>
                                            <input type="radio"
                                                   value="2"
                                                   name="<!--{$key}-->" <!--{if $arrForm[$key].value == 2}-->checked<!--{/if}-->>本番環境(<!--{$smarty.const.MDL_CYBS_REQUEST_URL}-->)<br>
                                            </td>
                                        </tr>
                                        <tr class="fs12n">
                                            <td width="" bgcolor="#f3f3f3">オンデマンド課金</td>
                                            <td width="300" bgcolor="#ffffff">
                                            <!--{assign var=key value="cybs_ondemand_use"}-->
                                            <span class="red12"><!--{$arrErr[$key]}--></span>
                                            <input onclick="toggleBox(this, 'cybs_3d_check');"
                                                   id="cybs_obdemand_check"
                                                   type="checkbox"
                                                   name="<!--{$key}-->"
                                                   value="1"
                                                   style="<!--{$arrErr[$key]|sfGetErrorColor}-->" <!--{if $arrForm[$key].value == 1}-->checked<!--{/if}-->>使用する場合はチェックを入れてください。
                                            </td>
                                        </tr>
                                        <tr class="fs12n">
                                            <td width="" bgcolor="#f3f3f3">本人認証サービス<br>(3Dセキュア認証)</td>
                                            <td width="300" bgcolor="#ffffff">
                                            <!--{assign var=key value="cybs_3d_use"}-->
                                            <span class="red12"><!--{$arrErr[$key]}--></span>
                                            <input onclick="toggleBox(this, 'cybs_obdemand_check');"
                                                   id="cybs_3d_check"
                                                   type="checkbox"
                                                   name="<!--{$key}-->"
                                                   value="1"
                                                   style="<!--{$arrErr[$key]|sfGetErrorColor}-->" <!--{if $arrForm[$key].value == 1}-->checked<!--{/if}-->>使用する場合はチェックを入れてください。
                                            </td>
                                        </tr>
                                    </table>
                                    
                                    <table width="442" border="0" cellspacing="0" cellpadding="0" summary=" ">
                                        <tr>
                                            <td bgcolor="#cccccc"><img src="<!--{$smarty.const.URL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
                                            <td><img src="<!--{$smarty.const.URL_DIR}-->img/contents/tbl_top.gif" width="440" height="7" alt=""></td>
                                            <td bgcolor="#cccccc"><img src="<!--{$smarty.const.URL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="#cccccc"><img src="<!--{$smarty.const.URL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
                                            <td bgcolor="#e9e7de" align="center">
                                            <table border="0" cellspacing="0" cellpadding="0" summary=" ">
                                                <tr>
                                                    <td><input type="image" onMouseover="chgImgImageSubmit('<!--{$smarty.const.URL_DIR}-->img/contents/btn_regist_on.jpg',this)" onMouseout="chgImgImageSubmit('<!--{$smarty.const.URL_DIR}-->img/contents/btn_regist.jpg',this)" src="<!--{$smarty.const.URL_DIR}-->img/contents/btn_regist.jpg" width="123" height="24" alt="この内容で登録する" border="0" name="subm" onClick="document.body.style.cursor = 'wait';"></td>
                                                </tr>
                                            </table>
                                            </td>
                                            <td bgcolor="#cccccc"><img src="<!--{$smarty.const.URL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3"><img src="<!--{$smarty.const.URL_DIR}-->img/contents/tbl_bottom.gif" width="442" height="8" alt=""></td>
                                        </tr>
                                    </table>
                                </td>
                                <td background="<!--{$smarty.const.URL_DIR}-->img/contents/main_right.jpg"><img src="<!--{$smarty.const.URL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
                            </tr>
                            <tr>
                                <td colspan="3"><img src="<!--{$smarty.const.URL_DIR}-->img/contents/main_bottom.jpg" width="470" height="14" alt=""></td>
                            </tr>
                            <tr><td height="30"></td></tr>
                        </table>
                    </td>
                </tr>
                <!--メインエリア-->
            </table>
            <!--▲登録テーブルここまで-->
        </td>
    </tr>
</form>
</table>
<!--★★メインコンテンツ★★-->
</div>

</body>
</html>


