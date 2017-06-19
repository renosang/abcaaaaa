.class Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 269
    if-eqz v2, :cond_1

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->-wrap0(Lcom/android/dialer/dialpad/DialpadFragment;)Z

    move-result v2

    .line 269
    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->-wrap2(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    .line 281
    :cond_1
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$CallStateReceiver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 283
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 284
    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;

    .end local v0    # "activity":Landroid/app/Activity;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;->setConferenceDialButtonVisibility(Z)V

    .line 266
    :cond_2
    return-void
.end method
