.class Lcom/android/incallui/StatusBarNotifier$2;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string/jumbo v1, "StatusBarNotifier"

    const-string/jumbo v2, "onReceive: screen on"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {v2}, Lcom/android/incallui/StatusBarNotifier;->-get0(Lcom/android/incallui/StatusBarNotifier;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/incallui/StatusBarNotifier;->-wrap2(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 171
    :cond_0
    return-void
.end method
