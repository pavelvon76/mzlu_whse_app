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
    ODataKeyFields = "Location Code", "Bin Code";


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

                field(minQty; rec."Min. Qty.")
                {
                    caption = 'MinQty';
                }

                field(maxQty; rec."Max. Qty.")
                {
                    caption = 'MaxQty';
                }
            }
        }
    }

    [ServiceEnabled()]
    procedure GetBinName(): Text
    var
        Bin: Record Bin;
        BinDescription: Text[250];
    begin
        if bin.Get(rec."Bin Code") then
            BinDescription := bin.Description;
        exit(BinDescription);
    end;


    [ServiceEnabled()]
    procedure GetInfo(var actionContext: WebServiceActionContext)
    var
        Bin: Record Bin;
        BinDescription: Text[250];
    begin
        if bin.Get(rec."Bin Code") then
            BinDescription := bin.Description;

        actionContext.SetObjectType(ObjectType::Page);
        actionContext.SetObjectId(Page::BinContentAPIMZLU);
        actionContext.AddEntityKey(Rec.FieldNo("Location Code"), rec."Location Code");
        actionContext.AddEntityKey(Rec.FieldNo("Bin Code"), rec."Bin Code");

        // Set the result code to inform the caller that an item was created.
        actionContext.SetResultCode(WebServiceActionResultCode::Get);
    end;
}
