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

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("code"; Rec."Code")
                {
                    Caption = 'Code';
                }
                field(empty; Rec.Empty)
                {
                    Caption = 'Empty';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
