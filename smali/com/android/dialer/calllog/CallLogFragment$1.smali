.class Lcom/android/dialer/calllog/CallLogFragment$1;
.super Landroid/os/Handler;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->-wrap0(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 103
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->-wrap1(Lcom/android/dialer/calllog/CallLogFragment;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
