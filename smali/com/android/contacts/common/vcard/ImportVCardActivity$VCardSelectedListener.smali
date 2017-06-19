.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardSelectedListener"
.end annotation


# instance fields
.field private mAllVCardFileList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mSelectedIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p3, "multipleSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1090
    .local p2, "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    .line 1092
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    .line 1093
    if-eqz p3, :cond_0

    .line 1094
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    .line 1090
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1099
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 1100
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 1101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    .local v1, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1104
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1105
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1106
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1109
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v3, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap4(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V

    .line 1098
    .end local v0    # "i":I
    .end local v1    # "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    .end local v2    # "size":I
    :cond_2
    :goto_1
    return-void

    .line 1111
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    iget v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    invoke-static {v4, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap3(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V

    goto :goto_1

    .line 1113
    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_5

    .line 1114
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 1117
    :cond_5
    iput p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    .line 1118
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v3, :cond_2

    .line 1119
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1120
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1122
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, p3, :cond_1

    .line 1130
    :cond_0
    const-string/jumbo v1, "VCardImport"

    const-string/jumbo v2, "Inconsist state in index %d (%s)"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 1131
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 1130
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_0
    return-void

    .line 1133
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
