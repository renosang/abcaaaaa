.class public Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- message: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    .line 300
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerFragment;->showCustomMessageDialog()V

    .line 292
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
