.class public Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OPInCallAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, "action":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string/jumbo v4, "android.op.intent.action.finish_incall_activity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1459
    const-string/jumbo v4, "error_message"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, "message":Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mDialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v6}, Lcom/android/incallui/InCallActivity;->-get1(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v4}, Lcom/android/incallui/InCallActivity;->-get1(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1462
    iget-object v4, p0, Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v4, v2}, Lcom/android/incallui/InCallActivity;->-wrap3(Lcom/android/incallui/InCallActivity;Ljava/lang/CharSequence;)V

    .line 1455
    .end local v2    # "message":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 1464
    .restart local v2    # "message":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasAnyLiveCall()Z

    move-result v1

    .line 1465
    .local v1, "hasAnyLiveCall":Z
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasAnyLiveCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/InCallActivity$OPInCallAppBroadcastReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v4}, Lcom/android/incallui/InCallActivity;->-get0(Lcom/android/incallui/InCallActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1467
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallPresenter;->sendDelayReallyFinishMessage(I)V

    goto :goto_0

    .line 1470
    .end local v1    # "hasAnyLiveCall":Z
    .end local v2    # "message":Ljava/lang/CharSequence;
    :cond_2
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1471
    const-string/jumbo v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1472
    .local v3, "reason":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
