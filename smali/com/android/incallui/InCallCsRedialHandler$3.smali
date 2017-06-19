.class Lcom/android/incallui/InCallCsRedialHandler$3;
.super Ljava/lang/Object;
.source "InCallCsRedialHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallCsRedialHandler;->showCsRedialDialogOnDisconnect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallCsRedialHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallCsRedialHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallCsRedialHandler;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler$3;->this$0:Lcom/android/incallui/InCallCsRedialHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 209
    const-string/jumbo v0, "showCsRedialDialogOnDisconnect calling onDialogDismissed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler$3;->this$0:Lcom/android/incallui/InCallCsRedialHandler;

    invoke-static {v0}, Lcom/android/incallui/InCallCsRedialHandler;->-wrap1(Lcom/android/incallui/InCallCsRedialHandler;)V

    .line 208
    return-void
.end method
