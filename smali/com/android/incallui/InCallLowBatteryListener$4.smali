.class Lcom/android/incallui/InCallLowBatteryListener$4;
.super Ljava/lang/Object;
.source "InCallLowBatteryListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallLowBatteryListener;->displayLowBatteryAlert(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallLowBatteryListener;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallLowBatteryListener;
    .param p2, "val$call"    # Lcom/android/incallui/Call;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$4;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    iput-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener$4;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 430
    const-string/jumbo v1, "displayLowBatteryAlert place Voice Call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->getInstance()Lcom/android/incallui/InCallAudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener$4;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/InCallAudioManager;->onModifyCallClicked(Lcom/android/incallui/Call;I)V

    .line 435
    :try_start_0
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v1

    .line 436
    const/4 v2, 0x0

    .line 435
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;->resumePendingCall(I)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumePendingCall exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
