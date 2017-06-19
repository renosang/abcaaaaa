.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$1;
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
    .line 853
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$1;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$1;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$1;->this$1:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->-get0(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 855
    :cond_0
    return-void
.end method
