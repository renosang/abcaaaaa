.class Lcom/android/dialer/list/PhoneFavoriteListView$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteListView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/PhoneFavoriteListView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 89
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->-get3(Lcom/android/dialer/list/PhoneFavoriteListView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->-get5(Lcom/android/dialer/list/PhoneFavoriteListView;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/16 v1, -0x19

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->smoothScrollBy(II)V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->-get4(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->-get3(Lcom/android/dialer/list/PhoneFavoriteListView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->-get0(Lcom/android/dialer/list/PhoneFavoriteListView;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->smoothScrollBy(II)V

    goto :goto_0
.end method
