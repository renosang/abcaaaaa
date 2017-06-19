.class Lcom/android/incallui/OPCallCardFragment$6;
.super Ljava/lang/Object;
.source "OPCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/OPCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/OPCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/OPCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/OPCallCardFragment;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment$6;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/32 v6, 0xf4240

    .line 519
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 520
    .local v0, "time":J
    const-string/jumbo v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v4, v0, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$6;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/OPCallCardFragment;->-get11(Lcom/android/incallui/OPCallCardFragment;)J

    move-result-wide v2

    sub-long v2, v0, v2

    div-long/2addr v2, v6

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 522
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->clearMembers()V

    .line 523
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$6;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->secondaryInfoClicked()V

    .line 524
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$6;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/OPCallCardFragment;->-wrap10(Lcom/android/incallui/OPCallCardFragment;)V

    .line 526
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$6;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2, v0, v1}, Lcom/android/incallui/OPCallCardFragment;->-set4(Lcom/android/incallui/OPCallCardFragment;J)J

    .line 517
    return-void
.end method
