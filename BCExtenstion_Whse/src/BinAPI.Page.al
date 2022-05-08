page 50000 "BinAPIMZLU"
{
    APIGroup = 'mzlu';
    APIPublisher = 'pvon';
    APIVersion = 'v2.0';
    Caption = 'binAPI';
    DelayedInsert = true;
    EntityName = 'bin';
    EntitySetName = 'bins';
    PageType = API;
    SourceTable = Bin;
    ODataKeyFields = "Code";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(binCode; Rec."Code")
                {
                    Caption = 'binCode';
                }
                field("isEmpty"; Rec.Empty)
                {
                    Caption = 'isEmpty';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'systemId';
                }

            }
        }
    }

    actions
    {
    }

    [ServiceEnabled()]
    procedure GetBinDescription(): Text
    var
        BinDescription: Text[250];
    begin
        BinDescription := 'pvon' + rec.Description;
        exit(BinDescription);
    end;



}
