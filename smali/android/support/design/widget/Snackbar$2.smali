.class Landroid/support/design/widget/Snackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/SnackbarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 436
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$2;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    .line 444
    sget-object v0, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/Snackbar$2;->this$0:Landroid/support/design/widget/Snackbar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 439
    sget-object v0, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/Snackbar$2;->this$0:Landroid/support/design/widget/Snackbar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    return-void
.end method
