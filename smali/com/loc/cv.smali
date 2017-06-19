.class final Lcom/loc/cv;
.super Landroid/os/Handler;
.source "Unknown"


# instance fields
.field private synthetic a:Lcom/loc/cu;


# direct methods
.method constructor <init>(Lcom/loc/cu;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/loc/cv;->a:Lcom/loc/cu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/loc/cv;->a:Lcom/loc/cu;

    iget-object v0, v0, Lcom/loc/cu;->a:Lcom/loc/cb;

    invoke-static {v0}, Lcom/loc/cb;->c(Lcom/loc/cb;)Lcom/loc/cw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cv;->a:Lcom/loc/cu;

    iget-object v0, v0, Lcom/loc/cu;->a:Lcom/loc/cb;

    invoke-static {v0}, Lcom/loc/cb;->c(Lcom/loc/cb;)Lcom/loc/cw;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/loc/cw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
