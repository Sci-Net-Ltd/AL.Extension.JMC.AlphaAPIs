page 70004 PTEAPISpecialDates
{
    APIVersion = 'v2.0';
    EntityName = 'specialDate';
    EntitySetName = 'specialDates';
    EntityCaption = 'Special Date';
    EntitySetCaption = 'Special Dates';
    ChangeTrackingAllowed = true;
    APIGroup = 'apis';
    APIPublisher = 'scinet';
    InsertAllowed = true;
    ModifyAllowed = true;
    DelayedInsert = true;
    ODataKeyFields = SystemId, "Customer No.", "Date Type";
    Editable = false;
    PageType = API;
    SourceTable = PTESpecialDates;
    Extensible = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(systemID; Rec.SystemId)
                {
                    Caption = 'System ID';
                }
                field(customerNo; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                }
                field(dateType; Rec."Date Type")
                {
                    Caption = 'Date Type';
                }
                field(day; Rec.PTEDay)
                {
                    Caption = 'Day';
                }
                field(month; Rec.PTEMonth)
                {
                    Caption = 'Month';
                }
                field(year; Rec.PTEYear)
                {
                    Caption = 'Year';
                }
                field(owner; Rec.Owner)
                {
                    Caption = 'Owner';
                }
            }
        }
    }
}