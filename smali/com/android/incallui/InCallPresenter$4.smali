.class Lcom/android/incallui/InCallPresenter$4;
.super Landroid/os/Handler;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2336
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2335
    :cond_0
    :goto_0
    return-void

    .line 2338
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get5(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    .line 2339
    const-string/jumbo v1, "attemptFinishActivity"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2341
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2342
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->finish(Z)V

    goto :goto_0

    .line 2347
    :pswitch_1
    const-string/jumbo v1, "reallytFinishActivity"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2348
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2349
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->finish()V

    goto :goto_0

    .line 2353
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelAccountSelection mInCallActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2354
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2355
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    goto :goto_0

    .line 2359
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnectCall mInCallActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2360
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2361
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2362
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2363
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2336
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
