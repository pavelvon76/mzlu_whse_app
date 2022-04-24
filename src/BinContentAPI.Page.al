page 50001 "BinContentAPIMZLU"
{
    APIGroup = 'mzlu';
    APIPublisher = 'pvon';
    APIVersion = 'v2.0';
    Caption = 'binContentAPI';
    DelayedInsert = true;
    EntityName = 'content';
    EntitySetName = 'contents';
    PageType = API;
    SourceTable = "Bin Content";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(binCode; Rec."Bin Code")
                {
                    Caption = 'Bin Code';
                }
                field(binTypeCode; Rec."Bin Type Code")
                {
                    Caption = 'Bin Type Code';
                }
                field(itemNo; Rec."Item No.")
                {
                    Caption = 'Item No.';
                }
                field(variantCode; Rec."Variant Code")
                {
                    Caption = 'Variant Code';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
            }
        }
    }
}
