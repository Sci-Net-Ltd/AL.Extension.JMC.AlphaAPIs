page 70000 PTEAPICustomers
{
    APIVersion = 'v2.0';
    EntityName = 'customer';
    EntitySetName = 'customers';
    EntityCaption = 'Customer';
    EntitySetCaption = 'Customers';
    ChangeTrackingAllowed = true;
    APIGroup = 'apis';
    APIPublisher = 'scinet';
    Caption = 'APICustomer';
    InsertAllowed = true;
    ModifyAllowed = true;
    DelayedInsert = true;
    ODataKeyFields = SystemId;
    Editable = true;
    PageType = API;
    SourceTable = Customer;
    UsageCategory = Lists;
    Extensible = true;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'System ID';
                }
                field(no; Rec."No.")
                {
                    Caption = 'No';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(address; Rec.Address)
                {
                    Caption = 'Address';
                }
                field(address2; Rec."Address 2")
                {
                    Caption = 'Address 2';
                }
                field(city; Rec.City)
                {
                    Caption = 'City';
                }
                field(county; Rec.County)
                {
                    Caption = 'County';
                }
                field(countryCode; Rec."Country/Region Code")
                {
                    Caption = 'Country/Region Code';
                }
                field(postCode; Rec."Post Code")
                {
                    Caption = 'Post Code';
                }
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }
                field(email; Rec."E-Mail")
                {
                    Caption = 'E-Mail';
                }
                field(mobilePhoneNo; Rec."Mobile Phone No.")
                {
                    Caption = 'Mobile Phone No.';
                }
                field(salespersonCode; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code';
                }
                field(genBusPostingGroup; Rec."Gen. Bus. Posting Group")
                {
                    Caption = 'Gen. Bus. Posting Group';
                }
                field(vatBusPostingGroup; Rec."VAT Bus. Posting Group")
                {
                    Caption = 'VAT Bus. Posting Group';

                }
                field(customerPostingGroup; Rec."Customer Posting Group")
                {
                    Caption = 'Customer Posting Group';
                }
                field(customerPriceGroup; Rec."Customer Price Group")
                {
                    Caption = 'Customer Price Group';
                }
                field(customerDiscGroup; Rec."Customer Disc. Group")
                {
                    Caption = 'Customer Disc. Group';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(billtoCustomerNo; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.';
                }
                field(globalDimension1Code; Rec."Global Dimension 1 Code")
                {
                    Caption = 'Global Dimension 1 Code';
                }
                field(globalDimension2Code; Rec."Global Dimension 2 Code")
                {
                    Caption = 'Global Dimension 2 Code';
                }
                field(currencyID; Rec."Currency Id")
                {
                    Caption = 'Currency ID';
                }
                field(CurrencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field(taxLiable; Rec."Tax Liable")
                {
                    Caption = 'Tax Liable';
                }
                field(taxAreaCode; Rec."Tax Area Code")
                {
                    Caption = 'Tax Area Code';
                }
                field(birthDay; BirthDay)
                {
                    Caption = 'Birth Day';
                }
                field(birthMonth; BirthMonth)
                {
                    Caption = 'Birth Month';
                }
                field(anniversaryDay; AnniversaryDay)
                {
                    Caption = 'Anniversary Day';
                }
                field(anniversaryMonth; AnniversaryMonth)
                {
                    Caption = 'Anniversary Month';
                }
                field(CurrentCompany; rec.CurrentCompany)
                {
                    Caption = 'Current Company';
                }
                field(legacyNo; Rec.PTELegacyNo)
                {
                    Caption = 'Legacy No.';
                }
                field(acquisitionRoute; Rec.PTEAcquisitionRoute)
                {
                    Caption = 'Acquisition Route';
                }
                field(contactByPhone; Rec.SCI020ContactByPhone)
                {
                    Caption = 'Contact By Phone';
                }
                field(contactBySMS; Rec.SCI020ContactBySMS)
                {
                    Caption = 'Contact By SMS';
                }
                field(contactByEmail; Rec.SCI020ContactByEmail)
                {
                    Caption = 'Contact By Email';
                }
                field(contactByLetter; Rec.SCI020ContactByLetter)
                {
                    Caption = 'Contact By Letter';
                }
                field(marketingByPhone; Rec.SCI020MarketingByPhone)
                {
                    Caption = 'Marketing By Phone';
                }
                field(marketingByEmail; Rec.SCI020MarketingByEmail)
                {
                    Caption = 'Marketing By Email';
                }
                field(marketingBySMS; Rec.SCI020MarketingBySMS)
                {
                    Caption = 'Marketing By SMS';
                }
                field(marketingByLetter; Rec.SCI020MarketingByLetter)
                {
                    Caption = 'Marketing By Letter';
                }

                field(title; Rec.PTETitle)
                {
                    Caption = 'Title';
                    ApplicationArea = All;
                }
                field(hobbies; Rec.PTEHobbies)
                {
                    Caption = 'Hobbies';
                    ApplicationArea = All;
                }
                field(employSector; Rec.PTEEmploySector)
                {
                    Caption = 'Employ Sector';
                    ApplicationArea = All;
                }
                field(partnerEmploySector; Rec.PTEPartnerEmploySector)
                {
                    Caption = 'Partner Employ Sector';
                    ApplicationArea = All;
                }
                field(ringSize; Rec.PTERingSize)
                {
                    Caption = 'Ring Size';
                    ApplicationArea = All;
                }
                field(partnerRingSize; Rec.PTEPartnerRingSize)
                {
                    Caption = 'Partner Ring Size';
                    ApplicationArea = All;
                }
                field(wristSize; Rec.PTEWristSize)
                {
                    Caption = 'Wrist Size';
                    ApplicationArea = All;
                }
                field(alphaUserID; Rec.PTEAlphaUserID)
                {
                    Caption = 'Alpha User ID';
                }
                field(lastDateModified; Rec."Last Date Modified")
                {
                    Caption = 'Last Date Modified';
                }
                field(recordID; Rec.RecordId)
                {
                    Caption = 'System Modified At';
                }
                part(specialDates; PTEAPISpecialDates)
                {
                    Caption = 'specialDates', Locked = true;
                    EntityName = 'specialDate';
                    EntitySetName = 'specialDates';
                    SubPageLink = "Customer No." = field("No.");
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        ContactRec: Record Contact;
        RecordIDte: RecordId;
    begin
        Clear(ContactRec);
        Clear(BirthDay);
        Clear(BirthMonth);
        Clear(AnniversaryDay);
        Clear(AnniversaryMonth);
        If rec."Primary Contact No." <> '' then begin
            ContactRec.SetRange("No.", Rec."Primary Contact No.");
            If ContactRec.FindFirst() then begin
                BirthDay := format(ContactRec.PTEBirthDay);
                BirthMonth := format(ContactRec.PTEBirthMonth);
                AnniversaryDay := format(ContactRec.PTEAnniversaryDay);
                AnniversaryMonth := format(ContactRec.PTEAnniversaryMonth);
            end;
        End;
    end;

    var
        BirthDay: Code[10];
        BirthMonth: Code[20];
        AnniversaryDay: Code[10];
        AnniversaryMonth: Code[20];
}
