.class Lcom/android/contacts/common/dialog/CallSubjectDialog$5;
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
    .line 181
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-get6(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0, v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-wrap1(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V

    .line 183
    :cond_0
    return-void
.end method
