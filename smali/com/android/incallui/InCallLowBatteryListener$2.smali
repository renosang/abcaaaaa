.class Lcom/android/incallui/InCallLowBatteryListener$2;
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
    .line 408
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$2;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    iput-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener$2;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 411
    const-string/jumbo v0, "displayLowBatteryAlert answer as Voice Call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener$2;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 413
    const/4 v2, 0x0

    .line 412
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 410
    return-void
.end method
