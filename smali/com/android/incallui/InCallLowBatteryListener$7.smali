.class Lcom/android/incallui/InCallLowBatteryListener$7;
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
    .line 473
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$7;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    iput-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener$7;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "displayLowBatteryAlert hanging up the call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener$7;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener$7;->val$call:Lcom/android/incallui/Call;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 478
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener$7;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 479
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener$7;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 475
    return-void
.end method
