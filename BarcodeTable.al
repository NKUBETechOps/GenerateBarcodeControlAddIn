table 50100 "Barcode Buffer"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = SystemMetadata;
        }

        field(2; "Barcode Image"; Blob)
        {
            Subtype = Bitmap;
            DataClassification = ToBeClassified;
        }

        field(3; "Barcode Text"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Barcode Format"; Enum "BarcodeFormat")
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
