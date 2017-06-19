.class Lcom/android/incallui/InCallLowBatteryListener$1;
.super Ljava/lang/Object;
.source "InCallLowBatteryListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 399
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$1;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 402
    const-string/jumbo v0, "displayLowBatteryAlert onDismiss"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener$1;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/InCallLowBatteryListener;->-set0(Lcom/android/incallui/InCallLowBatteryListener;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 401
    return-void
.end method
