.class Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;
.super Ljava/lang/Object;
.source "SelectAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/SelectAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/SelectAccountActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/SelectAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/SelectAccountActivity;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/SelectAccountActivity;Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/SelectAccountActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/SelectAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->finish()V

    .line 44
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->finish()V

    .line 41
    return-void
.end method