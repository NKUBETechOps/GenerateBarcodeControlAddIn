page 50100 BarcodeTestPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Barcode Buffer";

    layout
    {
        area(content)
        {
            field("Barcode Text"; BarcodeText)
            {
                ApplicationArea = All;
            }
            field("Barcode Format"; Rec."Barcode Format")
            {
                ApplicationArea = All;
            }
            field("Barcode Image"; Rec."Barcode Image")
            {

                ApplicationArea = All;
            }

            usercontrol(BarcodeCtrl; BarcodeGenerator)
            {
                ApplicationArea = All;

                trigger BarcodeReady(BarrcodeBase64: Text)
                var
                    BarcodeBuf: Record "Barcode Buffer";
                    OutStr: OutStream;
                    Base64Convert: Codeunit "Base64 Convert";
                begin
                    //Open below message for Base64 value of Barcode Image
                    //Message('Barcode generation status: %1', BarrcodeBase64);
                    BarcodeBuf.DeleteAll();

                    BarcodeBuf.Init();
                    BarcodeBuf."Entry No." := 1;
                    BarcodeBuf."Barcode Text" := BarcodeText;
                    BarcodeBuf."Barcode Format" := Rec."Barcode Format";
                    BarcodeBuf.Insert();

                    BarcodeBuf."Barcode Image".CreateOutStream(OutStr);
                    Base64Convert.FromBase64(BarrcodeBase64, OutStr);
                    BarcodeBuf.Modify();
                    Rec.FindFirst();
                end;
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Generate)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Rec.TestField("Barcode Text");
                    CurrPage.BarcodeCtrl.GenerateBarcode(BarcodeText, FORMAT(Rec."Barcode Format"));
                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        if not Rec.FindFirst() then begin
            Rec.Init();
            Rec."Entry No." := 1;
            Rec.Insert();
        end;
    end;

    var
        BarcodeText: Text;
}
