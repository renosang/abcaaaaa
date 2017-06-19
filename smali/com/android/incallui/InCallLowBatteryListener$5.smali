.class Lcom/android/incallui/InCallLowBatteryListener$5;
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


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallLowBatteryListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallLowBatteryListener;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$5;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 447
    const-string/jumbo v1, "displayLowBatteryAlert place Video Call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    :try_start_0
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v1

    .line 450
    const/4 v2, 0x3

    .line 449
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;->resumePendingCall(I)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
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
