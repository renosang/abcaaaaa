.class Lcom/android/contacts/common/dialog/CallSubjectDialog$4;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-get1(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "subject":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-get3(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-get4(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/contacts/common/CallUtil;->getCallWithSubjectIntent(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .line 168
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    const-string/jumbo v4, "telecom"

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 166
    invoke-static {v3, v2, v0}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->placeCall(Landroid/app/Activity;Landroid/telecom/TelecomManager;Landroid/content/Intent;)V

    .line 171
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-get5(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-get5(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-wrap0(Lcom/android/contacts/common/dialog/CallSubjectDialog;Ljava/util/List;)V

    .line 173
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-virtual {v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->finish()V

    .line 161
    return-void
.end method
