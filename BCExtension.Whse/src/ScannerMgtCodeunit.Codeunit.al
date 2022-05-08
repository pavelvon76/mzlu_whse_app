codeunit 50000 "ScannerMgt.Codeunit.MZLU"
{
    trigger OnRun()
    begin

    end;

    procedure FindScannedCode(inCode: text; var inWarehouseJournalLine: Record "Warehouse Journal Line") outJnsObj: JsonObject
    var
        item: Record Item;
        bin: Record bin;
        ItemReference: Record "Item Reference";
        outData: JsonArray;
    begin

        // kód je přímo číslo zboží
        if item.get(inCode) then begin
            outData.Add(AddOutData('Keep your promises', 'check before you make a promise', item.SystemId));

            // vlož číslo zboží
            inWarehouseJournalLine.Validate("Item No.", item."No.");
            exit;
        end;

        // kód je třeba hledat v Referencích pro čísla zboží
        ItemReference.Reset();
        ItemReference.SetRange("Reference No.", incode);
        if ItemReference.FindFirst() then begin

            // číslo zboží je uvedeno na referenci
            inWarehouseJournalLine.Validate("Item No.", ItemReference."Item No.");
            exit;
        end;

        // kód může být přihrádka
        bin.Reset();
        bin.SetRange(Code, inCode);
        if not bin.IsEmpty() then begin
            inWarehouseJournalLine.Validate("Bin Code", inCode);
            exit;
        end;

        outJnsObj.Add('ScannedInfo', outData);
    end;

    local procedure AddOutData(Number: Text; Description: Text; inRecordGuid: Guid): JsonObject
    var
        Data2Out: JsonObject;
    begin
        Data2Out.Add('title', Number);
        Data2Out.Add('description', Description);
        Data2Out.Add('recordid', inRecordGuid);

        //Slide.Add('image', Image);
        exit(Data2Out);
    end;
}



