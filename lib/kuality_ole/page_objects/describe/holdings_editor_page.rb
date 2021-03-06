#  Copyright 2005-2014 The Kuali Foundation
#
#  Licensed under the Educational Community License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at:
#
#    http://www.opensource.org/licenses/ecl2.php
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

# The OLE Library System Holdings Editor page.
class HoldingsEditorPage < MarcEditorPage

  # -- EDIT MODE (Default) --

  action(:toggle_location)                        {|b| b.iframeportlet.a(:id => "OleLocationInformationSection_toggle").when_present.click}
  action(:toggle_holding_note)                    {|b| b.iframeportlet.a(:id => "OleHoldingNotes_toggle").when_present.click}
  action(:toggle_holdings_notes)                  {|b| b.iframeportlet.a(:id => "OleHoldingNotes_toggle").when_present.click}
  action(:toggle_call_number)                     {|b| b.iframeportlet.a(:id => "OleCallNumberInformation_toggle").when_present.click}
  action(:toggle_ownership_extent)                {|b| b.iframeportlet.a(:id => "OleExtentOfOwnershipSection_toggle").when_present.click}
  action(:toggle_extended_information)            {|b| b.iframeportlet.a(:id => "OleExtendedInformationSection_toggle").when_present.click}

  element(:location)                              {|b| b.iframeportlet.text_field(:id => "OleHoldingLocation_control")}
  element(:prefix)                                {|b| b.iframeportlet.text_field(:id => "OleHoldingCallNumberPrefix_control")}
  element(:call_number)                           {|b| b.iframeportlet.text_field(:id => "OleHoldingCallNumber_control")}
  element(:shelving_order)                        {|b| b.iframeportlet.text_field(:id => "OleHoldingShelvingOrder_control")}
  element(:call_number_type)                      {|b| b.iframeportlet.select_list(:id => "OleHoldingShelvingScheme_control")}
  element(:call_number_browse_button)             {|b| b.iframeportlet.button(:id => "callNumberHoldingsBrowseLink")}
  element(:receipt_status_selector)               {|b| b.iframeportlet.select_list(:id => "OleReceiptStatusField_control")}

  
  # -- READ-ONLY MODE --
  action(:edit)                                   {|b| b.edit_button.when_present.click}
  element(:edit_button)                           {|b| b.iframeportlet.button(:text => /Edit/)}
  value(:created_date)                            {|b| b.iframeportlet.span(:id => 'createdDateHolding_control').text}
  
end
