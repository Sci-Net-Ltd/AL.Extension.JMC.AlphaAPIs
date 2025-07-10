tableextension 70000 PTESCI020ItemSubCategory extends SCI020ItemSubCategory
{
    fields
    {
        // Add changes to table fields here
        field(50100; PTEParentCategory; Code[20])
        {
            Caption = 'Parent Category';
            DataClassification = CustomerContent;
        }
    }
}