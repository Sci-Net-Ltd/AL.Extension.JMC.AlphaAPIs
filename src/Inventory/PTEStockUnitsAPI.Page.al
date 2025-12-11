namespace AL.Extension.JMC.AlphaAPIs.AL.Extension.JMC.AlphaAPIs;

using Microsoft.Inventory.Location;

page 70007 PTEStockUnits
{
    APIGroup = 'apis';
    APIPublisher = 'scinet';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'pteStockUnits';
    DelayedInsert = true;
    EntityName = 'sku';
    EntitySetName = 'skus';
    PageType = API;
    SourceTable = "Stockkeeping Unit";
    Editable = false;
    DataAccessIntent = ReadOnly;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(LocationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(inventory; Rec.Inventory)
                {
                    Caption = 'Inventory';
                }
                field(qtyOnSalesOrder; Rec."Qty. on Sales Order")
                {
                    Caption = 'Qty. on Sales Order';
                }
                field(reservedQtyOnInventory; Rec."Reserved Qty. on Inventory")
                {
                    Caption = 'Reserved Qty. on Inventory';
                }
                field(freeToSell; Freetosell)
                {
                    Caption = 'Free To Sell';
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.CalcFields(Inventory, "Qty. on Sales Order", "Reserved Qty. on Inventory");
        Rec.SetFilter(Inventory, '>0');
    end;

    trigger OnAfterGetCurrRecord()
    begin
        Freetosell := Rec.Inventory - Rec."Qty. on Sales Order";
    end;

    var
        Freetosell: Decimal;
}
