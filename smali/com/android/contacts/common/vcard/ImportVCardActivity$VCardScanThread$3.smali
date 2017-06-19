.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 886
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    iget-object v2, v2, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    iget-object v2, v2, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v3, 0x7f0d00a2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    iget-object v3, v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 890
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    iget-object v3, v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get1(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    move-result-object v3

    .line 888
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 891
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    iget-object v3, v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get1(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    move-result-object v3

    const v4, 0x104000a

    .line 888
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 892
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 885
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method
