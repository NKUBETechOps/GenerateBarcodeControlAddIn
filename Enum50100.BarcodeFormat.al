enum 50100 BarcodeFormat
{
    Extensible = true;

    value(0; CODE39)
    {
        Caption = 'CODE39';
    }
    value(1; CODE128)
    {
        Caption = 'CODE128';
    }
    value(2; CODE128A)
    {
        Caption = 'CODE128A';
    }
    value(3; CODE128B)
    {
        Caption = 'CODE128B';
    }
    value(4; CODE128C)
    {
        Caption = 'CODE128C';
    }
    value(5; ITF)
    {
        Caption = 'ITF';
    }
    value(6; MSI)
    {
        Caption = 'MSI';
    }
    value(7; MSI10)
    {
        Caption = 'MSI10';
    }
    value(8; MSI11)
    {
        Caption = 'MSI11';
    }
    value(9; MSI1010)
    {
        Caption = 'MSI1010';
    }
    value(10; MSI1110)
    {
        Caption = 'MSI1110';
    }
    value(11; pharmacode)
    {
        Caption = 'pharmacode';
    }
    value(12; codabar)
    {
        Caption = 'codabar';
    }
    value(13; GenericBarcode)
    {
        Caption = 'GenericBarcode';
    }
}
