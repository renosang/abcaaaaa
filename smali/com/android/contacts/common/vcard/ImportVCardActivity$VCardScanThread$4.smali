.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$4;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->startVCardSelectAndImport(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

.field final synthetic val$allVCardFileList:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Ljava/util/Vector;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    .prologue
    .line 916
    .local p2, "val$allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$4;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$4;->val$allVCardFileList:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$4;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$4;->val$allVCardFileList:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap0(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 918
    return-void
.end method
