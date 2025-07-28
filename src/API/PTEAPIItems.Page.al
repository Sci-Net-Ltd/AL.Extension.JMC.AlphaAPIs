page 70001 PTEAPIItems
{
    APIVersion = 'v2.0';
    EntityName = 'item';
    EntitySetName = 'items';
    EntityCaption = 'Item';
    EntitySetCaption = 'Items';
    ChangeTrackingAllowed = true;
    APIGroup = 'apis';
    APIPublisher = 'scinet';
    Caption = 'APIItems';
    InsertAllowed = true;
    ModifyAllowed = true;
    DelayedInsert = true;
    ODataKeyFields = SystemId;
    SourceTableView = where("Unit Price" = filter(> 50));
    Editable = false;
    PageType = API;
    SourceTable = Item;
    UsageCategory = Lists;
    Extensible = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the id field';
                    Caption = 'System ID';
                    ApplicationArea = All;
                }
                field(No; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                field(commonItemNo; Rec."Common Item No.")
                {
                    Caption = 'Common Item No.';
                    ApplicationArea = All;
                }
                field(Status; Rec.SCI020Status)
                {
                    Caption = 'Status';
                    ApplicationArea = All;
                }
                field(ItemSetupType; Rec.SCI020ItemSetupType)
                {
                    Caption = 'Item Setup Type';
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field(webProductName; Rec.SCI020WebProductName)
                {
                    Caption = 'Web Product Name';
                    ToolTip = 'Specifies the name of the product on the website.';
                    ApplicationArea = All;
                }
                field(UnitCost; Rec."Unit Cost")
                {
                    ToolTip = 'Specifies the value of the Unit Cost field';
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ToolTip = 'Specifies the value of the Type field';
                    ApplicationArea = All;
                }
                field(LastDirectCost; Rec."Last Direct Cost")
                {
                    ToolTip = 'Specifies the value of the Last Direct Cost field';
                    ApplicationArea = All;
                }
                field(TariffNo; Rec."Tariff No.")
                {
                    ToolTip = 'Specifies the value of the Tariff No. field';
                    ApplicationArea = All;
                }
                field(COO; Rec."Country/Region of Origin Code")
                {
                    ToolTip = 'Specifies the value of the Country/Region of Origin Code field';
                    ApplicationArea = All;
                }
                field(GlobalDimension1Code; Rec."Global Dimension 1 Code")
                {
                    ToolTip = 'Specifies the value of the Global Dimension 1 Code field';
                    ApplicationArea = All;
                }
                field(GlobalDimension2Code; Rec."Global Dimension 2 Code")
                {
                    ToolTip = 'Specifies the value of the Global Dimension 2 Code field';
                    ApplicationArea = All;
                }

                field(GenProdPostingGroup; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field(InventoryPostingGroup; Rec."Inventory Posting Group")
                {
                    ApplicationArea = All;
                }

                field(VendorNo; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                }
                field(Department; Rec."Item Category Code")
                {
                    ToolTip = 'Specifies the value of the Item Category Code field';
                    ApplicationArea = All;
                }
                field(ItemSubCategory; Rec.SCI020ItemSubCategory)
                {
                    ApplicationArea = All;
                }
                field(ProductGroup; Rec.SCI020ProductGroup)
                {
                    ApplicationArea = All;
                }
                field(productSubGroup; Rec.SCI020ProductSubGroup)
                {
                    ApplicationArea = All;
                }
                field(styleCode; Rec.SCI020StyleCode)
                {
                    ApplicationArea = All;
                }
                field(reportingBody; Rec.SCI020ReportingBody)
                {
                    ApplicationArea = All;
                }
                field(reportNo; Rec.SCI020ReportNo)
                {
                    ApplicationArea = All;
                }
                field(collectionName; Rec.SCI020CollectionName)
                {
                    ApplicationArea = All;
                }
                field(Season; Rec.SCI020Season)
                {
                    ApplicationArea = All;
                }
                field(Theme; Rec.SCI020Theme)
                {
                    ApplicationArea = All;
                }
                field(MetalCode; Rec.SCI020MetalCode)
                {
                    ApplicationArea = All;
                }
                field(metalType; Rec.SCI020MetalType)
                {
                    ApplicationArea = All;
                }
                field(metalColour; Rec.SCI020MetalColour)
                {
                    ApplicationArea = All;
                }
                field(metalFin; Rec.SCI020MetalFin)
                {
                    ApplicationArea = All;
                }
                field(Stone; Rec.SCI020Stone)
                {
                    ApplicationArea = All;
                }
                field(Carat; Rec.SCI020Carat)
                {
                    ApplicationArea = All;
                }
                field(Design; Rec.SCI020Design)
                {
                    ApplicationArea = All;
                }
                field(Cut; Rec.SCI020Cut)
                {
                    ApplicationArea = All;
                }

                field(Size; Rec.SCI020Size)
                {
                    ApplicationArea = All;
                }
                field(Material; Rec.SCI020Material)
                {
                    ApplicationArea = All;
                }
                field(UnitPrice; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field(NetWeight; Rec."Net Weight")
                {
                    ApplicationArea = All;
                }
                field(EAN; EAN)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(Barcode; Rec."Inner Barcode")
                {
                    ApplicationArea = All;
                }
                field(CommodityCode; Rec."Tariff No.")
                {
                    ApplicationArea = All;
                }
                field(lastDateModified; Rec."Last Date Modified")
                {
                    Caption = 'Last Date Modified';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        ItemReference: Record "Item Reference";
    begin
        Clear(ItemReference);
        Clear(EAN);
        ItemReference.SetRange("Item No.", Rec."No.");
        ItemReference.setrange("Reference Type", ItemReference."Reference Type"::"Bar Code");
        If ItemReference.findfirst then
            EAN := ItemReference."Reference No.";

    end;

    var
        EAN: Code[20];
}
