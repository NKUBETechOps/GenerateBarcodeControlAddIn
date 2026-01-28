controladdin BarcodeGenerator
{
    Scripts =
        'https://cdn.jsdelivr.net/npm/jsbarcode@3.11.6/dist/JsBarcode.all.min.js',
        'barcode.js';

    RequestedHeight = 120;
    RequestedWidth = 350;

    procedure GenerateBarcode(TextValue: Text; FormatTxt: Text);
    event BarcodeReady(Base64Image: Text);
}
