.class Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 175
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 171
    return-void
.end method