.class Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTypeSelectedListener"
.end annotation


# static fields
.field public static final IMPORT_ALL:I = 0x2

.field public static final IMPORT_MULTIPLE:I = 0x1

.field public static final IMPORT_ONE:I = 0x0

.field public static final IMPORT_TYPE_SIZE:I = 0x3


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

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p2, "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    .line 1021
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1028
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1029
    iget v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    packed-switch v0, :pswitch_data_0

    .line 1037
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1027
    :goto_0
    return-void

    .line 1031
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap4(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V

    goto :goto_0

    .line 1034
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mAllVCardFileList:Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1040
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_0

    .line 1043
    :cond_1
    iput p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    goto :goto_0

    .line 1029
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
