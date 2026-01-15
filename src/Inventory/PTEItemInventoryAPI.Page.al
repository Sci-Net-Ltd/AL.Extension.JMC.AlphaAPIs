page 70006 PTEItemInventoryAPI
{
    APIGroup = 'apis';
    APIPublisher = 'scinet';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'pteItemInventoryAPI';
    DelayedInsert = true;
    EntityName = 'iteminventory';
    EntitySetName = 'iteminventories';
    PageType = API;
    SourceTable = Item;
    Editable = false;
    DataAccessIntent = ReadOnly;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(StyleCode; Rec.SCI020StyleCode)
                {
                    Caption = 'Style Code';
                }
                field(CommonItemNo; Rec."Common Item No.")
                {
                    Caption = 'Common Item No.';
                }
                /*
                field(itemCat; Rec."Item Category Code")
                {
                    Caption = 'Item Category Code';
                }
                field(itemSubCat; Rec.SCI020ItemSubCategory)
                {
                    Caption = 'Sub-Category';
                }
                field(sci020MetalCode; Rec.SCI020MetalCode)
                {
                    Caption = 'Metal Code';
                }
                field(sci020MetalColour; Rec.SCI020MetalColour)
                {
                    Caption = 'Metal Colour';
                }
                field(sci020Cut; Rec.SCI020Cut)
                {
                    Caption = 'Cut';
                }
                field(sci020Design; Rec.SCI020Design)
                {
                    Caption = 'Design';
                }
                field(sci020Stone; Rec.SCI020Stone)
                {
                    Caption = 'Stone';
                }
                field(sci020Size; Rec.SCI020Size)
                {
                    Caption = 'Size';
                }
                */
                field(Inventory; Rec.Inventory)
                {
                    Caption = 'Inventory';
                }
                /*
                field(LocationFilter; Rec."Location Filter")
                {
                    Caption = 'Location Filter';
                }
                */
                part(skus; ptestockunits)
                {
                    ApplicationArea = all;
                    SubPageLink = "Item No." = field("No.");
                    EntityName = 'sku';
                    EntitySetName = 'skus';
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Clear(Location);
        Location.SetRange(SCI020SaleableLocation, true);
        If Location.FindFirst() then
            repeat
                If SaleableLocationFilter <> '' then
                    SaleableLocationFilter := SaleableLocationFilter + '|' + Location.Code
                else
                    SaleableLocationFilter := Location.Code;
            until Location.Next() = 0;

        Rec.Setfilter("Location Filter", SaleableLocationFilter);
        Rec.CalcFields("Inventory", "Qty. on Sales Order");
        //Rec.SetFilter(Inventory, '>0');
    end;

    trigger OnAfterGetRecord()
    begin
        Rec.CalcFields("Inventory");
    end;

    var
        Location: Record Location;
        SaleableLocationFilter: Code[250];
        FreeStock: Decimal;
}
