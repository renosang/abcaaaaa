.class Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallSubjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/dialog/CallSubjectDialog$7;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/dialog/CallSubjectDialog$7;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;->this$1:Lcom/android/contacts/common/dialog/CallSubjectDialog$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 561
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7$2;->this$1:Lcom/android/contacts/common/dialog/CallSubjectDialog$7;

    iget-object v0, v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->-get6(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 559
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 565
    return-void
.end method
