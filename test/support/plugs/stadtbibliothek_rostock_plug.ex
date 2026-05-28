defmodule Clay.StadtbibliothekRostockPlug do
  @moduledoc """
  Stub response from Stadtbibliothek Rostock
  """

  import Plug.Conn

  def init(opts), do: opts

  def call(%{method: _method, request_path: "/Mediensuche/Einfache-Suche"} = conn, _opts) do
    body = """
    <!doctype html>
    <html lang="de-DE" dir="ltr">
    <head id="Head">
    <title>Stadtbibliothek Rostock > Mediensuche > Einfache Suche</title>
    </head>
    <body id="Body">
    <form
      method="post"
      action="/Mediensuche/Einfache-Suche?id=0848209"
      id="Form"
      enctype="multipart/form-data"
    >
      <div class="body_bg full">
        <div id="dnn_wrapper">
          <div class="wrapper">
            <section id="dnn_content">
              <div class="dnn_layoutB">
                <div class="content_mid clearfix">
                  <div class="pane_layout">
                    <div class="row">
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowOne_Grid3_Pane"
                          class="RowOne_Grid3_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-9">
                        <div
                          id="dnn_RowOne_Grid9_Pane"
                          class="RowOne_Grid9_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowTwo_Grid4_Pane"
                          class="RowTwo_Grid4_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-8">
                        <div
                          id="dnn_RowTwo_Grid8_Pane"
                          class="RowTwo_Grid8_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-5">
                        <div
                          id="dnn_RowThree_Grid5_Pane"
                          class="RowThree_Grid5_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-7">
                        <div
                          id="dnn_RowThree_Grid7_Pane"
                          class="RowThree_Grid7_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-6">
                        <div
                          id="dnn_RowFour_Grid6_Pane1"
                          class="RowFour_Grid6_Pane1 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-6">
                        <div
                          id="dnn_RowFour_Grid6_Pane2"
                          class="RowFour_Grid6_Pane2 DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-7">
                        <div
                          id="dnn_RowFive_Grid7_Pane"
                          class="RowFive_Grid7_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-5">
                        <div
                          id="dnn_RowFive_Grid5_Pane"
                          class="RowFive_Grid5_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-8">
                        <div
                          id="dnn_RowSix_Grid8_Pane"
                          class="RowSix_Grid8_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowSix_Grid4_Pane"
                          class="RowSix_Grid4_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-9">
                        <div
                          id="dnn_RowSeven_Grid9_Pane"
                          class="RowSeven_Grid9_Pane"
                        >
                          <div
                            class="DnnModule DnnModule-OPENSearchModule DnnModule-377"
                          >
                            <a name="377"></a>
                            <div class="Container-H3">
                              <div class="dnntitle">
                                <h3>
                                  <span
                                    id="dnn_ctr377_dnnTITLE_titleLabel"
                                    class="title_H3"
                                    >Ihre Mediensuche</span
                                  >
                                </h3>
                              </div>

                              <div class="contentmain">
                                <div
                                  id="dnn_ctr377_ContentPane"
                                  class="contentpane"
                                >
                                  <div
                                    id="dnn_ctr377_ModuleContent"
                                    class="DNNModuleContent ModOPENSearchModuleC"
                                  >
                                    <div
                                      id="dnn_ctr377_MainView_divSearchModuleMain"
                                      class="oclc-module-main oclc-cf oclc-searchmodule"
                                    >
                                      <input
                                        type="hidden"
                                        name="dnn$ctr377$MainView$hdnFocusTarget"
                                        id="dnn_ctr377_MainView_hdnFocusTarget"
                                      />
                                      <div
                                        id="dnn_ctr377_MainView_popupPermalink_popup"
                                        class="oclc-module-popup dnn_ctr377_MainView_popupPermalink"
                                      >
                                        <div
                                          id="dnn_ctr377_MainView_popupPermalink_mainPopupDiv"
                                        ></div>
                                      </div>

                                      <div
                                        id="dnn_ctr377_MainView_popupPermalinkDetail_popup"
                                        class="oclc-module-popup dnn_ctr377_MainView_popupPermalinkDetail"
                                      >
                                        <div
                                          id="dnn_ctr377_MainView_popupPermalinkDetail_mainPopupDiv"
                                        ></div>
                                      </div>

                                      <div
                                        id="dnn_ctr377_MainView_popupPrintResult_popup"
                                        class="oclc-module-popup dnn_ctr377_MainView_popupPrintResult"
                                      >
                                        <div
                                          id="dnn_ctr377_MainView_popupPrintResult_mainPopupDiv"
                                        ></div>
                                      </div>

                                      <div
                                        id="dnn_ctr377_MainView_popupEmailList_popup"
                                        class="oclc-module-popup dnn_ctr377_MainView_popupEmailList"
                                      >
                                        <div
                                          id="dnn_ctr377_MainView_popupEmailList_mainPopupDiv"
                                        ></div>
                                      </div>

                                      <div
                                        id="dnn_ctr377_MainView_popupEmailDetail_popup"
                                        class="oclc-module-popup dnn_ctr377_MainView_popupEmailDetail"
                                      >
                                        <div
                                          id="dnn_ctr377_MainView_popupEmailDetail_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr377_MainView_popupEmailDetail_lblHeader"
                                                class="oclc-module-popup-header"
                                                >Detailanzeige per E-Mail
                                                versenden</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <span
                                                id="dnn_ctr377_MainView_popupEmailDetail_LblHeaderLegendDataEmailDetail"
                                                class="oclc-module-header-legend"
                                                >*Pflichtfelder</span
                                              >
                                              <div
                                                id="emailDetailSearchModuleValues"
                                              >
                                                <div>
                                                  <label
                                                    for="dnn_ctr377_MainView_popupEmailDetail_TxtEmailDetailAddressRecipient"
                                                    id="dnn_ctr377_MainView_popupEmailDetail_lblEmailDetailAddressRecipient"
                                                    >E-Mail-Adresse
                                                    Empfänger*</label
                                                  >
                                                  <div>
                                                    <span class="oclc-textbox">
                                                      <input
                                                        name="dnn$ctr377$MainView$popupEmailDetail$TxtEmailDetailAddressRecipient"
                                                        type="text"
                                                        id="dnn_ctr377_MainView_popupEmailDetail_TxtEmailDetailAddressRecipient"
                                                        data-labelId="LblSearchInvalidEmailDetailAddressRecipient"
                                                        autocomplete="off"
                                                        oninput="
                                                          validateEmail(this)
                                                        "
                                                        onblur="
                                                          validateEmail(this)
                                                        "
                                                        disabled="disabled"
                                                        data-mandatory="true"
                                                        required=""
                                                      />
                                                    </span>
                                                    <div>
                                                      <span
                                                        id="LblSearchInvalidEmailDetailAddressRecipient"
                                                        class="oclc-module-labelerror"
                                                        >Die E-Mailadresse ist
                                                        ungültig.</span
                                                      >
                                                    </div>
                                                  </div>
                                                </div>
                                                <label
                                                  for="dnn_ctr377_MainView_popupEmailDetail_TxtEmailDetailSenderName"
                                                  id="dnn_ctr377_MainView_popupEmailDetail_LblEmailDetailSenderName"
                                                  >Absender Name (z.B.
                                                  Max)</label
                                                >
                                                <span class="oclc-textbox"
                                                  ><input
                                                    name="dnn$ctr377$MainView$popupEmailDetail$TxtEmailDetailSenderName"
                                                    type="text"
                                                    id="dnn_ctr377_MainView_popupEmailDetail_TxtEmailDetailSenderName"
                                                /></span>
                                                <label
                                                  for="dnn_ctr377_MainView_popupEmailDetail_TxtEmailDetailSubject"
                                                  id="dnn_ctr377_MainView_popupEmailDetail_LblEmailDetailSubject"
                                                  >Betreff</label
                                                >
                                                <span class="oclc-textbox"
                                                  ><input
                                                    name="dnn$ctr377$MainView$popupEmailDetail$TxtEmailDetailSubject"
                                                    type="text"
                                                    value="Dieser Titel könnte dich interessieren."
                                                    readonly="readonly"
                                                    id="dnn_ctr377_MainView_popupEmailDetail_TxtEmailDetailSubject"
                                                /></span>
                                                <span
                                                  id="dnn_ctr377_MainView_popupEmailDetail_LblEmailDetailContent"
                                                  >Inhalt</span
                                                >
                                                <div
                                                  id="dnn_ctr377_MainView_popupEmailDetail_textBoxDetail"
                                                  class="oclc-textbox fakeinputtext"
                                                >
                                                  Dieser Titel k&#246;nnte dich
                                                  interessieren.
                                                  <br />
                                                  <br />Link zum Titel:
                                                  <a
                                                    href="https://katalog.stadtbibliothek-rostock.de/Permalink.aspx?id=0848209"
                                                    >https://katalog.stadtbibliothek-rostock.de/Permalink.aspx?id=0848209</a
                                                  ><br />
                                                  <br />Gef&#228;hrliche
                                                  Geburtstagsgr&#252;&#223;e
                                                  <br />
                                                  <br />Mediengruppe: Buch
                                                  Belletr. Kin <br />Verfasser:
                                                  Habschick, Anja <br />Jahr:
                                                  2021<br /><br /><img
                                                    src="https://cover.ekz.de/9783737342407.jpg"
                                                    alt="Cover des Mediums"
                                                  /><br /><br />
                                                  <table>
                                                    <tr>
                                                      <th>
                                                        <strong
                                                          >Zweigstelle</strong
                                                        >
                                                      </th>
                                                      <th>
                                                        <strong
                                                          >Standorte</strong
                                                        >
                                                      </th>
                                                    </tr>
                                                    <tr>
                                                      <td>Dierkow</td>
                                                      <td>III J 0 Habsc</td>
                                                    </tr>
                                                    <tr>
                                                      <td>Zentralbibliothek</td>
                                                      <td>
                                                        III J 0 Habsc /
                                                        Kinderbibliothek
                                                      </td>
                                                    </tr>
                                                  </table>
                                                </div>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr377$MainView$popupEmailDetail$btnDefault"
                                                  value="E-Mail versenden"
                                                  id="dnn_ctr377_MainView_popupEmailDetail_btnDefault"
                                                />
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr377$MainView$popupEmailDetail$btnCancel"
                                                  value="Abbrechen"
                                                  id="dnn_ctr377_MainView_popupEmailDetail_btnCancel"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>

                                      <div class="oclc-searchmodule-detail">
                                        <div
                                          id="dnn_ctr377_MainView_UcDetailView_divContent"
                                          class="oclc-searchmodule-detail-content"
                                        >
                                          <div
                                            class="oclc-searchmodule-mediumview"
                                          >
                                            <div
                                              class="standardPaddingCover coverContainter"
                                            >
                                              <div
                                                id="coverRegion_dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_CoverView"
                                                class="coverRegion"
                                              >
                                                <input
                                                  type="hidden"
                                                  name="dnn$ctr377$MainView$UcDetailView$ucSharedCatalogueView$CoverView$IsInDetailViewHiddenField"
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_CoverView_IsInDetailViewHiddenField"
                                                  value="false"
                                                />

                                                <a
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_CoverView_Link"
                                                  title="Gefährliche Geburtstagsgrüße"
                                                  class="pending-dynamic-link"
                                                  data-covertitle="Gefährliche Geburtstagsgrüße"
                                                  data-base-title="Gefährliche Geburtstagsgrüße"
                                                  data-shop-tooltip-template="Zum Coveranbieter wechseln: {0}"
                                                  target="_self"
                                                  ><img
                                                    id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_CoverView_Image"
                                                    class="coverGradient coverBig"
                                                    data-sources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783737342407|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783737342407|c|SetSimpleCover|a|https://cover.ekz.de/9783737342407.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3737342407.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3737342407|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                    data-devsources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783737342407|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783737342407|c|SetSimpleCover|a|https://cover.ekz.de/9783737342407.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3737342407.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3737342407|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                    data-dummy-url="/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2"
                                                    onerror="
                                                      SetNextCover($(this))
                                                    "
                                                    onload="
                                                      CheckCoverImg($(this))
                                                    "
                                                    src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                /></a>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-searchmodule-mediumview-content"
                                            >
                                              <div class="boldText">
                                                <h3
                                                  class="oclc-override-heading"
                                                >
                                                  Gef&#228;hrliche
                                                  Geburtstagsgr&#252;&#223;e
                                                </h3>
                                              </div>

                                              <div></div>
                                              <div>
                                                <span
                                                  class="starShared starAverage"
                                                  title="0 Sterne"
                                                  ><span></span
                                                  ><span></span></span
                                                ><span>0 Bewertungen</span>
                                              </div>
                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_DivAuthors"
                                              >
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblAuthor"
                                                  class="oclc-module-label"
                                                  >Verfasser:
                                                </span>

                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_ScreenReaderAuthorLinkShort"
                                                  class="oclc-screen-reader-only"
                                                  >Suche nach diesem
                                                  Verfasser</span
                                                >
                                                <a
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LVAuthorValue_LinkAuthor_0"
                                                  href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?query=SC%7cAuthor%7cAnd%7c3%7cHabschick%2c+Anja&amp;focusModule=extendedsearchmodule"
                                                  >Habschick, Anja
                                                  (Verfasser)</a
                                                >

                                                <a
                                                  class="btnMoreAuthors"
                                                  href="#"
                                                  >Mehr...</a
                                                >
                                              </div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblStatementOfResponsibility"
                                                  class="oclc-module-label"
                                                  >Verfasserangabe:</span
                                                >
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblStatementOfResponsibilityValue"
                                                  >Anja Habschick</span
                                                >
                                              </div>
                                              <div></div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblProductionYear"
                                                  class="oclc-module-label"
                                                  >Jahr:
                                                </span>
                                                2021
                                              </div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblPublisher"
                                                  class="oclc-module-label"
                                                  >Verlag:</span
                                                >
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblPublisherValue"
                                                  >Frankfurt am Main, FISCHER
                                                  KJB</span
                                                >
                                              </div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblSeriesTitle"
                                                  class="oclc-module-label"
                                                  >Reihe:</span
                                                >

                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_spanSeriesTitle"
                                                >
                                                  <a
                                                    id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LbSeriesValue_LbSeries_0"
                                                    href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?query=SC%7cSeriesTitle%7cAnd%7c2%7cLucy+Longfinger+%e2%80%93+einfach+unfassbar!&amp;focusModule=extendedsearchmodule"
                                                    >Lucy Longfinger – einfach
                                                    unfassbar!; 1</a
                                                  >
                                                  <span
                                                    id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LbSeriesValue_LblSeriesNoLink_0"
                                                    >Lucy Longfinger – einfach
                                                    unfassbar!; 1</span
                                                  >
                                                </span>
                                              </div>
                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_DivSpanMediaGrpIcon"
                                              >
                                                <span class="itemtype book">
                                                  <span
                                                    id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblMediaGrp"
                                                    class="oclc-screen-reader-only"
                                                    class="oclc-module-label"
                                                    >Mediengruppe:
                                                  </span>
                                                  <span
                                                    id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_spanMediaGrpValue"
                                                  >
                                                    Buch Belletr. Kin
                                                  </span>
                                                </span>
                                              </div>
                                            </div>
                                            <div class="copyDataRegion">
                                              <img
                                                id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_imgLoading"
                                                src="../DesktopModules/OCLC.OPEN.PL.DNN.SearchModule/Images/loadingbar.gif"
                                                alt="loading"
                                              />
                                              <input
                                                type="hidden"
                                                name="dnn$ctr377$MainView$UcDetailView$ucSharedCatalogueView$regionmednr"
                                                id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_regionmednr"
                                                value="0848209"
                                              />
                                              <input
                                                type="hidden"
                                                name="dnn$ctr377$MainView$UcDetailView$ucSharedCatalogueView$culture"
                                                id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_culture"
                                                value="de-DE"
                                              />
                                              <div class="copyDataTarget"></div>
                                            </div>
                                            <div
                                              class="oclc-searchmodule-mediumview-controls"
                                            >
                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_divGoogleBook"
                                              ></div>
                                              <div></div>

                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_DivAvailRegionDetail"
                                              >
                                                <div
                                                  id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_DivNormalDetail"
                                                  class="LinkWithImgAndText"
                                                >
                                                  <i
                                                    id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_mediumImageAvailDetail"
                                                    class="fas fa-check fa-color-green"
                                                  ></i
                                                  ><span
                                                    id="dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LblMediumImageAvailDetail"
                                                    >Standort anzeigen</span
                                                  >
                                                </div>
                                              </div>

                                              <div
                                                class="oclc-searchmodule-mediumview-link"
                                              ></div>
                                            </div>
                                          </div>

                                          <div
                                            id="dnn_ctr377_MainView_UcDetailView_CatalogueCopyView"
                                          >
                                            <h2 class="oclc-module-header">
                                              Exemplare
                                            </h2>
                                            <div>
                                              <table
                                                class="oclc-module-table"
                                                id="dnn_ctr377_MainView_UcDetailView_ucCatalogueCopyView_grdViewMediumCopies"
                                              >
                                                <tr>
                                                  <th
                                                    scope="col"
                                                    abbr="Zweigstelle"
                                                  >
                                                    Zweigstelle
                                                  </th>
                                                  <th
                                                    scope="col"
                                                    abbr="Standorte"
                                                  >
                                                    Standorte
                                                  </th>
                                                  <th
                                                    scope="col"
                                                    abbr="Interessenkreis"
                                                  >
                                                    Interessenkreis
                                                  </th>
                                                  <th scope="col" abbr="Status">
                                                    Status
                                                  </th>
                                                  <th scope="col" abbr="Frist">
                                                    Frist
                                                  </th>
                                                  <th
                                                    scope="col"
                                                    abbr="Vorbestellungen"
                                                  >
                                                    Vorbestellungen
                                                  </th>
                                                </tr>
                                                <tr>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Zweigstelle:</span
                                                    >
                                                    <span>Dierkow</span>
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Standorte:</span
                                                    >
                                                    <span>III J 0 Habsc</span>
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Interessenkreis:</span
                                                    >
                                                    <span>Krimi</span>
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Status:</span
                                                    >
                                                    <span>Verf&#252;gbar</span>
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Frist:</span
                                                    >
                                                    <span></span>
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Vorbestellungen:</span
                                                    >
                                                    <span>0</span>
                                                  </td>
                                                </tr>
                                                <tr>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Zweigstelle:</span
                                                    >
                                                    <span
                                                      >Zentralbibliothek</span
                                                    >
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Standorte:</span
                                                    >
                                                    <span
                                                      >III J 0 Habsc /
                                                      Kinderbibliothek</span
                                                    >
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Interessenkreis:</span
                                                    >
                                                    <span>Krimi</span>
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Status:</span
                                                    >
                                                    <span>Verf&#252;gbar</span>
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Frist:</span
                                                    >
                                                    <span></span>
                                                  </td>
                                                  <td>
                                                    <span
                                                      class="oclc-module-view-small oclc-module-label"
                                                      >Vorbestellungen:</span
                                                    >
                                                    <span>0</span>
                                                  </td>
                                                </tr>
                                              </table>
                                            </div>
                                          </div>
                                          <div
                                            id="dnn_ctr377_MainView_UcDetailView_CatalogueContent"
                                          >
                                            <h2 class="oclc-module-header">
                                              Inhalt
                                            </h2>
                                            <div>
                                              Der gef&#252;rchtete Gangsterboss
                                              Ratto hat Lucy vor die Wahl
                                              gestellt. Entweder arbeitet sie
                                              f&#252;r ihn oder ihren Eltern
                                              werden an Piranhas verf&#252;ttert
                                              ... Vor Ablauf des Ultimatums muss
                                              eine L&#246;sung her! Ab 10
                                              Jahren.
                                            </div>
                                          </div>
                                          <div
                                            id="dnn_ctr377_MainView_UcDetailView_Ratings"
                                          >
                                            <h2 class="oclc-module-header">
                                              Bewertungen
                                            </h2>
                                            <div>
                                              <div class="oclc-cf">
                                                <div>
                                                  <div>
                                                    <span
                                                      class="starDetail starAverage"
                                                      title="5 Sterne"
                                                      ><span></span
                                                      ><span></span></span
                                                    ><span>0 Bewertungen</span>
                                                  </div>
                                                  <div>
                                                    <span
                                                      class="starDetail starAverage"
                                                      title="4 Sterne"
                                                      ><span></span
                                                      ><span></span></span
                                                    ><span>0 Bewertungen</span>
                                                  </div>
                                                  <div>
                                                    <span
                                                      class="starDetail starAverage"
                                                      title="3 Sterne"
                                                      ><span></span
                                                      ><span></span></span
                                                    ><span>0 Bewertungen</span>
                                                  </div>
                                                  <div>
                                                    <span
                                                      class="starDetail starAverage"
                                                      title="2 Sterne"
                                                      ><span></span
                                                      ><span></span></span
                                                    ><span>0 Bewertungen</span>
                                                  </div>
                                                  <div>
                                                    <span
                                                      class="starDetail starAverage"
                                                      title="1 Stern"
                                                      ><span></span
                                                      ><span></span></span
                                                    ><span>0 Bewertungen</span>
                                                  </div>
                                                </div>
                                                <div>
                                                  <div>
                                                    <span
                                                      class="ratingProgressBar"
                                                      title="0%"
                                                      ><span></span><span></span
                                                    ></span>
                                                  </div>
                                                  <div>
                                                    <span
                                                      class="ratingProgressBar"
                                                      title="0%"
                                                      ><span></span><span></span
                                                    ></span>
                                                  </div>
                                                  <div>
                                                    <span
                                                      class="ratingProgressBar"
                                                      title="0%"
                                                      ><span></span><span></span
                                                    ></span>
                                                  </div>
                                                  <div>
                                                    <span
                                                      class="ratingProgressBar"
                                                      title="0%"
                                                      ><span></span><span></span
                                                    ></span>
                                                  </div>
                                                  <div>
                                                    <span
                                                      class="ratingProgressBar"
                                                      title="0%"
                                                      ><span></span><span></span
                                                    ></span>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>

                                          <div
                                            id="dnn_ctr377_MainView_UcDetailView_CatalogueDetailView"
                                          >
                                            <h2 class="oclc-module-header">
                                              Details
                                            </h2>

                                            <div
                                              class="oclc-searchmodule-detail-data"
                                            >
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblAuthor"
                                                  class="oclc-module-label"
                                                  >Verfasser:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_ScreenReaderAuthorLink"
                                                  class="oclc-screen-reader-only"
                                                  >Suche nach diesem
                                                  Verfasser</span
                                                >
                                                <a
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LVAuthorValue_LinkAuthor_0"
                                                  href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?query=SC%7cAuthor%7cAnd%7c3%7cHabschick%2c+Anja&amp;focusModule=extendedsearchmodule"
                                                  >Habschick, Anja
                                                  (Verfasser)</a
                                                >
                                              </div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblStatementOfResponsibility"
                                                  class="oclc-module-label"
                                                  >Verfasserangabe:</span
                                                >
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblStatementOfResponsibilityValue"
                                                  >Anja Habschick</span
                                                >
                                              </div>
                                              <div></div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblProductionYear"
                                                  class="oclc-module-label"
                                                  >Jahr:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblProductionYearValue"
                                                  >2021</span
                                                >
                                              </div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblManufacturer"
                                                  class="oclc-module-label"
                                                  >Verlag:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblManufacturerValue"
                                                  >Frankfurt am Main, FISCHER
                                                  KJB</span
                                                >
                                              </div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_DivDependentCatalogue"
                                              >
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblDependantCatalogues"
                                                  class="oclc-module-label"
                                                  >Aufsätze:</span
                                                >
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_ScreenReaderDependentCatalogue"
                                                  class="oclc-screen-reader-only"
                                                  >Zu diesem Aufsatz
                                                  wechseln</span
                                                >
                                                <div
                                                  class="dependantRegion"
                                                ></div>
                                              </div>

                                              <div></div>
                                              <div>
                                                <span
                                                  id="HyperlinkEmedium1Desc"
                                                  class="oclc-screen-reader-only"
                                                  >opens in new tab</span
                                                >
                                              </div>
                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_divLinks"
                                              >
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_ScreenReaderLinkDescription"
                                                  class="oclc-screen-reader-only"
                                                  >Diesen Link in neuem Tab
                                                  öffnen</span
                                                >

                                                <a class="btnMoreLinks" href="#"
                                                  >Mehr...</a
                                                >
                                              </div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblSystematicTitle"
                                                  class="oclc-module-label"
                                                  >Systematik:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_ScreenReaderSystematicLink"
                                                  class="oclc-screen-reader-only"
                                                  >Suche nach dieser
                                                  Systematik</span
                                                >
                                                <a
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LVSystematicValue_LinkSystematic_0"
                                                  href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?query=SC%7cSystematicLink%7cAnd%7c2%7cIII+J+0&amp;focusModule=extendedsearchmodule"
                                                  >III J 0</a
                                                >
                                              </div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblSubjectTypeTitle"
                                                  class="oclc-module-label"
                                                  >Interessenkreis:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_ScreenReaderSubjectType"
                                                  class="oclc-screen-reader-only"
                                                  >Suche nach diesem
                                                  Interessenskreis</span
                                                >
                                                <a
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LVSubjectTypeValue_LinkSubjectType_0"
                                                  href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?query=SC%7cSubjectType%7cAnd%7c2%7cKrimi&amp;focusModule=extendedsearchmodule"
                                                  >Krimi</a
                                                >
                                              </div>
                                              <div></div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_Lbl1stIsbnTitle"
                                                  class="oclc-module-label"
                                                  >ISBN:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_Lbl1stIsbnValue"
                                                  >9783737342407</span
                                                >
                                              </div>
                                              <div></div>
                                              <div></div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblDescriptionTitle"
                                                  class="oclc-module-label"
                                                  >Beschreibung:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblDescriptionValue"
                                                  >257 Seiten</span
                                                >
                                              </div>
                                              <div></div>
                                              <div></div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblSeriesTitle"
                                                  class="oclc-module-label"
                                                  >Reihe:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_spanSeriesTitle"
                                                >
                                                  <a
                                                    id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LbSeriesValue_LbSeries_0"
                                                    href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?query=SC%7cSeriesTitle%7cAnd%7c2%7cLucy+Longfinger+%e2%80%93+einfach+unfassbar!&amp;focusModule=extendedsearchmodule"
                                                    >Lucy Longfinger – einfach
                                                    unfassbar!; 1</a
                                                  >
                                                  <span
                                                    id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LbSeriesValue_LblSeriesNoLink_0"
                                                    >Lucy Longfinger – einfach
                                                    unfassbar!; 1</span
                                                  >
                                                </span>
                                              </div>
                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_divKeywords"
                                              >
                                                <a
                                                  class="btnMoreKeywords"
                                                  href="#"
                                                  >Mehr...</a
                                                >
                                              </div>
                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_divSynonyms"
                                              >
                                                <a
                                                  class="btnMoreSynonyms"
                                                  href="#"
                                                  >Mehr...</a
                                                >
                                              </div>

                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_divKeywordChains"
                                              >
                                                <a
                                                  class="btnMoreKeywordChains"
                                                  href="#"
                                                  >Mehr...</a
                                                >
                                              </div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_ScreenReaderCharacterLink"
                                                  class="oclc-screen-reader-only"
                                                  >Suche nach dieser Beteiligten
                                                  Person</span
                                                >
                                              </div>
                                              <div>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblLanguageTitle"
                                                  class="oclc-module-label"
                                                  >Sprache:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblLanguageValue"
                                                  >Deutsch</span
                                                >
                                              </div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div></div>
                                              <div
                                                id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_DivSpanMediaGrpIcon"
                                              >
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblMediaGrp"
                                                  class="oclc-module-label"
                                                  >Mediengruppe:
                                                </span>
                                                <span
                                                  id="dnn_ctr377_MainView_UcDetailView_ucCatalogueDetailView_LblMediaGrpValue"
                                                  >Buch Belletr. Kin</span
                                                >
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <a
                                    href="http://katalog.stadtbibliothek-rostock.de/Mediensuche/ErweiterteSuche.aspx"
                                    >Zur Erweiterten Suche</a
                                  >
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>
    </form>
    </body>
    </html>
    """

    conn
    |> Req.Test.html(body)
  end

  def call(%{method: method, request_path: "/Benutzerkonto"} = conn, _opts) do
    {body, cookies} = conn |> fetch_cookies() |> get_cookies() |> get_response(method)

    conn
    |> put_resp_cookies(cookies)
    |> Req.Test.html(body)
  end

  defp get_response(%{".DOTNETNUKE" => _}, "GET") do
    body = """
    <!doctype html>
    <html lang="de-DE" dir="ltr">
    <head id="Head">
    <title>Stadtbibliothek Rostock > Benutzerkonto</title>
    </head>
    <body id="Body">
    <form
      method="post"
      action="/Benutzerkonto"
      id="Form"
      enctype="multipart/form-data"
    >
      <div class="aspNetHidden">
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
        <input
          type="hidden"
          name="__EVENTARGUMENT"
          id="__EVENTARGUMENT"
          value=""
        />
        <input
          type="hidden"
          name="__VIEWSTATE"
          id="__VIEWSTATE"
          value="5rGohmzWjXdlJGGN"
        />
      </div>

      <div class="aspNetHidden">
        <input
          type="hidden"
          name="__VIEWSTATEGENERATOR"
          id="__VIEWSTATEGENERATOR"
          value="CA0B0334"
        />
        <input
          type="hidden"
          name="__VIEWSTATEENCRYPTED"
          id="__VIEWSTATEENCRYPTED"
          value=""
        />
        <input
          type="hidden"
          name="__EVENTVALIDATION"
          id="__EVENTVALIDATION"
          value="U9PeAxyxHYmIpx0o"
        />
      </div>

      <input
        type="hidden"
        name="dnn$cookielaw$width"
        id="dnn_cookielaw_width"
      />
      <input
        type="hidden"
        name="dnn$cookielaw$height"
        id="dnn_cookielaw_height"
      />

      <div class="oclc-module-main oclc-cookieLawInfoModulepopup">
        <div
          id="dnn_cookielaw_popupCookieDetailsDialog_popup"
          class="oclc-module-popup dnn_cookielaw_popupCookieDetailsDialog"
        >
          <div id="dnn_cookielaw_popupCookieDetailsDialog_mainPopupDiv">
            <div>
              <h2 class="oclc-override-heading">
                <span
                  id="dnn_cookielaw_popupCookieDetailsDialog_lblHeader"
                  class="oclc-module-popup-header"
                  >Verwendung von Cookies</span
                >
              </h2>
              <div class="oclc-module-popup-content">
                <div id="dnn_cookielaw_popupCookieDetailsDialog_DivCookiePopup">
                  <p>
                    Diese Anwendung benötigt für ihren fehlerfreien Ablauf
                    Cookies. <br />
                    Cookies sind kleine Textdateien, die von einer Webseite oder
                    einem Online-Dienst auf Ihrem Rechner gespeichert werden.
                    <br />
                    Nachfolgend erhalten Sie eine Auflistung der von OCLC
                    verwendeten Cookies mit Angabe des Anbieters, einer
                    Kurzbeschreibung und der Speicherdauer auf Ihrem Computer
                    (sofern Sie diese nicht sperren oder löschen). Es werden
                    keine personenbezogenen Daten erhoben.
                    <br /><br />
                  </p>
                </div>
              </div>
              <div class="oclc-module-popup-footer">
                <div>
                  <input
                    type="submit"
                    name="dnn$cookielaw$popupCookieDetailsDialog$btnDefault"
                    value="OK"
                    id="dnn_cookielaw_popupCookieDetailsDialog_btnDefault"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="body_bg full">
        <div id="dnn_wrapper">
          <div class="wrapper">
            <div class="visible-xs">
              <header class="mobile_top">
                <div class="phoneHeadTop clearfix">
                  <span
                    class="glyphicons glyph-search"
                    id="mobile_search"
                  ></span>
                  <span class="  ">
                    <a
                      id="dnn_dnnLOGO4_hypLogo"
                      title="Stadtbibliothek Rostock"
                      href="https://katalog.stadtbibliothek-rostock.de/"
                      ><img
                        id="dnn_dnnLOGO4_imgLogo"
                        src="/Portals/0/Logo-Webseite_s.png?ver=4jzYgtiC-jUOY7rmjE6EJA%3d%3d"
                        alt="Stadtbibliothek Rostock"
                    /></a>
                  </span>

                  <a href="#gomenu45382ef7a6" class="mobilemenu_close">X</a>
                  <div id="gomenu45382ef7a6" class="mobile_menu">
                    <ul class="menu_list">
                      <li class="first-item Item-1">
                        <a
                          href="https://katalog.stadtbibliothek-rostock.de/"
                          title="Willkommen"
                          ><span>Willkommen</span></a
                        >
                      </li>
                      <li class="dir Item-2">
                        <a
                          href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche"
                          title="Mediensuche"
                          ><span>Mediensuche</span></a
                        >
                        <ul>
                          <li class="first-item SunItem-1">
                            <a
                              href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche"
                              title="Einfache Suche"
                              ><span>Einfache Suche</span></a
                            >
                          </li>
                          <li class="SunItem-2">
                            <a
                              href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Erweiterte-Suche"
                              title="Erweiterte Suche"
                              ><span>Erweiterte Suche</span></a
                            >
                          </li>
                          <li class="SunItem-3">
                            <a
                              href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Medientipps"
                              title="Medientipps"
                              ><span>Medientipps</span></a
                            >
                          </li>
                          <li class="last-item SunItem-4">
                            <a
                              href="https://www.onleihe.de/mecklenburg-vorpommern/frontend/welcome,51-0-0-100-0-0-1-0-0-0-0.html"
                              title="Onleihe M-V"
                              target="_blank"
                              ><span>Onleihe M-V</span></a
                            >
                          </li>
                        </ul>
                      </li>
                      <li class="dir current Item-3 mm-selected">
                        <a
                          href="https://katalog.stadtbibliothek-rostock.de/Benutzerkonto"
                          class="acurrent"
                          title="Benutzerkonto"
                          ><span>Benutzerkonto</span></a
                        >
                        <ul>
                          <li class="last-item SunItem-1">
                            <a
                              href="https://katalog.stadtbibliothek-rostock.de/Benutzerkonto/Benutzungshinweise"
                              title="Benutzungshinweise"
                              ><span>Benutzungshinweise</span></a
                            >
                          </li>
                        </ul>
                      </li>
                      <li class="dir last-item Item-4">
                        <a
                          href="https://katalog.stadtbibliothek-rostock.de/Impressum-Datenschutz/Impressum"
                          title="Impressum/Datenschutz"
                          ><span>Impressum/Datenschutz</span></a
                        >
                        <ul>
                          <li class="first-item SunItem-1">
                            <a
                              href="https://katalog.stadtbibliothek-rostock.de/Impressum-Datenschutz/Impressum"
                              title="Impressum"
                              ><span>Impressum</span></a
                            >
                          </li>
                          <li class="last-item SunItem-2">
                            <a
                              href="https://katalog.stadtbibliothek-rostock.de/Impressum-Datenschutz/Datenschutz"
                              title="Datenschutzerklärung"
                              ><span>Datenschutz</span></a
                            >
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="phoneHeadBottom">
                  <div class="HeadPane_mobile menu_header"></div>
                  <div class="searchBox2" id="search2">
                    <div>
                      <span id="dnn_dnnSEARCH2_ClassicSearch">
                        <input
                          name="dnn$dnnSEARCH2$txtSearch"
                          type="text"
                          maxlength="255"
                          size="20"
                          id="dnn_dnnSEARCH2_txtSearch"
                          class="NormalTextBox"
                        />&nbsp;
                        <a
                          id="dnn_dnnSEARCH2_cmdSearch"
                          title="Suchen"
                          class="search"
                          href="javascript:__doPostBack(&#39;dnn$dnnSEARCH2$cmdSearch&#39;,&#39;&#39;)"
                          >GO</a
                        >
                      </span>
                    </div>
                  </div>
                  <div class="Login">
                    <a
                      id="dnn_dnnUser3_registerLink"
                      title="Profil anzeigen"
                      class="SkinObject"
                      rel="nofollow"
                      href="https://katalog.stadtbibliothek-rostock.de/Benutzerkonto/userId/27768"
                      >Röske Leonie</a
                    >

                    <span class="sep">|</span>

                    <div id="dnn_dnnLogin3_loginGroup" class="loginGroup">
                      <a
                        id="dnn_dnnLogin3_enhancedLoginLink"
                        title="abmelden"
                        class="LoginLink"
                        rel="nofollow"
                        href="https://katalog.stadtbibliothek-rostock.de/Benutzerkonto/ctl/Logoff"
                        >abmelden</a
                      >
                    </div>
                  </div>
                  <div class="languageBox">
                    <div class="language-object">
                      <label
                        for="dnn_dnnLANGUAGE8_selectCulture"
                        id="dnn_dnnLANGUAGE8_lblSelectCultureScreenReader"
                        class="oclc-screen-reader-only"
                        >Sprache auswählen</label
                      >
                    </div>
                  </div>
                </div>
              </header>
            </div>

            <section id="dnn_content">
              <div
                id="dnn_Full_Screen_PaneA"
                class="Full_Screen_PaneA DNNEmptyPane"
              ></div>
              <div class="dnn_layoutB">
                <div class="content_mid clearfix">
                  <div class="pane_layout">
                    <div class="row">
                      <div class="col-sm-12">
                        <div
                          id="dnn_TopPane"
                          class="TopPane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div
                id="dnn_Full_Screen_PaneB"
                class="Full_Screen_PaneB DNNEmptyPane"
              ></div>
              <div class="dnn_layoutB">
                <div class="content_mid clearfix">
                  <div class="pane_layout">
                    <div class="row">
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowOne_Grid3_Pane"
                          class="RowOne_Grid3_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-9">
                        <div
                          id="dnn_RowOne_Grid9_Pane"
                          class="RowOne_Grid9_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowTwo_Grid4_Pane"
                          class="RowTwo_Grid4_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-8">
                        <div
                          id="dnn_RowTwo_Grid8_Pane"
                          class="RowTwo_Grid8_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-5">
                        <div
                          id="dnn_RowThree_Grid5_Pane"
                          class="RowThree_Grid5_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-7">
                        <div
                          id="dnn_RowThree_Grid7_Pane"
                          class="RowThree_Grid7_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-6">
                        <div
                          id="dnn_RowFour_Grid6_Pane1"
                          class="RowFour_Grid6_Pane1 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-6">
                        <div
                          id="dnn_RowFour_Grid6_Pane2"
                          class="RowFour_Grid6_Pane2 DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-7">
                        <div
                          id="dnn_RowFive_Grid7_Pane"
                          class="RowFive_Grid7_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-5">
                        <div
                          id="dnn_RowFive_Grid5_Pane"
                          class="RowFive_Grid5_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-8">
                        <div
                          id="dnn_RowSix_Grid8_Pane"
                          class="RowSix_Grid8_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowSix_Grid4_Pane"
                          class="RowSix_Grid4_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-9">
                        <div
                          id="dnn_RowSeven_Grid9_Pane"
                          class="RowSeven_Grid9_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowSeven_Grid3_Pane"
                          class="RowSeven_Grid3_Pane DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div
                id="dnn_Full_Screen_PaneC"
                class="Full_Screen_PaneC DNNEmptyPane"
              ></div>
              <div class="dnn_layoutB">
                <div class="content_mid clearfix">
                  <div class="pane_layout">
                    <div class="row">
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowEight_Grid4_Pane1"
                          class="RowEight_Grid4_Pane1"
                        >
                          <div
                            class="DnnModule DnnModule-NuntioContent DnnModule-983"
                          >
                            <div class="Container-H3">
                              <div class="dnntitle">
                                <h3>
                                  <span
                                    id="dnn_ctr983_dnnTITLE_titleLabel"
                                    class="title_H3"
                                    >Benutzerkonto</span
                                  >
                                </h3>
                              </div>

                              <div class="contentmain">
                                <div
                                  id="dnn_ctr983_ContentPane"
                                  class="contentpane"
                                >
                                  <div
                                    id="dnn_ctr983_ModuleContent"
                                    class="DNNModuleContent ModNuntioContentC"
                                  >
                                    <p>
                                      Hinweise zur Benutzung finden Sie<a
                                        href="https://katalog.stadtbibliothek-rostock.de/Benutzerkonto/Benutzungshinweise"
                                        >hier</a
                                      >.
                                    </p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div
                            class="DnnModule DnnModule-Authentication DnnModule-843"
                          ></div>
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowEight_Grid4_Pane2"
                          class="RowEight_Grid4_Pane2 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowEight_Grid4_Pane3"
                          class="RowEight_Grid4_Pane3 DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowNine_Grid3_Pane1"
                          class="RowNine_Grid3_Pane1 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-6">
                        <div
                          id="dnn_RowNine_Grid6_Pane"
                          class="RowNine_Grid6_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowNine_Grid3_Pane2"
                          class="RowNine_Grid3_Pane2 DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-3">
                        <div
                          id="dnn_RownTen_Grid3_Pane1"
                          class="RownTen_Grid3_Pane1 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowTen_Grid3_Pane2"
                          class="RowTen_Grid3_Pane2 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowTen_Grid3_Pane3"
                          class="RowTen_Grid3_Pane3 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowTen_Grid3_Pane4"
                          class="RowTen_Grid3_Pane4 DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div
                id="dnn_Full_Screen_PaneD"
                class="Full_Screen_PaneD DNNEmptyPane"
              ></div>
              <div class="dnn_layoutB">
                <div class="content_mid clearfix">
                  <div class="pane_layout">
                    <div class="row">
                      <div class="col-sm-12">
                        <div id="dnn_ContentPane" class="ContentPane">
                          <div
                            class="DnnModule DnnModule-NuntioContent DnnModule-970"
                          ></div>
                          <div
                            class="DnnModule DnnModule-OPENPatronAccountModule DnnModule-461"
                          >
                            <div class="Container-H3">
                              <div class="dnntitle">
                                <h3>
                                  <span
                                    id="dnn_ctr461_dnnTITLE_titleLabel"
                                    class="title_H3"
                                  >
                                  </span>
                                </h3>
                              </div>

                              <div class="contentmain">
                                <div
                                  id="dnn_ctr461_ContentPane"
                                  class="contentpane"
                                >
                                  <div
                                    id="dnn_ctr461_ModuleContent"
                                    class="DNNModuleContent ModOPENPatronAccountModuleC"
                                  >
                                    <div
                                      id="dnn_ctr461_MainView_divPatronAccountMain"
                                      class="oclc-module-main oclc-patronaccountmodule"
                                    >
                                      <div
                                        id="dnn_ctr461_MainView_paymentMessagePopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_paymentMessagePopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_paymentMessagePopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_paymentMessagePopup_lblHeader"
                                                class="oclc-module-popup-header"
                                                >Hinweis</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <span
                                                id="dnn_ctr461_MainView_paymentMessagePopup_LblPaymentMessage"
                                              ></span>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$paymentMessagePopup$btnDefault"
                                                  value="Drucken"
                                                  id="dnn_ctr461_MainView_paymentMessagePopup_btnDefault"
                                                />
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$paymentMessagePopup$btnCancel"
                                                  value="OK"
                                                  id="dnn_ctr461_MainView_paymentMessagePopup_btnCancel"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_messagePopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_messagePopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_messagePopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_messagePopup_lblHeader"
                                                class="oclc-module-header"
                                                >Fehlermeldung</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <div
                                                id="dnn_ctr461_MainView_messagePopup_extendDiv"
                                                class="spacingBottom"
                                              >
                                                <div
                                                  id="dnn_ctr461_MainView_messagePopup_divMessagePopup"
                                                >
                                                  <span
                                                    id="dnn_ctr461_MainView_messagePopup_lblMessage"
                                                  ></span>
                                                </div>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$messagePopup$btnDefault"
                                                  value="OK"
                                                  id="dnn_ctr461_MainView_messagePopup_btnDefault"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_extensionsPopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_extensionsPopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_extensionsPopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_extensionsPopup_lblHeader"
                                                class="oclc-module-header"
                                                >Verlängerung</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <div
                                                class="oclc-module-label"
                                              ></div>

                                              <div
                                                class="spacingTop oclc-module-label"
                                              ></div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$extensionsPopup$btnDefault"
                                                  value="OK"
                                                  id="dnn_ctr461_MainView_extensionsPopup_btnDefault"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_loansExtensionPopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_loansExtensionPopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_loansExtensionPopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_loansExtensionPopup_lblHeader"
                                                class="oclc-module-header"
                                              ></span>
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <div
                                                class="oclc-patronaccountmodule-loansextension"
                                              >
                                                <div
                                                  class="dnnFormMessage dnnFormWarning"
                                                >
                                                  <span
                                                    id="dnn_ctr461_MainView_loansExtensionPopup_ucLoansExtension_LblConfirmMessage"
                                                    >Bitte bestätigen Sie die
                                                    Verlängerung am Ende der
                                                    Seite.</span
                                                  >
                                                </div>
                                                <div></div>
                                                <div
                                                  id="dnn_ctr461_MainView_loansExtensionPopup_ucLoansExtension_FeeSumDiv"
                                                  class="oclc-patronaccountmodule-loansextension-total"
                                                >
                                                  <span
                                                    id="dnn_ctr461_MainView_loansExtensionPopup_ucLoansExtension_LblFeeTotalTitle"
                                                    class="oclc-module-label"
                                                    >Verlängerungs- und
                                                    Verzugsentgelte gesamt:
                                                  </span>
                                                  <span
                                                    id="dnn_ctr461_MainView_loansExtensionPopup_ucLoansExtension_LblFeeTotalData"
                                                    class="oclc-module-label"
                                                  ></span>
                                                </div>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$loansExtensionPopup$btnDefault"
                                                  value="Verlängerung durchführen"
                                                  id="dnn_ctr461_MainView_loansExtensionPopup_btnDefault"
                                                />
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$loansExtensionPopup$btnCancel"
                                                  value="Abbrechen"
                                                  id="dnn_ctr461_MainView_loansExtensionPopup_btnCancel"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_passwordChangePopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_passwordChangePopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_passwordChangePopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_passwordChangePopup_lblHeader"
                                                class="oclc-module-popup-header"
                                                >Passwort ändern</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <div
                                                id="dnn_ctr461_MainView_passwordChangePopup_ChangePW"
                                              >
                                                <div
                                                  class="oclc-module-labellayout"
                                                >
                                                  <div
                                                    class="password-toggle-container"
                                                  >
                                                    <label
                                                      for="dnn_ctr461_MainView_passwordChangePopup_TxtOldPassword"
                                                      id="dnn_ctr461_MainView_passwordChangePopup_LblOldPassword"
                                                      >Aktuelles
                                                      Passwort:</label
                                                    >
                                                    <span class="oclc-textbox">
                                                      <input
                                                        name="dnn$ctr461$MainView$passwordChangePopup$TxtOldPassword"
                                                        type="password"
                                                        autocomplete="off"
                                                        id="dnn_ctr461_MainView_passwordChangePopup_TxtOldPassword"
                                                      />
                                                      <button
                                                        type="button"
                                                        class="password-toggle-button"
                                                      >
                                                        <span
                                                          class="show-password-icon"
                                                          ><i
                                                            class="far fa-eye"
                                                          ></i
                                                        ></span>
                                                        <span
                                                          class="hide-password-icon"
                                                          ><i
                                                            class="far fa-eye-slash"
                                                          ></i
                                                        ></span>
                                                      </button>
                                                    </span>
                                                  </div>
                                                  <div
                                                    class="password-toggle-container"
                                                  >
                                                    <label
                                                      for="dnn_ctr461_MainView_passwordChangePopup_TxtNewPassword"
                                                      id="dnn_ctr461_MainView_passwordChangePopup_LblNewPassword"
                                                      >Neues Passwort:</label
                                                    >
                                                    <span class="oclc-textbox">
                                                      <input
                                                        name="dnn$ctr461$MainView$passwordChangePopup$TxtNewPassword"
                                                        type="password"
                                                        autocomplete="off"
                                                        id="dnn_ctr461_MainView_passwordChangePopup_TxtNewPassword"
                                                      />
                                                      <button
                                                        type="button"
                                                        class="password-toggle-button"
                                                      >
                                                        <span
                                                          class="show-password-icon"
                                                          ><i
                                                            class="far fa-eye"
                                                          ></i
                                                        ></span>
                                                        <span
                                                          class="hide-password-icon"
                                                          ><i
                                                            class="far fa-eye-slash"
                                                          ></i
                                                        ></span>
                                                      </button>
                                                    </span>
                                                  </div>
                                                  <div
                                                    class="password-toggle-container"
                                                  >
                                                    <label
                                                      for="dnn_ctr461_MainView_passwordChangePopup_TxtNewPasswordRepeat"
                                                      id="dnn_ctr461_MainView_passwordChangePopup_LblNewPasswordRepeat"
                                                      >Passwortbestätigung:</label
                                                    >
                                                    <span class="oclc-textbox">
                                                      <input
                                                        name="dnn$ctr461$MainView$passwordChangePopup$TxtNewPasswordRepeat"
                                                        type="password"
                                                        autocomplete="off"
                                                        id="dnn_ctr461_MainView_passwordChangePopup_TxtNewPasswordRepeat"
                                                      />
                                                      <button
                                                        type="button"
                                                        class="password-toggle-button"
                                                      >
                                                        <span
                                                          class="show-password-icon"
                                                          ><i
                                                            class="far fa-eye"
                                                          ></i
                                                        ></span>
                                                        <span
                                                          class="hide-password-icon"
                                                          ><i
                                                            class="far fa-eye-slash"
                                                          ></i
                                                        ></span>
                                                      </button>
                                                    </span>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$passwordChangePopup$btnDefault"
                                                  value="OK"
                                                  id="dnn_ctr461_MainView_passwordChangePopup_btnDefault"
                                                />
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$passwordChangePopup$btnCancel"
                                                  value="Abbrechen"
                                                  id="dnn_ctr461_MainView_passwordChangePopup_btnCancel"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_passwordChangeSuccessPopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_passwordChangeSuccessPopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_passwordChangeSuccessPopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_passwordChangeSuccessPopup_lblHeader"
                                                class="oclc-module-popup-header"
                                                >Passwort ändern</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <div
                                                id="dnn_ctr461_MainView_passwordChangeSuccessPopup_passwordChangeSuccessDiv"
                                                class="dnnFormMessage dnnFormInfo"
                                              >
                                                <span
                                                  id="dnn_ctr461_MainView_passwordChangeSuccessPopup_LblChangePasswordSuccessMessage"
                                                ></span>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$passwordChangeSuccessPopup$btnDefault"
                                                  value="OK"
                                                  id="dnn_ctr461_MainView_passwordChangeSuccessPopup_btnDefault"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_printPopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_printPopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_printPopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_printPopup_lblHeader"
                                                class="oclc-module-popup-header"
                                                >Benutzerkonto drucken</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <div
                                                id="dnn_ctr461_MainView_printPopup_DivPrintSelection"
                                              >
                                                <div>
                                                  <span
                                                    class="normalRadioButton oclc-radiobutton"
                                                    ><input
                                                      id="dnn_ctr461_MainView_printPopup_RBPrintCompleteAccount"
                                                      type="radio"
                                                      name="dnn$ctr461$MainView$printPopup$PrintRBGroup"
                                                      value="RBPrintCompleteAccount"
                                                      checked="checked"
                                                    /><label
                                                      for="dnn_ctr461_MainView_printPopup_RBPrintCompleteAccount"
                                                      >Komplettes
                                                      Benutzerkonto</label
                                                    ></span
                                                  >
                                                </div>
                                                <div>
                                                  <span
                                                    class="normalRadioButton oclc-radiobutton"
                                                    ><input
                                                      id="dnn_ctr461_MainView_printPopup_RBPrintAccountSelection"
                                                      type="radio"
                                                      name="dnn$ctr461$MainView$printPopup$PrintRBGroup"
                                                      value="RBPrintAccountSelection"
                                                    /><label
                                                      for="dnn_ctr461_MainView_printPopup_RBPrintAccountSelection"
                                                      >Auswahl</label
                                                    ></span
                                                  >
                                                </div>
                                              </div>

                                              <div
                                                id="PAPrintCheckBoxAreaDesc"
                                                class="oclc-screen-reader-only"
                                              >
                                                Elemente für die Druckauswahl
                                                wählen
                                              </div>
                                              <div id="PAPrintCheckBoxArea">
                                                <div>
                                                  <span
                                                    class="normalCheckBox oclc-checkbox"
                                                    ><input
                                                      id="dnn_ctr461_MainView_printPopup_CbxLoans"
                                                      type="checkbox"
                                                      name="dnn$ctr461$MainView$printPopup$CbxLoans"
                                                    /><label
                                                      for="dnn_ctr461_MainView_printPopup_CbxLoans"
                                                      >Ausgeliehene
                                                      Medien</label
                                                    ></span
                                                  >
                                                </div>
                                                <div>
                                                  <span
                                                    class="normalCheckBox oclc-checkbox"
                                                    ><input
                                                      id="dnn_ctr461_MainView_printPopup_CbxReservations"
                                                      type="checkbox"
                                                      name="dnn$ctr461$MainView$printPopup$CbxReservations"
                                                    /><label
                                                      for="dnn_ctr461_MainView_printPopup_CbxReservations"
                                                      >Vorbestellte
                                                      Medien</label
                                                    ></span
                                                  >
                                                </div>
                                                <div>
                                                  <span
                                                    class="normalCheckBox oclc-checkbox"
                                                    ><input
                                                      id="dnn_ctr461_MainView_printPopup_CbxEkz"
                                                      type="checkbox"
                                                      name="dnn$ctr461$MainView$printPopup$CbxEkz"
                                                    /><label
                                                      for="dnn_ctr461_MainView_printPopup_CbxEkz"
                                                      >Onleihe</label
                                                    ></span
                                                  >
                                                </div>
                                                <div></div>
                                                <div>
                                                  <span
                                                    class="normalCheckBox oclc-checkbox"
                                                    ><input
                                                      id="dnn_ctr461_MainView_printPopup_CbxFees"
                                                      type="checkbox"
                                                      name="dnn$ctr461$MainView$printPopup$CbxFees"
                                                    /><label
                                                      for="dnn_ctr461_MainView_printPopup_CbxFees"
                                                      >Gebühren</label
                                                    ></span
                                                  >
                                                </div>
                                                <div>
                                                  <span
                                                    class="normalCheckBox oclc-checkbox"
                                                    ><input
                                                      id="dnn_ctr461_MainView_printPopup_CbxWatchList"
                                                      type="checkbox"
                                                      name="dnn$ctr461$MainView$printPopup$CbxWatchList"
                                                    /><label
                                                      for="dnn_ctr461_MainView_printPopup_CbxWatchList"
                                                      >Merkliste</label
                                                    ></span
                                                  >
                                                </div>
                                                <div>
                                                  <span
                                                    class="normalCheckBox oclc-checkbox"
                                                    ><input
                                                      id="dnn_ctr461_MainView_printPopup_CbxPatronSettings"
                                                      type="checkbox"
                                                      name="dnn$ctr461$MainView$printPopup$CbxPatronSettings"
                                                    /><label
                                                      for="dnn_ctr461_MainView_printPopup_CbxPatronSettings"
                                                      >Einstellungen</label
                                                    ></span
                                                  >
                                                </div>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$printPopup$btnDefault"
                                                  value="Drucken"
                                                  id="dnn_ctr461_MainView_printPopup_btnDefault"
                                                />
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$printPopup$btnCancel"
                                                  value="Abbrechen"
                                                  id="dnn_ctr461_MainView_printPopup_btnCancel"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_extendAccountMessagePopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_extendAccountMessagePopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_extendAccountMessagePopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_extendAccountMessagePopup_lblHeader"
                                                class="oclc-module-popup-header"
                                                >Keine Verlängerung möglich.
                                              </span>
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <span
                                                id="dnn_ctr461_MainView_extendAccountMessagePopup_LblAccountExtensionFailedMessage"
                                              ></span>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div></div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_changePatronAccountDataPopup"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_changePatronAccountDataPopup_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_changePatronAccountDataPopup_lblHeader"
                                                class="oclc-module-popup-header"
                                                >Persönliche Daten</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <div
                                                id="dnn_ctr461_MainView_changePatronAccountDataPopup_DivchangePatronAccountDataPopup"
                                                class="oclc-module-labellayout"
                                              >
                                                <div>
                                                  <label
                                                    for="dnn_ctr461_MainView_changePatronAccountDataPopup_LblNameData"
                                                    id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblNameTitle"
                                                    class="oclc-module-label"
                                                    >Name, Vorname:
                                                  </label>
                                                  <div>
                                                    <span class="oclc-textbox"
                                                      ><input
                                                        name="dnn$ctr461$MainView$changePatronAccountDataPopup$LblNameData"
                                                        type="text"
                                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblNameData"
                                                    /></span>
                                                  </div>
                                                </div>
                                                <div>
                                                  <label
                                                    for="dnn_ctr461_MainView_changePatronAccountDataPopup_LblAddressData"
                                                    id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblAddressTitle"
                                                    class="oclc-module-label"
                                                    >Adresse:
                                                  </label>
                                                  <div>
                                                    <span class="oclc-textbox"
                                                      ><input
                                                        name="dnn$ctr461$MainView$changePatronAccountDataPopup$LblAddressData"
                                                        type="text"
                                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblAddressData"
                                                    /></span>
                                                  </div>
                                                </div>
                                                <div>
                                                  <label
                                                    for="dnn_ctr461_MainView_changePatronAccountDataPopup_LblZipCodeData"
                                                    id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblZipCode"
                                                    class="oclc-module-label"
                                                    >Postleitzahl:</label
                                                  >
                                                  <div>
                                                    <span class="oclc-textbox"
                                                      ><input
                                                        name="dnn$ctr461$MainView$changePatronAccountDataPopup$LblZipCodeData"
                                                        type="text"
                                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblZipCodeData"
                                                    /></span>
                                                  </div>
                                                </div>
                                                <div>
                                                  <label
                                                    for="dnn_ctr461_MainView_changePatronAccountDataPopup_LblCityData"
                                                    id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblCity"
                                                    class="oclc-module-label"
                                                    >Ort:</label
                                                  >
                                                  <div>
                                                    <span class="oclc-textbox"
                                                      ><input
                                                        name="dnn$ctr461$MainView$changePatronAccountDataPopup$LblCityData"
                                                        type="text"
                                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblCityData"
                                                    /></span>
                                                  </div>
                                                </div>
                                                <div>
                                                  <label
                                                    for="dnn_ctr461_MainView_changePatronAccountDataPopup_LblPhoneNumberData"
                                                    id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblPhoneNumberTitle"
                                                    class="oclc-module-label"
                                                    >Telefon:
                                                  </label>
                                                  <div>
                                                    <span class="oclc-textbox"
                                                      ><input
                                                        name="dnn$ctr461$MainView$changePatronAccountDataPopup$LblPhoneNumberData"
                                                        type="text"
                                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblPhoneNumberData"
                                                    /></span>
                                                  </div>
                                                </div>
                                                <div>
                                                  <label
                                                    for="dnn_ctr461_MainView_changePatronAccountDataPopup_LblMobilePhoneNumberData"
                                                    id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblMobilePhoneNumberTitle"
                                                    class="oclc-module-label"
                                                    >Handy:
                                                  </label>
                                                  <div>
                                                    <span class="oclc-textbox"
                                                      ><input
                                                        name="dnn$ctr461$MainView$changePatronAccountDataPopup$LblMobilePhoneNumberData"
                                                        type="text"
                                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblMobilePhoneNumberData"
                                                    /></span>
                                                  </div>
                                                </div>
                                                <div>
                                                  <label
                                                    for="dnn_ctr461_MainView_changePatronAccountDataPopup_LblEmailAddressData"
                                                    id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblEmailAddressTitle"
                                                    class="oclc-module-label"
                                                    >E-Mail:
                                                  </label>
                                                  <div>
                                                    <span class="oclc-textbox"
                                                      ><input
                                                        name="dnn$ctr461$MainView$changePatronAccountDataPopup$LblEmailAddressData"
                                                        type="text"
                                                        maxlength="80"
                                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblEmailAddressData"
                                                    /></span>
                                                    <div
                                                      id="dnn_ctr461_MainView_changePatronAccountDataPopup_EmailDiv"
                                                    >
                                                      <span
                                                        id="dnn_ctr461_MainView_changePatronAccountDataPopup_LblEmailNotificationWarning"
                                                        class="oclc-module-labelerror"
                                                        >Derzeit werden Sie per
                                                        Email benachrichtigt.
                                                        Das Ändern der
                                                        Benachrichtigungsoption
                                                        kann Kosten verursachen
                                                        (z.B. Portokosten). Für
                                                        weitere Information
                                                        wenden Sie sich bitte an
                                                        das
                                                        Bibliothekspersonal.</span
                                                      >
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$changePatronAccountDataPopup$btnDefault"
                                                  value="OK"
                                                  id="dnn_ctr461_MainView_changePatronAccountDataPopup_btnDefault"
                                                />
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$changePatronAccountDataPopup$btnCancel"
                                                  value="Abbrechen"
                                                  id="dnn_ctr461_MainView_changePatronAccountDataPopup_btnCancel"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div
                                        id="dnn_ctr461_MainView_popupPassword_popup"
                                        class="oclc-module-popup dnn_ctr461_MainView_popupPassword"
                                      >
                                        <div
                                          id="dnn_ctr461_MainView_popupPassword_mainPopupDiv"
                                        >
                                          <div>
                                            <h2 class="oclc-override-heading">
                                              <span
                                                id="dnn_ctr461_MainView_popupPassword_lblHeader"
                                                class="oclc-module-popup-header"
                                                >Benutzeranmeldung</span
                                              >
                                            </h2>
                                            <div
                                              class="oclc-module-popup-content"
                                            >
                                              <div
                                                class="password-toggle-container"
                                              >
                                                <label
                                                  for="dnn_ctr461_MainView_popupPassword_TxtPassword"
                                                  id="dnn_ctr461_MainView_popupPassword_LblPopupPassword"
                                                  >Um Ihre Identität zu
                                                  bestätigen müssen Sie Ihr
                                                  Passwort erneut
                                                  eingeben.</label
                                                >
                                                <span
                                                  class="oclc-textbox oclc-container-popup"
                                                >
                                                  <input
                                                    name="dnn$ctr461$MainView$popupPassword$TxtPassword"
                                                    type="password"
                                                    autocomplete="off"
                                                    id="dnn_ctr461_MainView_popupPassword_TxtPassword"
                                                  />
                                                  <button
                                                    id="dnn_ctr461_MainView_popupPassword_popupPasswordToggleButton"
                                                    type="button"
                                                    class="password-toggle-button"
                                                  >
                                                    <span
                                                      class="show-password-icon"
                                                      ><i class="far fa-eye"></i
                                                    ></span>
                                                    <span
                                                      class="hide-password-icon"
                                                      ><i
                                                        class="far fa-eye-slash"
                                                      ></i
                                                    ></span>
                                                  </button>
                                                </span>
                                              </div>
                                            </div>
                                            <div
                                              class="oclc-module-popup-footer"
                                            >
                                              <div>
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$popupPassword$btnDefault"
                                                  value="OK"
                                                  id="dnn_ctr461_MainView_popupPassword_btnDefault"
                                                />
                                                <input
                                                  type="submit"
                                                  name="dnn$ctr461$MainView$popupPassword$btnCancel"
                                                  value="Abbrechen"
                                                  id="dnn_ctr461_MainView_popupPassword_btnCancel"
                                                />
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>

                                      <div
                                        class="oclc-patronaccountmodule-helpbutton"
                                      >
                                        <a
                                          id="dnn_ctr461_MainView_LbtnHelp"
                                          class="LinkWithImgAndText HelpLink"
                                          href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$LbtnHelp", "", true, "", "", false, true))'
                                          ><i class="far fa-question-circle"></i
                                          ><span
                                            id="dnn_ctr461_MainView_LblHelp"
                                            >Zur Hilfe</span
                                          ></a
                                        >
                                      </div>

                                      <div
                                        id="dnn_ctr461_MainView_DivMainPatronAccountView"
                                      >
                                        <a
                                          id="dnn_ctr461_MainView_LbtnPrintPatronAccount"
                                          class="LinkWithImgAndText"
                                          href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$LbtnPrintPatronAccount", "", true, "", "", false, true))'
                                          ><i class="fas fa-print"></i
                                          ><span
                                            id="dnn_ctr461_MainView_LblPrintPatronAccount"
                                            >Benutzerkonto drucken</span
                                          ></a
                                        >
                                        <div>
                                          <div
                                            id="dnn_ctr461_MainView_tabContainer"
                                          >
                                            <div
                                              id="dnn_ctr461_MainView_tabContainer_lc"
                                              class="DnnTabGroup"
                                            >
                                              <span
                                                id="dnn_ctr461_MainView_tpnlLoans_l"
                                                class="DnnTabSelected"
                                                >Ausgeliehene Medien<span
                                                  class="DnnTabFlag"
                                                  >5</span
                                                ></span
                                              ><span
                                                id="dnn_ctr461_MainView_tpnlReservations_l"
                                                class="DnnTab"
                                                >Vorbestellte Medien<span
                                                  class="DnnTabFlag"
                                                  >0</span
                                                ></span
                                              ><span
                                                id="dnn_ctr461_MainView_tpnlEkz_l"
                                                class="DnnTab"
                                                >Onleihe<span
                                                  class="DnnTabFlag"
                                                  id="EkzLoadingSymbol"
                                                  >-</span
                                                ></span
                                              ><span
                                                id="dnn_ctr461_MainView_tpnlOverdrive_l"
                                                class="DnnTab"
                                                >OverDrive<span
                                                  class="DnnTabFlag"
                                                  id="OverdriveLoadingSymbol"
                                                  >-</span
                                                ></span
                                              ><span
                                                id="dnn_ctr461_MainView_tpnlRemoteLoans_l"
                                                class="DnnTab"
                                              ></span
                                              ><span
                                                id="dnn_ctr461_MainView_tpnlFees_l"
                                                class="DnnTab"
                                                >Gebühren<span
                                                  class="DnnTabFlag"
                                                  >0,00 EUR</span
                                                ></span
                                              ><span
                                                id="dnn_ctr461_MainView_tpnlWatchList_l"
                                                class="DnnTab"
                                                >Merkliste<span
                                                  class="DnnTabFlag"
                                                  >0</span
                                                ></span
                                              ><span
                                                id="dnn_ctr461_MainView_tpnlPatronAccount_l"
                                                class="DnnTab"
                                                >Persönliche Daten<span
                                                  class="DnnTabFlag"
                                                  >-</span
                                                ></span
                                              ><span
                                                id="dnn_ctr461_MainView_tpnlPatronSettings_l"
                                                class="DnnTab"
                                                >Einstellungen</span
                                              >
                                            </div>
                                            <div
                                              id="dnn_ctr461_MainView_tabContainer_c"
                                              class="DnnContainerGroup"
                                            >
                                              <div
                                                id="dnn_ctr461_MainView_tpnlLoans"
                                                class="DnnContainer"
                                              >
                                                <p id="TabLoans"></p>
                                                <h2
                                                  id="dnn_ctr461_MainView_tpnlLoans_LoansHeader"
                                                  class="oclc-module-header"
                                                >
                                                  Ausgeliehene Medien
                                                </h2>

                                                <div
                                                  class="oclc-patronaccountmodule-loans"
                                                >
                                                  <div
                                                    id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_DivButtonsTop"
                                                    class="oclc-module-button oclc-StickyButton"
                                                  >
                                                    <input
                                                      type="submit"
                                                      name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$BtnExtendMediums"
                                                      value="Medien verlängern"
                                                      id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_BtnExtendMediums"
                                                    />
                                                    <span
                                                      id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_lblExtendMediumsDescription"
                                                      class="oclc-screen-reader-only"
                                                      >Hiermit können Sie
                                                      entliehene Medien
                                                      verlängern. Wählen Sie
                                                      hierzu die entsprechenden
                                                      Medien in der Tabelle
                                                      aus.</span
                                                    >
                                                  </div>
                                                  <div>
                                                    <table
                                                      class="oclc-module-table oclc-StickyButton oclc-patronaccount-checkboxtable"
                                                      id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans"
                                                    >
                                                      <tr>
                                                        <td>
                                                          <span
                                                            class="normalCheckBox loancheckboxall oclc-checkbox oclc-checkbox-wrap"
                                                            ><input
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkAllLoans"
                                                              type="checkbox"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl01$chkAllLoans"
                                                            /><label
                                                              for="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkAllLoans"
                                                              >Alle
                                                              verlängerbaren
                                                              ausgewählt</label
                                                            ></span
                                                          >
                                                        </td>
                                                        <th
                                                          scope="col"
                                                          abbr="Cover"
                                                        >
                                                          Cover
                                                        </th>
                                                        <th
                                                          title="Nach Titel sortieren"
                                                          scope="col"
                                                          abbr="Titel"
                                                        >
                                                          <a
                                                            title="Nach Titel sortieren"
                                                            href="javascript:__doPostBack(&#39;dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans&#39;,&#39;Sort$Title&#39;)"
                                                            >Titel
                                                            <i
                                                              class="fa fa-sort"
                                                            ></i
                                                          ></a>
                                                        </th>
                                                        <th
                                                          title="Nach Verfasser sortieren"
                                                          scope="col"
                                                          abbr="Verfasser"
                                                        >
                                                          <a
                                                            title="Nach Verfasser sortieren"
                                                            href="javascript:__doPostBack(&#39;dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans&#39;,&#39;Sort$Author&#39;)"
                                                            >Verfasser
                                                            <i
                                                              class="fa fa-sort"
                                                            ></i
                                                          ></a>
                                                        </th>
                                                        <th
                                                          title="Nach Mediengruppe sortieren"
                                                          scope="col"
                                                          abbr="Mediengruppe"
                                                        >
                                                          <a
                                                            title="Nach Mediengruppe sortieren"
                                                            href="javascript:__doPostBack(&#39;dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans&#39;,&#39;Sort$MediaGroup&#39;)"
                                                            >Mediengruppe
                                                            <i
                                                              class="fa fa-sort"
                                                            ></i
                                                          ></a>
                                                        </th>
                                                        <th
                                                          title="Nach Ausleihstelle sortieren"
                                                          scope="col"
                                                          abbr="Ausleihstelle"
                                                        >
                                                          <a
                                                            title="Nach Ausleihstelle sortieren"
                                                            href="javascript:__doPostBack(&#39;dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans&#39;,&#39;Sort$LoanBranch&#39;)"
                                                            >Ausleihstelle
                                                            <i
                                                              class="fa fa-sort"
                                                            ></i
                                                          ></a>
                                                        </th>
                                                        <th
                                                          title="Nach Aktuelle Frist sortieren"
                                                          scope="col"
                                                          abbr="Aktuelle Frist"
                                                        >
                                                          <a
                                                            title="Nach Aktuelle Frist sortieren"
                                                            href="javascript:__doPostBack(&#39;dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans&#39;,&#39;Sort$DueDate&#39;)"
                                                            >Aktuelle Frist
                                                            <i
                                                              class="fa fa-sort-up"
                                                            ></i
                                                          ></a>
                                                        </th>
                                                        <th
                                                          scope="col"
                                                          abbr="Verlängerbar"
                                                        >
                                                          Verlängerbar
                                                        </th>
                                                      </tr>
                                                      <tr>
                                                        <td>
                                                          <div
                                                            class="checkboxRegion"
                                                          >
                                                            <span
                                                              class="normalCheckBox loancheckbox oclc-checkbox"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_0"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl02$chkSelect"
                                                              /><label
                                                                for="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_0"
                                                                ><span
                                                                  class="sr-only"
                                                                  >Gefährliche
                                                                  Geburtstagsgrüße</span
                                                                >Ausgewählt</label
                                                              ></span
                                                            >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl02$CopyIdChx"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyIdChx_0"
                                                              value="0848209002"
                                                            />
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <div
                                                            id="coverRegion_dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_0"
                                                            class="coverRegion"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl02$coverView$IsInDetailViewHiddenField"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_0_IsInDetailViewHiddenField_0"
                                                              value="false"
                                                            />

                                                            <a
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_0_Link_0"
                                                              title="Gefährliche Geburtstagsgrüße"
                                                              data-no-dynamic-link="true"
                                                              data-covertitle="Gefährliche Geburtstagsgrüße"
                                                              data-base-title="Gefährliche Geburtstagsgrüße"
                                                              data-shop-tooltip-template="Zum Coveranbieter wechseln: {0}"
                                                              target="_self"
                                                              style="
                                                                cursor: default;
                                                                pointer-events: none;
                                                              "
                                                              ><img
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_0_Image_0"
                                                                class="coverSmall coverGradient"
                                                                data-sources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783737342407|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783737342407|c|SetSimpleCover|a|https://cover.ekz.de/9783737342407.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3737342407.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3737342407|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-devsources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783737342407|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783737342407|c|SetSimpleCover|a|https://cover.ekz.de/9783737342407.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3737342407.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3737342407|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-dummy-url="/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2"
                                                                onerror="
                                                                  SetNextCover(
                                                                    $(this),
                                                                  )
                                                                "
                                                                onload="
                                                                  CheckCoverImg(
                                                                    $(this),
                                                                  )
                                                                "
                                                                src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                            /></a>
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <a
                                                            href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?id=0848209"
                                                            id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_lnkTitle_0"
                                                            >Gef&#228;hrliche
                                                            Geburtstagsgr&#252;&#223;e</a
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Verfasser:</span
                                                          >
                                                          <span
                                                            >Habschick,
                                                            Anja</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Mediengruppe:</span
                                                          >
                                                          <span
                                                            >Buch Belletr.
                                                            Kin</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Ausleihstelle:</span
                                                          >
                                                          <span
                                                            >Zentralbibliothek</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Aktuelle
                                                            Frist:</span
                                                          >
                                                          <span
                                                            >02.06.2026</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <div
                                                            class="extendableRegion oclc-patronaccountmodule-extensiondetails"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl02$CopyId"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyId_0"
                                                              value="0848209002"
                                                            />
                                                            <div
                                                              class="extendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Verlängerbar:</span
                                                              >
                                                              <a
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_BtnExtendThis_0"
                                                                class="oclc-patronaccountmodule-extendThis LinkWithImgAndText"
                                                                href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl02$BtnExtendThis", "", true, "", "", false, true))'
                                                                ><i
                                                                  class="ImageExtendable fas fa-arrow-right fa-color-blue fa-larger"
                                                                ></i
                                                                ><span
                                                                  class="ImageExtendable"
                                                                  >Verlängerbar</span
                                                                ></a
                                                              >
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div
                                                              class="unExtendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Nicht
                                                                verlängerbar:</span
                                                              >
                                                              <i
                                                                class="ImageNotExtendable fas fa-times fa-color-red fa-larger"
                                                                title="Nicht verlängerbar"
                                                              ></i>
                                                              <span
                                                                class="ImageNotExtendable"
                                                              ></span>
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div class="load">
                                                              <i
                                                                class="fas fa-spinner fa-spin fa-larger"
                                                                title="lädt"
                                                              ></i>
                                                            </div>
                                                          </div>
                                                        </td>
                                                      </tr>
                                                      <tr>
                                                        <td>
                                                          <div
                                                            class="checkboxRegion"
                                                          >
                                                            <span
                                                              class="normalCheckBox loancheckbox oclc-checkbox"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_1"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl03$chkSelect"
                                                              /><label
                                                                for="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_1"
                                                                ><span
                                                                  class="sr-only"
                                                                  >Lustige
                                                                  Figuren und
                                                                  Tiere malen
                                                                  aus Zahlen &
                                                                  Buchstaben</span
                                                                >Ausgewählt</label
                                                              ></span
                                                            >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl03$CopyIdChx"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyIdChx_1"
                                                              value="0869647001"
                                                            />
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <div
                                                            id="coverRegion_dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_1"
                                                            class="coverRegion"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl03$coverView$IsInDetailViewHiddenField"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_1_IsInDetailViewHiddenField_1"
                                                              value="false"
                                                            />

                                                            <a
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_1_Link_1"
                                                              title="Lustige Figuren und Tiere malen aus Zahlen &amp; Buchstaben"
                                                              data-no-dynamic-link="true"
                                                              data-covertitle="Lustige Figuren und Tiere malen aus Zahlen &amp; Buchstaben"
                                                              data-base-title="Lustige Figuren und Tiere malen aus Zahlen &amp; Buchstaben"
                                                              data-shop-tooltip-template="Zum Coveranbieter wechseln: {0}"
                                                              target="_self"
                                                              style="
                                                                cursor: default;
                                                                pointer-events: none;
                                                              "
                                                              ><img
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_1_Image_1"
                                                                class="coverSmall coverGradient"
                                                                data-sources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783841102614|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783841102614|c|SetSimpleCover|a|http://cover.ekz.de//9783841102614.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3841102611.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3841102611|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-devsources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783841102614|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783841102614|c|SetSimpleCover|a|http://cover.ekz.de//9783841102614.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3841102611.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3841102611|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-dummy-url="/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2"
                                                                onerror="
                                                                  SetNextCover(
                                                                    $(this),
                                                                  )
                                                                "
                                                                onload="
                                                                  CheckCoverImg(
                                                                    $(this),
                                                                  )
                                                                "
                                                                src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                            /></a>
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <a
                                                            href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?id=0869647"
                                                            id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_lnkTitle_1"
                                                            >Lustige Figuren und
                                                            Tiere malen aus
                                                            Zahlen &amp;
                                                            Buchstaben</a
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Verfasser:</span
                                                          >
                                                          <span
                                                            >Hart,
                                                            Christopher</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Mediengruppe:</span
                                                          >
                                                          <span
                                                            >Buch Sachl.
                                                            Kin</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Ausleihstelle:</span
                                                          >
                                                          <span
                                                            >Zentralbibliothek</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Aktuelle
                                                            Frist:</span
                                                          >
                                                          <span
                                                            >02.06.2026</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <div
                                                            class="extendableRegion oclc-patronaccountmodule-extensiondetails"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl03$CopyId"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyId_1"
                                                              value="0869647001"
                                                            />
                                                            <div
                                                              class="extendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Verlängerbar:</span
                                                              >
                                                              <a
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_BtnExtendThis_1"
                                                                class="oclc-patronaccountmodule-extendThis LinkWithImgAndText"
                                                                href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl03$BtnExtendThis", "", true, "", "", false, true))'
                                                                ><i
                                                                  class="ImageExtendable fas fa-arrow-right fa-color-blue fa-larger"
                                                                ></i
                                                                ><span
                                                                  class="ImageExtendable"
                                                                  >Verlängerbar</span
                                                                ></a
                                                              >
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div
                                                              class="unExtendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Nicht
                                                                verlängerbar:</span
                                                              >
                                                              <i
                                                                class="ImageNotExtendable fas fa-times fa-color-red fa-larger"
                                                                title="Nicht verlängerbar"
                                                              ></i>
                                                              <span
                                                                class="ImageNotExtendable"
                                                              ></span>
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div class="load">
                                                              <i
                                                                class="fas fa-spinner fa-spin fa-larger"
                                                                title="lädt"
                                                              ></i>
                                                            </div>
                                                          </div>
                                                        </td>
                                                      </tr>
                                                      <tr>
                                                        <td>
                                                          <div
                                                            class="checkboxRegion"
                                                          >
                                                            <span
                                                              class="normalCheckBox loancheckbox oclc-checkbox"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_2"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl04$chkSelect"
                                                              /><label
                                                                for="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_2"
                                                                ><span
                                                                  class="sr-only"
                                                                  >Nebeltanz</span
                                                                >Ausgewählt</label
                                                              ></span
                                                            >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl04$CopyIdChx"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyIdChx_2"
                                                              value="0899811002"
                                                            />
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <div
                                                            id="coverRegion_dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_2"
                                                            class="coverRegion"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl04$coverView$IsInDetailViewHiddenField"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_2_IsInDetailViewHiddenField_2"
                                                              value="false"
                                                            />

                                                            <a
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_2_Link_2"
                                                              title="Nebeltanz"
                                                              data-no-dynamic-link="true"
                                                              data-covertitle="Nebeltanz"
                                                              data-base-title="Nebeltanz"
                                                              data-shop-tooltip-template="Zum Coveranbieter wechseln: {0}"
                                                              target="_self"
                                                              style="
                                                                cursor: default;
                                                                pointer-events: none;
                                                              "
                                                              ><img
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_2_Image_2"
                                                                class="coverSmall coverGradient"
                                                                data-sources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783522507486|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783522507486|c|SetSimpleCover|a|https://cover.ekz.de/9783522507486.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3522507487.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3522507487|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-devsources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783522507486|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783522507486|c|SetSimpleCover|a|https://cover.ekz.de/9783522507486.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3522507487.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3522507487|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-dummy-url="/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2"
                                                                onerror="
                                                                  SetNextCover(
                                                                    $(this),
                                                                  )
                                                                "
                                                                onload="
                                                                  CheckCoverImg(
                                                                    $(this),
                                                                  )
                                                                "
                                                                src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                            /></a>
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <a
                                                            href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?id=0899811"
                                                            id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_lnkTitle_2"
                                                            >Nebeltanz</a
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Verfasser:</span
                                                          >
                                                          <span
                                                            >Bohlmann,
                                                            Sabine</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Mediengruppe:</span
                                                          >
                                                          <span
                                                            >Buch Belletr.
                                                            Kin</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Ausleihstelle:</span
                                                          >
                                                          <span
                                                            >Zentralbibliothek</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Aktuelle
                                                            Frist:</span
                                                          >
                                                          <span
                                                            >02.06.2026</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <div
                                                            class="extendableRegion oclc-patronaccountmodule-extensiondetails"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl04$CopyId"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyId_2"
                                                              value="0899811002"
                                                            />
                                                            <div
                                                              class="extendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Verlängerbar:</span
                                                              >
                                                              <a
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_BtnExtendThis_2"
                                                                class="oclc-patronaccountmodule-extendThis LinkWithImgAndText"
                                                                href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl04$BtnExtendThis", "", true, "", "", false, true))'
                                                                ><i
                                                                  class="ImageExtendable fas fa-arrow-right fa-color-blue fa-larger"
                                                                ></i
                                                                ><span
                                                                  class="ImageExtendable"
                                                                  >Verlängerbar</span
                                                                ></a
                                                              >
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div
                                                              class="unExtendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Nicht
                                                                verlängerbar:</span
                                                              >
                                                              <i
                                                                class="ImageNotExtendable fas fa-times fa-color-red fa-larger"
                                                                title="Nicht verlängerbar"
                                                              ></i>
                                                              <span
                                                                class="ImageNotExtendable"
                                                              ></span>
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div class="load">
                                                              <i
                                                                class="fas fa-spinner fa-spin fa-larger"
                                                                title="lädt"
                                                              ></i>
                                                            </div>
                                                          </div>
                                                        </td>
                                                      </tr>
                                                      <tr>
                                                        <td>
                                                          <div
                                                            class="checkboxRegion"
                                                          >
                                                            <span
                                                              class="normalCheckBox loancheckbox oclc-checkbox"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_3"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl05$chkSelect"
                                                              /><label
                                                                for="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_3"
                                                                ><span
                                                                  class="sr-only"
                                                                  >Alice und die
                                                                  Geister von
                                                                  nebenan</span
                                                                >Ausgewählt</label
                                                              ></span
                                                            >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl05$CopyIdChx"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyIdChx_3"
                                                              value="0914967002"
                                                            />
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <div
                                                            id="coverRegion_dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_3"
                                                            class="coverRegion"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl05$coverView$IsInDetailViewHiddenField"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_3_IsInDetailViewHiddenField_3"
                                                              value="false"
                                                            />

                                                            <a
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_3_Link_3"
                                                              title="Alice und die Geister von nebenan"
                                                              data-no-dynamic-link="true"
                                                              data-covertitle="Alice und die Geister von nebenan"
                                                              data-base-title="Alice und die Geister von nebenan"
                                                              data-shop-tooltip-template="Zum Coveranbieter wechseln: {0}"
                                                              target="_self"
                                                              style="
                                                                cursor: default;
                                                                pointer-events: none;
                                                              "
                                                              ><img
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_3_Image_3"
                                                                class="coverSmall coverGradient"
                                                                data-sources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$978-3-505-15241-2|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783505152412|c|SetSimpleCover|a|https://cover.ekz.de/9783505152412.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3505152412.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3505152412|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-devsources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$978-3-505-15241-2|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783505152412|c|SetSimpleCover|a|https://cover.ekz.de/9783505152412.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3505152412.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3505152412|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-dummy-url="/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2"
                                                                onerror="
                                                                  SetNextCover(
                                                                    $(this),
                                                                  )
                                                                "
                                                                onload="
                                                                  CheckCoverImg(
                                                                    $(this),
                                                                  )
                                                                "
                                                                src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                            /></a>
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <a
                                                            href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?id=0914967"
                                                            id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_lnkTitle_3"
                                                            >Alice und die
                                                            Geister von
                                                            nebenan</a
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Verfasser:</span
                                                          >
                                                          <span
                                                            >Davies,
                                                            Jacqueline</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Mediengruppe:</span
                                                          >
                                                          <span
                                                            >Buch Belletr.
                                                            Kin</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Ausleihstelle:</span
                                                          >
                                                          <span
                                                            >Zentralbibliothek</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Aktuelle
                                                            Frist:</span
                                                          >
                                                          <span
                                                            >02.06.2026</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <div
                                                            class="extendableRegion oclc-patronaccountmodule-extensiondetails"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl05$CopyId"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyId_3"
                                                              value="0914967002"
                                                            />
                                                            <div
                                                              class="extendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Verlängerbar:</span
                                                              >
                                                              <a
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_BtnExtendThis_3"
                                                                class="oclc-patronaccountmodule-extendThis LinkWithImgAndText"
                                                                href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl05$BtnExtendThis", "", true, "", "", false, true))'
                                                                ><i
                                                                  class="ImageExtendable fas fa-arrow-right fa-color-blue fa-larger"
                                                                ></i
                                                                ><span
                                                                  class="ImageExtendable"
                                                                  >Verlängerbar</span
                                                                ></a
                                                              >
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div
                                                              class="unExtendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Nicht
                                                                verlängerbar:</span
                                                              >
                                                              <i
                                                                class="ImageNotExtendable fas fa-times fa-color-red fa-larger"
                                                                title="Nicht verlängerbar"
                                                              ></i>
                                                              <span
                                                                class="ImageNotExtendable"
                                                              ></span>
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div class="load">
                                                              <i
                                                                class="fas fa-spinner fa-spin fa-larger"
                                                                title="lädt"
                                                              ></i>
                                                            </div>
                                                          </div>
                                                        </td>
                                                      </tr>
                                                      <tr>
                                                        <td>
                                                          <div
                                                            class="checkboxRegion"
                                                          >
                                                            <span
                                                              class="normalCheckBox loancheckbox oclc-checkbox"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_4"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl06$chkSelect"
                                                              /><label
                                                                for="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_chkSelect_4"
                                                                ><span
                                                                  class="sr-only"
                                                                  >Tödliches
                                                                  Nachsitzen</span
                                                                >Ausgewählt</label
                                                              ></span
                                                            >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl06$CopyIdChx"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyIdChx_4"
                                                              value="0947482001"
                                                            />
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <div
                                                            id="coverRegion_dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_4"
                                                            class="coverRegion"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl06$coverView$IsInDetailViewHiddenField"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_4_IsInDetailViewHiddenField_4"
                                                              value="false"
                                                            />

                                                            <a
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_4_Link_4"
                                                              title="Tödliches Nachsitzen"
                                                              data-no-dynamic-link="true"
                                                              data-covertitle="Tödliches Nachsitzen"
                                                              data-base-title="Tödliches Nachsitzen"
                                                              data-shop-tooltip-template="Zum Coveranbieter wechseln: {0}"
                                                              target="_self"
                                                              style="
                                                                cursor: default;
                                                                pointer-events: none;
                                                              "
                                                              ><img
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_coverView_4_Image_4"
                                                                class="coverSmall coverGradient"
                                                                data-sources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783570183151|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783570183151|c|SetSimpleCover|a|https://cover.ekz.de/9783570183151.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3570183157.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3570183157|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-devsources="SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a||c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetPresseplusCover|a|0$9783570183151|c|SetCoverByAjax|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/RequestCover.asmx/GetMvbCover|a|0$9783570183151|c|SetSimpleCover|a|https://cover.ekz.de/9783570183151.jpg|a||c|SetSimpleCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/MediaGroup/kibibuch.png?12.0.1.2|a||c|SetSimpleCover|a|https://images-eu.ssl-images-amazon.com/images/P/3570183157.03.MZZZZZZZ.jpg|a|http://www.amazon.de/exec/obidos/ASIN/3570183157|c|SetNoCover|a|/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2|a|"
                                                                data-dummy-url="/DesktopModules/OCLC.OPEN.PL.DNN.BaseLibrary/StyleSheets/Images/Fallbacks/emptyURL.gif?12.0.1.2"
                                                                onerror="
                                                                  SetNextCover(
                                                                    $(this),
                                                                  )
                                                                "
                                                                onload="
                                                                  CheckCoverImg(
                                                                    $(this),
                                                                  )
                                                                "
                                                                src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                            /></a>
                                                          </div>
                                                        </td>
                                                        <td>
                                                          <a
                                                            href="https://katalog.stadtbibliothek-rostock.de/Mediensuche/Einfache-Suche?id=0947482"
                                                            id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_lnkTitle_4"
                                                            >T&#246;dliches
                                                            Nachsitzen</a
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Verfasser:</span
                                                          >
                                                          <span
                                                            >Killick,
                                                            Jennifer</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Mediengruppe:</span
                                                          >
                                                          <span
                                                            >Buch Belletr.
                                                            Kin</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Ausleihstelle:</span
                                                          >
                                                          <span
                                                            >Zentralbibliothek</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <span
                                                            class="oclc-module-view-small oclc-module-label"
                                                            >Aktuelle
                                                            Frist:</span
                                                          >
                                                          <span
                                                            >02.06.2026</span
                                                          >
                                                        </td>
                                                        <td>
                                                          <div
                                                            class="extendableRegion oclc-patronaccountmodule-extensiondetails"
                                                          >
                                                            <input
                                                              type="hidden"
                                                              name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl06$CopyId"
                                                              id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_CopyId_4"
                                                              value="0947482001"
                                                            />
                                                            <div
                                                              class="extendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Verlängerbar:</span
                                                              >
                                                              <a
                                                                id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans_BtnExtendThis_4"
                                                                class="oclc-patronaccountmodule-extendThis LinkWithImgAndText"
                                                                href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$tpnlLoans$ucLoansView$grdViewLoans$ctl06$BtnExtendThis", "", true, "", "", false, true))'
                                                                ><i
                                                                  class="ImageExtendable fas fa-arrow-right fa-color-blue fa-larger"
                                                                ></i
                                                                ><span
                                                                  class="ImageExtendable"
                                                                  >Verlängerbar</span
                                                                ></a
                                                              >
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div
                                                              class="unExtendable"
                                                              style="
                                                                display: none;
                                                              "
                                                            >
                                                              <span
                                                                class="oclc-module-view-small oclc-module-label"
                                                                >Nicht
                                                                verlängerbar:</span
                                                              >
                                                              <i
                                                                class="ImageNotExtendable fas fa-times fa-color-red fa-larger"
                                                                title="Nicht verlängerbar"
                                                              ></i>
                                                              <span
                                                                class="ImageNotExtendable"
                                                              ></span>
                                                              <div>
                                                                <i
                                                                  class="ImageExtensionDetails fas fa-exclamation-triangle fa-color-orange fa-larger"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></i>
                                                                <span
                                                                  class="ImageExtensionDetails"
                                                                  style="
                                                                    display: none;
                                                                  "
                                                                ></span>
                                                              </div>
                                                            </div>
                                                            <div class="load">
                                                              <i
                                                                class="fas fa-spinner fa-spin fa-larger"
                                                                title="lädt"
                                                              ></i>
                                                            </div>
                                                          </div>
                                                        </td>
                                                      </tr>
                                                    </table>
                                                  </div>

                                                  <div class="cultureRegion">
                                                    <input
                                                      type="hidden"
                                                      name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$Culture"
                                                      id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_Culture"
                                                      value="de-DE"
                                                    />
                                                  </div>
                                                  <div
                                                    id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_DivButtonsBottom"
                                                    class="oclc-module-button oclc-StickyButton"
                                                  >
                                                    <input
                                                      type="submit"
                                                      name="dnn$ctr461$MainView$tpnlLoans$ucLoansView$BtnExtendMediumsBottom"
                                                      value="Medien verlängern"
                                                      id="dnn_ctr461_MainView_tpnlLoans_ucLoansView_BtnExtendMediumsBottom"
                                                    />
                                                  </div>
                                                </div>
                                              </div>
                                              <div
                                                id="dnn_ctr461_MainView_tpnlReservations"
                                                class="DnnContainer"
                                              >
                                                <p
                                                  id="TabPatronReservations"
                                                ></p>

                                                <div
                                                  class="oclc-patronaccountmodule-reservations"
                                                >
                                                  <h2
                                                    id="dnn_ctr461_MainView_tpnlReservations_ucReservationsView_LblPreOrderedItems"
                                                    class="oclc-module-header"
                                                  >
                                                    Vorbestellte Medien
                                                  </h2>

                                                  <div>
                                                    <table
                                                      class="oclc-module-table"
                                                      id="dnn_ctr461_MainView_tpnlReservations_ucReservationsView_grdViewReservations"
                                                    >
                                                      <tr
                                                        class="oclc-module-table-nodata"
                                                      >
                                                        <td colspan="6">
                                                          <span
                                                            id="dnn_ctr461_MainView_tpnlReservations_ucReservationsView_grdViewReservations_LblNoDataReturned"
                                                            class="dnnFormMessage dnnFormInfo"
                                                            >Keine Daten
                                                            vorhanden</span
                                                          >
                                                        </td>
                                                      </tr>
                                                    </table>
                                                  </div>

                                                  <h2
                                                    id="dnn_ctr461_MainView_tpnlReservations_ucReservationsView_LblReadyForPickup"
                                                    class="oclc-module-header"
                                                  >
                                                    Bereitgestellte Medien
                                                  </h2>
                                                  <div>
                                                    <table
                                                      class="oclc-module-table"
                                                      id="dnn_ctr461_MainView_tpnlReservations_ucReservationsView_grdViewReadyForPickups"
                                                    >
                                                      <tr
                                                        class="oclc-module-table-nodata"
                                                      >
                                                        <td colspan="7">
                                                          <span
                                                            id="dnn_ctr461_MainView_tpnlReservations_ucReservationsView_grdViewReadyForPickups_LblNoDataReturned"
                                                            class="dnnFormMessage dnnFormInfo"
                                                            >Keine Daten
                                                            vorhanden</span
                                                          >
                                                        </td>
                                                      </tr>
                                                    </table>
                                                  </div>
                                                </div>
                                              </div>
                                              <div
                                                id="dnn_ctr461_MainView_tpnlEkz"
                                                class="DnnContainer"
                                              >
                                                <p id="TabOnleihe"></p>

                                                <h2
                                                  id="dnn_ctr461_MainView_tpnlEkz_EkzHeader"
                                                  class="oclc-module-header"
                                                >
                                                  Onleihe
                                                </h2>

                                                <a
                                                  data-notification-text="Sie sind für die Onleihe gesperrt."
                                                  target="_blank"
                                                  href="#"
                                                  >Zur Onleihe<span
                                                    id="dnn_ctr461_MainView_tpnlEkz_ucekzView_OnleiheLockedDesc"
                                                    class="oclc-screen-reader-only"
                                                  >
                                                    wird in einem neuen TAB
                                                    geöffnet</span
                                                  >
                                                </a>

                                                <h2
                                                  id="dnn_ctr461_MainView_tpnlEkz_ucekzView_LblLoans"
                                                  class="oclc-module-header"
                                                >
                                                  Onleihe Entliehen
                                                </h2>
                                                <div>
                                                  <span
                                                    id="dnn_ctr461_MainView_tpnlEkz_ucekzView_LblNoLoanesReturned"
                                                    class="dnnFormMessage dnnFormInfo"
                                                    >Keine Medien
                                                    vorhanden</span
                                                  >
                                                  <span
                                                    id="dnn_ctr461_MainView_tpnlEkz_ucekzView_LblLoansServiceError"
                                                    class="dnnFormMessage dnnFormInfo"
                                                    >Statusabfrage momentan
                                                    leider nicht möglich. Bitte
                                                    versuchen Sie es später noch
                                                    einmal.</span
                                                  >
                                                  <div>
                                                    <table
                                                      class="oclc-module-table"
                                                      id="dnn_ctr461_MainView_tpnlEkz_ucekzView_ekzloans"
                                                    >
                                                      <tr>
                                                        <th
                                                          scope="col"
                                                          abbr="Cover"
                                                        >
                                                          Cover
                                                        </th>
                                                        <th
                                                          scope="col"
                                                          abbr="Titel"
                                                        >
                                                          Titel
                                                        </th>
                                                        <th
                                                          scope="col"
                                                          abbr="Verfasser"
                                                        >
                                                          Verfasser
                                                        </th>
                                                        <th
                                                          scope="col"
                                                          abbr="Aktuelle Frist"
                                                        >
                                                          Aktuelle Frist
                                                        </th>
                                                      </tr>
                                                    </table>
                                                  </div>
                                                </div>
                                                <h2
                                                  id="dnn_ctr461_MainView_tpnlEkz_ucekzView_LblReservations"
                                                  class="oclc-module-header"
                                                >
                                                  Onleihe Vorbestellungen
                                                </h2>
                                                <div>
                                                  <span
                                                    id="dnn_ctr461_MainView_tpnlEkz_ucekzView_LblNoReservationsReturned"
                                                    class="dnnFormMessage dnnFormInfo"
                                                    >Keine Medien
                                                    vorhanden</span
                                                  >
                                                  <span
                                                    id="dnn_ctr461_MainView_tpnlEkz_ucekzView_LblReservationsServiceError"
                                                    class="dnnFormMessage dnnFormInfo"
                                                    >Statusabfrage momentan
                                                    leider nicht möglich. Bitte
                                                    versuchen Sie es später noch
                                                    einmal.</span
                                                  >
                                                  <div>
                                                    <table
                                                      class="oclc-module-table"
                                                      id="dnn_ctr461_MainView_tpnlEkz_ucekzView_ekzreservations"
                                                    >
                                                      <tr>
                                                        <th
                                                          scope="col"
                                                          abbr="Cover"
                                                        >
                                                          Cover
                                                        </th>
                                                        <th
                                                          scope="col"
                                                          abbr="Titel"
                                                        >
                                                          Titel
                                                        </th>
                                                        <th
                                                          scope="col"
                                                          abbr="Verfasser"
                                                        >
                                                          Verfasser
                                                        </th>
                                                        <th
                                                          scope="col"
                                                          abbr="Vormerkung durchgeführt am"
                                                        >
                                                          Vormerkung
                                                          durchgef&#252;hrt am
                                                        </th>
                                                      </tr>
                                                    </table>
                                                  </div>
                                                </div>
                                              </div>
                                              <div
                                                id="dnn_ctr461_MainView_tpnlOverdrive"
                                                class="DnnContainer"
                                              >
                                                <h2
                                                  id="dnn_ctr461_MainView_tpnlOverdrive_OverdriveHeader"
                                                  class="oclc-module-header"
                                                >
                                                  OverDrive
                                                </h2>
                                              </div>
                                              <div
                                                id="dnn_ctr461_MainView_tpnlRemoteLoans"
                                                class="DnnContainer"
                                              >
                                                <div>
                                                  <h2
                                                    id="dnn_ctr461_MainView_tpnlRemoteLoans_ucRemoteLoansView_LblRemoteLoans"
                                                    class="oclc-module-header"
                                                  >
                                                    Entliehene Fernleihen
                                                  </h2>
                                                  <div></div>
                                                  <h2
                                                    id="dnn_ctr461_MainView_tpnlRemoteLoans_ucRemoteLoansView_LblRemoteReadyForPickups"
                                                    class="oclc-module-header"
                                                  >
                                                    Bereitgestellte Fernleihen
                                                  </h2>
                                                  <div></div>
                                                </div>
                                              </div>
                                              <div
                                                id="dnn_ctr461_MainView_tpnlFees"
                                                class="DnnContainer"
                                              >
                                                <p id="TabFees"></p>

                                                <h2
                                                  id="dnn_ctr461_MainView_tpnlFees_FeesHeader"
                                                  class="oclc-module-header"
                                                >
                                                  Gebühren
                                                </h2>

                                                <div>
                                                  <table
                                                    class="oclc-module-table"
                                                    id="dnn_ctr461_MainView_tpnlFees_ucFeesView_grdViewFees"
                                                  >
                                                    <tr
                                                      class="oclc-module-table-nodata"
                                                    >
                                                      <td colspan="7">
                                                        <span
                                                          id="dnn_ctr461_MainView_tpnlFees_ucFeesView_grdViewFees_LblNoDataReturned"
                                                          class="dnnFormMessage dnnFormInfo"
                                                          >Keine Daten
                                                          vorhanden</span
                                                        >
                                                      </td>
                                                    </tr>
                                                  </table>
                                                </div>

                                                <div
                                                  class="oclc-module-labellayout oclc-patronaccountmodule-fees-summary"
                                                >
                                                  <div>
                                                    <span
                                                      id="dnn_ctr461_MainView_tpnlFees_ucFeesView_lblFeeTotalTitle"
                                                      >Offene Gebühren gesamt:
                                                    </span>
                                                    <span
                                                      id="dnn_ctr461_MainView_tpnlFees_ucFeesView_lblFeeTotalData"
                                                      >0,00 EUR</span
                                                    >
                                                  </div>
                                                  <div></div>
                                                  <div>
                                                    <span
                                                      id="dnn_ctr461_MainView_tpnlFees_ucFeesView_lblDepositTitle"
                                                      >Einzahlungen
                                                      gesamt:</span
                                                    >
                                                    <span
                                                      id="dnn_ctr461_MainView_tpnlFees_ucFeesView_lblDepositData"
                                                      >0,00 EUR</span
                                                    >
                                                  </div>
                                                  <div>
                                                    <span
                                                      id="dnn_ctr461_MainView_tpnlFees_ucFeesView_lblTotalSaldoTitle"
                                                      >Kompletter Saldo:</span
                                                    >
                                                    <span
                                                      id="dnn_ctr461_MainView_tpnlFees_ucFeesView_lblTotalSaldoData"
                                                      >0,00 EUR</span
                                                    >
                                                  </div>
                                                </div>
                                              </div>
                                              <div
                                                id="dnn_ctr461_MainView_tpnlWatchList"
                                                class="DnnContainer"
                                              >
                                                <p id="TabWatchList"></p>

                                                <div
                                                  id="dnn_ctr461_MainView_tpnlWatchList_divWatchlist"
                                                >
                                                  <div class="spacingTop"></div>
                                                  <h2
                                                    id="dnn_ctr461_MainView_tpnlWatchList_ucWatchListView_WatchlistHeader"
                                                    class="oclc-module-header"
                                                  >
                                                    Merkliste
                                                  </h2>

                                                  <div
                                                    id="dnn_ctr461_MainView_tpnlWatchList_ucWatchListView_WatchListEmptyArea"
                                                    class="dnnFormMessage dnnFormInfo"
                                                  >
                                                    <span
                                                      id="dnn_ctr461_MainView_tpnlWatchList_ucWatchListView_LblWatchListEmpty"
                                                      class="oclc-module-label"
                                                      >Die Merkliste ist
                                                      leer.</span
                                                    >

                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlWatchList_ucWatchListView_LblManual"
                                                        >Sie können Ihre
                                                        Merkliste über die
                                                        Trefferliste /
                                                        Detailanzeige
                                                        füllen.</span
                                                      >
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlWatchList_ucWatchListView_LblManualAdd"
                                                        >Zum Hinzufügen nutzen
                                                        Sie dieses Symbol</span
                                                      >
                                                      <i
                                                        class="far fa-bookmark"
                                                      ></i>
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlWatchList_ucWatchListView_LblManualRemove"
                                                        >Zum Entfernen nutzen
                                                        Sie dieses Symbol</span
                                                      >
                                                      <i
                                                        class="fas fa-bookmark"
                                                      ></i>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                              <div
                                                id="dnn_ctr461_MainView_tpnlPatronAccount"
                                                class="DnnContainer"
                                              >
                                                <p id="TabPatronAccount"></p>

                                                <h2
                                                  id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_PatronAccountHeader"
                                                  class="oclc-module-header"
                                                >
                                                  Persönliche Daten
                                                </h2>
                                                <div
                                                  id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_DivPatronAccountView"
                                                >
                                                  <input
                                                    type="hidden"
                                                    name="dnn$ctr461$MainView$tpnlPatronAccount$ucPatronAccountView$PatronRndId"
                                                    id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_PatronRndId"
                                                    value="n4bBkiWdaBj6pPUPd3OMU2fKl0TovO+ABAAi2D7bAHo="
                                                  />

                                                  <a
                                                    id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LbtnChangeUserData"
                                                    class="LinkWithImgAndText"
                                                    href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$tpnlPatronAccount$ucPatronAccountView$LbtnChangeUserData", "", true, "", "", false, true))'
                                                    ><i
                                                      class="far fa-id-card"
                                                    ></i
                                                    ><span
                                                      id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblChangeUserData"
                                                      >Benutzerdaten
                                                      ändern</span
                                                    ></a
                                                  >
                                                  <a
                                                    id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LbtnChangePassword"
                                                    class="LinkWithImgAndText"
                                                    href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("dnn$ctr461$MainView$tpnlPatronAccount$ucPatronAccountView$LbtnChangePassword", "", true, "", "", false, true))'
                                                    ><i class="fas fa-key"></i
                                                    ><span
                                                      id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblChangePassword"
                                                      >Passwort ändern</span
                                                    ></a
                                                  >
                                                  <div
                                                    class="oclc-module-labellayout"
                                                  >
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblNameTitle"
                                                        class="oclc-module-label"
                                                        >Name, Vorname:
                                                      </span>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblNameData"
                                                        >R&#246;ske,
                                                        Leonie</span
                                                      >
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblAddressTitle"
                                                        class="oclc-module-label"
                                                        >Adresse:
                                                      </span>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblAddressData"
                                                        >Friedhofsweg 47</span
                                                      >
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblZipCodeCity"
                                                        class="oclc-module-label"
                                                        >Postleitzahl Ort:</span
                                                      >
                                                      <div>
                                                        <span
                                                          id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblZipCodeData"
                                                          >18057</span
                                                        >
                                                        <span
                                                          id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblCityData"
                                                          >Rostock</span
                                                        >
                                                      </div>
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblPhoneNumberTitle"
                                                        class="oclc-module-label"
                                                        >Telefon:
                                                      </span>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblPhoneNumberData"
                                                      ></span>
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblMobilePhoneNumberTitle"
                                                        class="oclc-module-label"
                                                        >Handy:
                                                      </span>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblMobilePhoneNumberData"
                                                      ></span>
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblEmailAddressTitle"
                                                        class="oclc-module-label"
                                                        >E-Mail:
                                                      </span>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblEmailAddressData"
                                                        >leonie@hausgedacht.de</span
                                                      >
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblMembershipNumberTitle"
                                                        class="oclc-module-label"
                                                        >Ausweisnummer:
                                                      </span>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblMembershipNumberData"
                                                        >11587002</span
                                                      >
                                                    </div>
                                                    <div></div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblMembershipValidUntilTitle"
                                                        class="oclc-module-label"
                                                        >Ausweis gültig bis:
                                                      </span>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblMembershipValidUntilData"
                                                      ></span>
                                                    </div>
                                                    <div>
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronAccount_ucPatronAccountView_LblResubmissionData"
                                                      ></span>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                              <div
                                                id="dnn_ctr461_MainView_tpnlPatronSettings"
                                                class="DnnContainer"
                                              >
                                                <div
                                                  id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_updNewsletter"
                                                ></div>

                                                <div
                                                  id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_updNotificationSettings"
                                                >
                                                  <div
                                                    class="oclc-patronaccountmodule-loans"
                                                  >
                                                    <h2
                                                      id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_PatronNotificationTitle"
                                                      class="oclc-module-header"
                                                    >
                                                      Vorbelegung für
                                                      Benachrichtigungen
                                                    </h2>
                                                    <div
                                                      id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_DivButtonsTop"
                                                      class="oclc-module-button oclc-StickyButton"
                                                    >
                                                      <input
                                                        type="submit"
                                                        name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$BtnPersistNotificationSettings"
                                                        value="Auswahl speichern"
                                                        id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_BtnPersistNotificationSettings"
                                                      />
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_lblPersistNotificationSettingsDescription"
                                                        class="oclc-screen-reader-only"
                                                        >Hiermit können ihre
                                                        Versandwahleinstellungen
                                                        speichern. Haken Sie
                                                        hierzu die
                                                        entsprechenden
                                                        Benachrichtigungsarten
                                                        in der Tabelle
                                                        aus.</span
                                                      >
                                                      <div
                                                        class="oclc-loading-panel-patronnotifications spacingLeft"
                                                      >
                                                        <div
                                                          class="oclc-loader"
                                                        >
                                                          <i
                                                            class="fas fa-spinner fa-spin fa-larger"
                                                          ></i
                                                          ><span
                                                            >speichert</span
                                                          >
                                                        </div>
                                                      </div>
                                                    </div>
                                                    <div>
                                                      <table
                                                        class="oclc-module-table table-padded oclc-StickyButton"
                                                        id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings"
                                                      >
                                                        <tr>
                                                          <th
                                                            class="text-left-important"
                                                            scope="col"
                                                            abbr="&lt;strong>Benachrichtigung&lt;/strong>"
                                                          >
                                                            <strong
                                                              >Benachrichtigung</strong
                                                            >
                                                          </th>
                                                          <td
                                                            class="text-left-important"
                                                            abbr="Brief"
                                                          >
                                                            <span
                                                              class="header-checkbox-letter"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkHeaderLetter"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl01$chkHeaderLetter"
                                                            /></span>

                                                            <br
                                                              class="visible-xs"
                                                            />
                                                            <span
                                                              id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_lblHeaderLetter"
                                                              ><strong
                                                                >Brief</strong
                                                              ></span
                                                            >
                                                          </td>
                                                          <td
                                                            class="text-left-important"
                                                            abbr="E-Mail"
                                                          >
                                                            <span
                                                              class="header-checkbox-email"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkHeaderEmail"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl01$chkHeaderEmail"
                                                            /></span>
                                                            <br
                                                              class="visible-xs"
                                                            />
                                                            <span
                                                              id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_lblHeaderEmail"
                                                              ><strong
                                                                >E-Mail</strong
                                                              ></span
                                                            >
                                                          </td>
                                                        </tr>
                                                        <tr>
                                                          <td class="text-left">
                                                            <span
                                                              id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_lblNotificationName_0"
                                                              style="
                                                                font-weight: normal;
                                                              "
                                                              >Erinnerung</span
                                                            >
                                                          </td>
                                                          <td>
                                                            <span
                                                              class="aspNetDisabled normalCheckBox checkbox-letter"
                                                              title="Die Benachrichtigung über Erinnerung ist deaktiviert"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkLetter_0"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl02$chkLetter"
                                                                checked="checked"
                                                                disabled="disabled"
                                                            /></span>
                                                            <span
                                                              class="visible-xs-inline visible-sm-inline"
                                                              >Brief</span
                                                            >
                                                          </td>
                                                          <td>
                                                            <span
                                                              class="normalCheckBox checkbox-email"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkEmail_0"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl02$chkEmail"
                                                            /></span>
                                                            <span
                                                              class="visible-xs-inline visible-sm-inline"
                                                              >E-Mail</span
                                                            >
                                                          </td>
                                                        </tr>
                                                        <tr>
                                                          <td class="text-left">
                                                            <span
                                                              id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_lblNotificationName_1"
                                                              style="
                                                                font-weight: normal;
                                                              "
                                                              >1. Mahnung</span
                                                            >
                                                          </td>
                                                          <td>
                                                            <span
                                                              class="normalCheckBox checkbox-letter"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkLetter_1"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl03$chkLetter"
                                                                checked="checked"
                                                            /></span>
                                                            <span
                                                              class="visible-xs-inline visible-sm-inline"
                                                              >Brief</span
                                                            >
                                                          </td>
                                                          <td>
                                                            <span
                                                              class="normalCheckBox checkbox-email"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkEmail_1"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl03$chkEmail"
                                                            /></span>
                                                            <span
                                                              class="visible-xs-inline visible-sm-inline"
                                                              >E-Mail</span
                                                            >
                                                          </td>
                                                        </tr>
                                                        <tr>
                                                          <td class="text-left">
                                                            <span
                                                              id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_lblNotificationName_2"
                                                              style="
                                                                font-weight: normal;
                                                              "
                                                              >2. Mahnung</span
                                                            >
                                                          </td>
                                                          <td>
                                                            <span
                                                              class="normalCheckBox checkbox-letter"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkLetter_2"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl04$chkLetter"
                                                                checked="checked"
                                                            /></span>
                                                            <span
                                                              class="visible-xs-inline visible-sm-inline"
                                                              >Brief</span
                                                            >
                                                          </td>
                                                          <td>
                                                            <span
                                                              class="normalCheckBox checkbox-email"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkEmail_2"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl04$chkEmail"
                                                            /></span>
                                                            <span
                                                              class="visible-xs-inline visible-sm-inline"
                                                              >E-Mail</span
                                                            >
                                                          </td>
                                                        </tr>
                                                        <tr>
                                                          <td class="text-left">
                                                            <span
                                                              id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_lblNotificationName_3"
                                                              style="
                                                                font-weight: normal;
                                                              "
                                                              >Vorbestellbenachrichtigung</span
                                                            >
                                                          </td>
                                                          <td>
                                                            <span
                                                              class="normalCheckBox checkbox-letter"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkLetter_3"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl05$chkLetter"
                                                            /></span>
                                                            <span
                                                              class="visible-xs-inline visible-sm-inline"
                                                              >Brief</span
                                                            >
                                                          </td>
                                                          <td>
                                                            <span
                                                              class="normalCheckBox checkbox-email"
                                                              ><input
                                                                id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_grdViewNotificationSettings_chkEmail_3"
                                                                type="checkbox"
                                                                name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$grdViewNotificationSettings$ctl05$chkEmail"
                                                                checked="checked"
                                                            /></span>
                                                            <span
                                                              class="visible-xs-inline visible-sm-inline"
                                                              >E-Mail</span
                                                            >
                                                          </td>
                                                        </tr>
                                                      </table>
                                                    </div>
                                                    <div
                                                      id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_divMessage"
                                                      class="dnnFormMessage dnnFormInfo spacingTopSmall"
                                                    >
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_LblMessage"
                                                        >Durch Ihre Versandwahl
                                                        können zusätzliche
                                                        Kosten entstehen (z.B.
                                                        durch die Auswahl
                                                        "Brief").</span
                                                      >
                                                    </div>
                                                    <div
                                                      id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_DivButtonsBottom"
                                                      class="oclc-module-button oclc-StickyButton"
                                                    >
                                                      <input
                                                        type="submit"
                                                        name="dnn$ctr461$MainView$tpnlPatronSettings$ucPatronSettingsView$BtnPersistNotificationSettingsBottom"
                                                        value="Auswahl speichern"
                                                        id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_BtnPersistNotificationSettingsBottom"
                                                      />
                                                      <span
                                                        id="dnn_ctr461_MainView_tpnlPatronSettings_ucPatronSettingsView_lblPersistNotificationSettingsDescriptionBottom"
                                                        class="oclc-screen-reader-only"
                                                        >Hiermit können ihre
                                                        Versandwahleinstellungen
                                                        speichern. Haken Sie
                                                        hierzu die
                                                        entsprechenden
                                                        Benachrichtigungsarten
                                                        in der Tabelle
                                                        aus.</span
                                                      >
                                                      <div
                                                        class="oclc-loading-panel-patronnotifications spacingLeft"
                                                      >
                                                        <div
                                                          class="oclc-loader"
                                                        >
                                                          <i
                                                            class="fas fa-spinner fa-spin fa-larger"
                                                          ></i
                                                          ><span
                                                            >speichert</span
                                                          >
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div
                id="dnn_Full_Screen_PaneE"
                class="Full_Screen_PaneE DNNEmptyPane"
              ></div>
              <div class="dnn_layoutB">
                <div class="content_mid clearfix">
                  <div class="pane_layout">
                    <div class="row">
                      <div class="col-sm-3"></div>
                      <div class="col-sm-3"></div>
                      <div class="col-sm-3"></div>
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowEleven_Grid3_Pane4"
                          class="RowEleven_Grid3_Pane4 DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowTwelve_Grid3_Pane1"
                          class="RowTwelve_Grid3_Pane1 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-6">
                        <div
                          id="dnn_RowTwelve_Grid6_Pane"
                          class="RowTwelve_Grid6_Pane DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-3">
                        <div
                          id="dnn_RowTwelve_Grid3_Pane2"
                          class="RowTwelve_Grid3_Pane2 DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowThirteen_Grid4_Pane1"
                          class="RowThirteen_Grid4_Pane1 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowThirteen_Grid4_Pane2"
                          class="RowThirteen_Grid4_Pane2 DNNEmptyPane"
                        ></div>
                      </div>
                      <div class="col-sm-4">
                        <div
                          id="dnn_RowThirteen_Grid4_Pane3"
                          class="RowThirteen_Grid4_Pane3 DNNEmptyPane"
                        ></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>

      <input name="ScrollTop" type="hidden" id="ScrollTop" />
      <input
        name="__dnnVariable"
        type="hidden"
        id="__dnnVariable"
        autocomplete="off"
        value="`{`dnn_current_userid`:`27768`,`__scdoff`:`1`,`dnn_ctr461_MainView_tabContainer_json`:`{tabs:[{tcid:\u0027dnn_ctr461_MainView_tpnlLoans\u0027,tid:\u0027tpnlLoans\u0027},{tcid:\u0027dnn_ctr461_MainView_tpnlReservations\u0027,tid:\u0027tpnlReservations\u0027},{tcid:\u0027dnn_ctr461_MainView_tpnlEkz\u0027,tid:\u0027tpnlEkz\u0027},{tcid:\u0027dnn_ctr461_MainView_tpnlOverdrive\u0027,tid:\u0027tpnlOverdrive\u0027},{tcid:\u0027dnn_ctr461_MainView_tpnlRemoteLoans\u0027,tid:\u0027tpnlRemoteLoans\u0027},{tcid:\u0027dnn_ctr461_MainView_tpnlFees\u0027,tid:\u0027tpnlFees\u0027},{tcid:\u0027dnn_ctr461_MainView_tpnlWatchList\u0027,tid:\u0027tpnlWatchList\u0027},{tcid:\u0027dnn_ctr461_MainView_tpnlPatronAccount\u0027,tid:\u0027tpnlPatronAccount\u0027},{tcid:\u0027dnn_ctr461_MainView_tpnlPatronSettings\u0027,tid:\u0027tpnlPatronSettings\u0027}],tablabels:[{},{},{},{},{},{},{},{},{}]}`}"
      />
    </form>
    </body>
    </html>


    """

    {body, []}
  end

  defp get_response(_cookies, "GET") do
    body = """
    <!doctype html>
    <html>
    <head><title>Stadtbibliothek Rostock > Benutzerkonto</title></head>
    <body>
    <form method="post" action="/Benutzerkonto" id="Form" enctype="multipart/form-data">
      <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
      <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
      <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="MTy9aF07b1iRqX9o" />
      <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" />
      <input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
      <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="upXMpT3RSOGE0Pxs" />
      <input type="hidden" name="dnn$cookielaw$width" id="dnn_cookielaw_width" />
      <input type="hidden" name="dnn$cookielaw$height" id="dnn_cookielaw_height" />
      <input type="submit" name="dnn$cookielaw$popupCookieDetailsDialog$btnDefault" value="OK" id="dnn_cookielaw_popupCookieDetailsDialog_btnDefault" />
      <input name="dnn$dnnSEARCH2$txtSearch" type="text" id="dnn_dnnSEARCH2_txtSearch" />
      <input name="dnn$dnnSEARCH$txtSearch" type="text" id="dnn_dnnSEARCH_txtSearch" />
      <input name="dnn$ctr843$Login$Login_COP$txtUsername" type="text" id="dnn_ctr843_Login_Login_COP_txtUsername" />
      <input name="dnn$ctr843$Login$Login_COP$txtPassword" type="password" id="dnn_ctr843_Login_Login_COP_txtPassword" />
      <input type="submit" name="dnn$ctr843$Login$Login_COP$cmdLogin" value="Anmeldung" id="dnn_ctr843_Login_Login_COP_cmdLogin" />
      <input name="dnn$ctr843$Login$Login_COP$txtUsernameForgot" type="text" id="dnn_ctr843_Login_Login_COP_txtUsernameForgot" />
      <input type="submit" name="dnn$ctr843$Login$Login_COP$BtnForgot" value="Passwort zurücksetzen" id="dnn_ctr843_Login_Login_COP_BtnForgot" />
      <input name="dnn$ctr843$Login$Login_COP$txtResetCode" type="text" id="dnn_ctr843_Login_Login_COP_txtResetCode" />
      <input name="dnn$ctr843$Login$Login_COP$txtResetPwd" type="password" id="dnn_ctr843_Login_Login_COP_txtResetPwd" />
      <input name="dnn$ctr843$Login$Login_COP$txtResetPwd2" type="password" id="dnn_ctr843_Login_Login_COP_txtResetPwd2" />
      <input type="submit" name="dnn$ctr843$Login$Login_COP$BtnReset" value="Passwort speichern" id="dnn_ctr843_Login_Login_COP_BtnReset" />
      <input name="ScrollTop" type="hidden" id="ScrollTop" />
      <input name="__dnnVariable" type="hidden" id="__dnnVariable" value="`{`__scdoff`:`1`}" />
    </form>
    </body>
    </html>
    """

    cookies = [
      {"dnn_IsMobile", "False"},
      {"language", "de-DE"},
      {".ASPXANONYMOUS", "ZQ4iH_yx1qzucrMC"},
      {"ASP.NET_SessionId", "sv2wma4533qntr3q"}
    ]

    {body, cookies}
  end

  defp get_response(_cookies, "POST") do
    body = """
    1|#||4|64|pageRedirect||https%3a%2f%2fkatalog.stadtbibliothek-rostock.de%2fBenutzerkonto|
    """

    cookies = [
      {"dnn_IsMobile", "False"},
      {"language", "de-DE"},
      {"COPAUTH", "lL1S8mYu3FcWzhka"},
      {"authentication", "COP"},
      {".DOTNETNUKE", "FF9E3CDC96792F12"},
      {"returnurl", ""}
    ]

    {body, cookies}
  end

  defp put_resp_cookies(conn, cookies) do
    Enum.reduce(cookies, conn, fn {key, value}, acc ->
      put_resp_cookie(acc, key, value)
    end)
  end
end
