.class Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;
.super Ljava/lang/Object;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/CancelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/CancelActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/CancelActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/CancelActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/CancelActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/CancelActivity;->finish()V

    .line 63
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/CancelActivity;->finish()V

    .line 59
    return-void
.end method
