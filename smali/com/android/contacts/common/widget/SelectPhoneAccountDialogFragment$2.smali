.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;
.super Ljava/lang/Object;
.source "SelectPhoneAccountDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "check"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v0, p2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->-set0(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z

    .line 192
    return-void
.end method
