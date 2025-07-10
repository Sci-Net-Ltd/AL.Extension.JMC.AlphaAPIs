/// <summary>
/// Page PTEPBISalesHistoryLines (ID 50162).
/// </summary>
page 70006 PTEAPSalesHistoryLines
{
    APIVersion = 'v2.0';
    EntityName = 'saleshistoryline';
    EntitySetName = 'saleshistorylines';
    ChangeTrackingAllowed = true;
    APIGroup = 'apis';
    APIPublisher = 'scinet';
    InsertAllowed = false;
    Editable = false;
    PageType = API;
    SourceTable = SCI020SalesHistory;
    UsageCategory = Lists;
    Extensible = true;
    DataAccessIntent = ReadOnly;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(EntryNo; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                    ApplicationArea = All;
                }
                field(DocumentNo; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                    ApplicationArea = All;
                }
                field(DocumentType; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.';
                    ApplicationArea = All;
                }
                field(SelltoCustomerNo; Rec."Sell-to Customer No.")
                {
                    ToolTip = 'Specifies the value of the Sell-to Customer No. field.';
                    ApplicationArea = All;
                }
                field(ShiptoName; rec."Ship-to Name")
                {
                    ToolTip = 'Specifies the value of the Ship-to Name field.';
                    ApplicationArea = All;
                }
                field(ShiptoCity; rec."Ship-to City")
                {
                    ToolTip = 'Specifies the value of the Ship-to City field.';
                    ApplicationArea = All;
                }
                field(ShiptoPostCode; rec."Ship-to Post Code")
                {
                    ToolTip = 'Specifies the value of the Ship-to Postcode field.';
                    ApplicationArea = All;
                }
                field(ShiptoCountryCode; rec."Ship-to Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the Ship-to Country Code field.';
                    ApplicationArea = All;
                }
                field(LocationCode; Rec."Location Code")
                {
                    ToolTip = 'Specifies the value of the Location Code field.';
                    ApplicationArea = All;
                }
                field(SalespersonCode; Rec."Salesperson Code")
                {
                    ToolTip = 'Specifies the value of the Salesperson Code field.';
                    ApplicationArea = All;
                }
                field(AdditionalSalesperson; Rec.PTEAdditionalSalesperson)
                {
                    ApplicationArea = All;
                }
                field(CommissionSplit; Rec.PTECommissionSplit)
                {
                    ApplicationArea = All;
                }
                field(OrderDate; Rec."Order Date")
                {
                    ToolTip = 'Specifies the value of the Order Date field.';
                    ApplicationArea = All;
                }
                field(PostingDate; rec."Posting Date")
                {
                    ToolTip = 'Specifies the Date the Sales Lines was Invoiced.';
                    ApplicationArea = All;
                }
                field(CreatedDate; rec."Created Date")
                {
                    ApplicationArea = All;
                }
                field(LineNo; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                    ApplicationArea = All;
                }
                field(Type; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.';
                    ApplicationArea = All;
                }
                field(No; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field(CommonItemNo; CommonItemNo)
                {
                    ToolTip = 'Specifies the value of the Common Item No. field.';
                    ApplicationArea = All;
                }
                field(VariantCode; Rec."Variant Code")
                {
                    ToolTip = 'Specifies the value of the Variant Code field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field(UnitCost; Rec."Unit Cost")
                {
                    ToolTip = 'Specifies the value of the Unit Cost field.';
                    ApplicationArea = All;
                }
                field(UnitCostLCY; Rec."Unit Cost(LCY)")
                {
                    ToolTip = 'Specifies the value of the Unit Cost(LCY) field.';
                    ApplicationArea = All;
                }
                field(UnitPrice; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                    ApplicationArea = All;
                }
                field(UnitPriceLCY; Rec."Unit Price(LCY)")
                {
                    ToolTip = 'Specifies the value of the Unit Price(LCY) field.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                    ApplicationArea = All;
                }
                field(LineDiscPercent; Rec."Line Discount %")
                {
                    ToolTip = 'Specifies the value of the Line Discount % field.';
                    ApplicationArea = All;
                }
                field(LineDiscAmount; Rec."Line Discount Amount")
                {
                    ToolTip = 'Specifies the value of the Line Discount Amount field.';
                    ApplicationArea = All;
                }
                field(LineDiscAmountLCY; Rec."Line Discount Amount(LCY)")
                {
                    ToolTip = 'Specifies the value of the Line Discount Amount(LCY) field.';
                    ApplicationArea = All;
                }
                field(CurrencyCode; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the value of the Currency Code field.';
                    ApplicationArea = All;
                }
                field(CostAmount; Rec."Cost Amount")
                {
                    ToolTip = 'Specifies the value of the Cost Amount field.';
                    ApplicationArea = All;
                }
                field(CostAmountLCY; Rec."Cost Amount(LCY)")
                {
                    ToolTip = 'Specifies the value of the Amount(LCY) field.';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                    ApplicationArea = All;
                }
                field(AmountLCY; Rec."Amount(LCY)")
                {
                    ToolTip = 'Specifies the value of the Amount(LCY) field.';
                    ApplicationArea = All;
                }
                field(AmountIncludingVAT; Rec."Amount Including VAT")
                {
                    ToolTip = 'Specifies the value of the Amount Including VAT field.';
                    ApplicationArea = All;
                }
                field(AmountIncludingVATLCY; Rec."Amount Including VAT(LCY)")
                {
                    ToolTip = 'Specifies the value of the Amount Including VAT(LCY) field.';
                    ApplicationArea = All;
                }
                field(VATAmount; Rec."VAT Amount")
                {
                    ToolTip = 'Specifies the value of the VAT Amount field.';
                    ApplicationArea = All;
                }
                field(VATAmountLCY; Rec."VAT Amount(LCY)")
                {
                    ToolTip = 'Specifies the value of the VAT Amount(LCY) field.';
                    ApplicationArea = All;
                }
                field(customerName; Rec."Customer Name")
                {
                    Caption = 'Customer Name';
                    ToolTip = 'Specifies name of customer.';
                    ApplicationArea = All;
                }
                field(shortcutDimension1Code; Rec."Shortcut Dimension 1 Code")
                {
                    Caption = 'Shortcut Dimension 1 Code';
                    ToolTip = 'Specifies dimension 1 code.';
                    ApplicationArea = All;
                }
                field(shortcutDimension2Code; Rec."Shortcut Dimension 2 Code")
                {
                    Caption = 'Shortcut Dimension 2 Code';
                    ToolTip = 'Specifies dimension 2 code.';
                    ApplicationArea = All;
                }
                field(lastDateModified; DT2Date(Rec.SystemModifiedAt))
                {
                    Caption = 'Last Modified Date';
                    ApplicationArea = All;
                    ToolTip = ' Last date entry modified';
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        ItemRec: Record Item;
    begin
        Clear(CommonItemNo);
        If not ItemRec.Get(Rec."No.") then
            exit;

        CommonItemNo := ItemRec."Common Item No.";
    end;

    var
        CommonItemNo: Code[20];
}