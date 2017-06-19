.class Lcom/android/incallui/InCallLowBatteryListener$8;
.super Ljava/lang/Object;
.source "InCallLowBatteryListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 486
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$8;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    iput-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener$8;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on Alert displayLowBattery keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener$8;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener$8;->val$call:Lcom/android/incallui/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/InCallLowBatteryListener;->-wrap0(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V

    .line 494
    const/4 v0, 0x1

    return v0

    .line 496
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
