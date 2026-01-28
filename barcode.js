// barcode.js

var container = document.createElement("div");
document.body.appendChild(container);

function GenerateBarcode(textValue,_formattxt) {
    try {
        container.innerHTML = "";

        var canvas = document.createElement("canvas");

        JsBarcode(canvas, textValue, {
            format: _formattxt,
            width: 2,
            height: 80,
            displayValue: false
        });

        // Convert to Base64 PNG
        var base64 = canvas.toDataURL("image/png").split(',')[1];

        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod(
            'BarcodeReady',
            [base64]
        );
    }
    catch (e) {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod(
            'BarcodeReady',
            ['ERROR: ' + e.message]
        );
    }
}
