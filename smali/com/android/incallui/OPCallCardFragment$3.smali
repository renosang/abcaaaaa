.class Lcom/android/incallui/OPCallCardFragment$3;
.super Landroid/os/Handler;
.source "OPCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/OPCallCardFragment;
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
    .line 315
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 318
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallCardPresenter;->updateEndCall()V

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 324
    .local v0, "active":Z
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v6, v0}, Lcom/android/incallui/OPCallCardFragment;->-wrap9(Lcom/android/incallui/OPCallCardFragment;Z)V

    goto :goto_0

    .line 327
    .end local v0    # "active":Z
    :pswitch_2
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_0

    .line 328
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 329
    .local v1, "actives":Z
    const-string/jumbo v7, "CallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isVisible: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v6, v1}, Lcom/android/incallui/OPCallCardFragment;->-wrap9(Lcom/android/incallui/OPCallCardFragment;Z)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v6}, Lcom/android/incallui/OPCallCardFragment;->-get8(Lcom/android/incallui/OPCallCardFragment;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v8, 0x67

    invoke-static {v6, v8, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 334
    .local v5, "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v6}, Lcom/android/incallui/OPCallCardFragment;->-get8(Lcom/android/incallui/OPCallCardFragment;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 339
    .end local v1    # "actives":Z
    .end local v5    # "message":Landroid/os/Message;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 340
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "isMoveUp"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 341
    .local v4, "isMoveUp":Z
    const-string/jumbo v6, "isActive"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 342
    .local v3, "isActive":Z
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v3, v7}, Lcom/android/incallui/OPCallCardFragment;->startPrimaryAnimation(ZZZ)V

    .line 343
    if-eqz v4, :cond_0

    .line 344
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_0

    .line 345
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment$3;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->startDialpadFragmentAnimation()V

    goto/16 :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
