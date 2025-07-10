page 70002 PTEAPIItemsCategories
{
    APIVersion = 'v2.0';
    EntityName = 'itemCategory';
    EntitySetName = 'itemCategories';
    EntityCaption = 'Item Category';
    EntitySetCaption = 'Item Categories';
    APIGroup = 'apis';
    APIPublisher = 'scinet';
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "Item Category";
    Extensible = false;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field("code"; Rec.Code)
                {
                    Caption = 'Code';
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        RegisterFieldSet(Rec.FieldNo(Code));
                    end;
                }
                field(displayName; Rec.Description)
                {
                    Caption = 'Description';

                    trigger OnValidate()
                    begin
                        RegisterFieldSet(Rec.FieldNo(Description));
                    end;
                }
                field(lastModifiedDateTime; Rec.SystemModifiedAt)
                {
                    Caption = 'Last Modified Date';
                }
                part(subCategories; PTEAPIItemsSubCategories)
                {
                    Caption = 'subCategories', Locked = true;
                    EntityName = 'itemSubCategory';
                    EntitySetName = 'itemSubCategories';
                    SubPageLink = PTEParentCategory = field(Code);
                }

            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        UpdateParentCategory(Rec.Code);
    end;

    var
        TempFieldSet: Record 2000000041 temporary;
        SearcuText: Text[100];

    local procedure RegisterFieldSet(FieldNo: Integer)
    begin
        if TempFieldSet.Get(Database::"Item Category", FieldNo) then
            exit;

        TempFieldSet.Init();
        TempFieldSet.TableNo := Database::"Item Category";
        TempFieldSet.Validate("No.", FieldNo);
        TempFieldSet.Insert(true);
    end;

    local procedure UpdateParentCategory(ItemCatecode: code[20])
    var
        CategoryMgt: Codeunit SCI020CategoriesManagement;
        ItemSubCategory: Record SCI020ItemSubCategory;
        SearchString: Text;
    begin
        CategoryMgt.GetSearchFilter(ItemCatecode, '', '', '', SearchString);
        if SearchString = '' then
            exit;
        Clear(ItemSubCategory);
        ItemSubCategory.SetFilter(Code, SearchString);
        if ItemSubCategory.FindFirst() then
            repeat
                ItemSubCategory.PTEParentCategory := ItemCatecode;
                ItemSubCategory.Modify();
            until ItemSubCategory.Next() = 0;
    end;
}
