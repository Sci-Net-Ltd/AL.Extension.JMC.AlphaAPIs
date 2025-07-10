page 70005 PTEAPINotes
{
    PageType = API;
    APIVersion = 'v2.0';
    EntityName = 'note';
    EntitySetName = 'notes';
    EntityCaption = 'Note';
    EntitySetCaption = 'Notes';
    SourceTable = "Record Link";
    ODataKeyFields = "Link ID";
    SourceTableView = where("Type" = filter(Note));
    ChangeTrackingAllowed = true;
    APIGroup = 'apis';
    APIPublisher = 'scinet';
    DelayedInsert = true;
    Extensible = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {

                field(linkID; Rec."Link ID")
                {
                    Caption = 'Link ID';
                    Editable = false;
                }
                field(recordID; Rec."Record ID")
                {
                    Caption = 'Record ID';
                }
                field(note; "NoteText")
                {
                    Caption = 'Note Text';
                }
            }
        }
    }

    actions
    {
    }

    var
        NoteText: Text;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        RecordLinkMgt: Codeunit "Record Link Management";
    begin
        Rec.Type := Rec.Type::Note; // Ensure the Type is set to Note
        RecordLinkMgt.WriteNote(Rec, NoteText);
        Rec."User Id" := UserId;
        Rec."Company" := CompanyName;
        Rec."Created" := CurrentDateTime;
        exit(true);
    end;

    trigger OnModifyRecord(): Boolean
    var
        RecordLinkMgt: Codeunit "Record Link Management";
    begin
        Rec.Type := Rec.Type::Note; // Ensure the Type is set to Note
        RecordLinkMgt.WriteNote(Rec, NoteText);
        exit(true);
    end;


    trigger OnAfterGetRecord()
    var
        RecordLinkMgt: Codeunit "Record Link Management";
    begin
        Rec.CalcFields(Note); // Load the Note BLOB field
        NoteText := RecordLinkMgt.ReadNote(Rec)
    end;
    
}