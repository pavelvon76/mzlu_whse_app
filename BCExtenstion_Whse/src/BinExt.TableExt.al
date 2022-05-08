tableextension 50000 "Bin Ext. MZLU" extends Bin
{
    fields
    {
        field(50000; "Minimum Qty. MZLU"; Decimal)
        {
            Caption = 'Minimum Qty.';
            Editable = false;
            FieldClass = Normal;


        }
        field(50001; "Actual Qty. MZLU"; Decimal)
        {
            Caption = 'Actual Qty.';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Bin Content"."Quantity (Base)");

        }

    }
}
