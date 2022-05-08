controladdin "ScannerTSX.ControlAddIn.MZLU"
{
    HorizontalShrink = true;
    HorizontalStretch = true;
    MinimumWidth = 250;
    RequestedHeight = 300;
    Scripts = 'BCExtension.Whse\src\js\ScannerTSX.js',
              'BCExtension.Whse\src\js\ScannerTSX.Events.js';
    //StartupScript = 'BCReactExtension\src\js\reactPageStart.js';
    StyleSheets = 'BCExtension.Whse\src\css\ScannerTSX.css';
    VerticalShrink = true;
    VerticalStretch = true;

    // The event declarations specify what callbacks could be raised from JavaScript by using the webclient API:
    // Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CallBack', [42, 'some text', 5.8, 'c'])
    procedure InitControls();
    procedure LoadContent(content: JsonObject)
    event ControlReady();
    event onScanned(Barcode: Text);
    event OnContentChange(content: JsonObject);

}