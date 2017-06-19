.class Lcom/android/incallui/InCallLowBatteryListener$6;
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
    .line 461
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$6;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    iput-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener$6;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 464
    const-string/jumbo v0, "displayLowBatteryAlert downgrading to voice call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener$6;->val$call:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->downgradeToVoiceCall(Lcom/android/incallui/Call;)V

    .line 463
    return-void
.end method
