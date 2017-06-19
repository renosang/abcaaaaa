.class Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/WiredHeadsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiredHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/WiredHeadsetManager;


# direct methods
.method private constructor <init>(Lcom/android/dialer/voicemail/WiredHeadsetManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/WiredHeadsetManager;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/voicemail/WiredHeadsetManager;Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/WiredHeadsetManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/dialer/voicemail/WiredHeadsetManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 39
    .local v0, "isPluggedIn":Z
    :goto_0
    invoke-static {}, Lcom/android/dialer/voicemail/WiredHeadsetManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_HEADSET_PLUG event, plugged in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-static {v1, v0}, Lcom/android/dialer/voicemail/WiredHeadsetManager;->-wrap0(Lcom/android/dialer/voicemail/WiredHeadsetManager;Z)V

    .line 36
    .end local v0    # "isPluggedIn":Z
    :cond_0
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isPluggedIn":Z
    goto :goto_0
.end method
