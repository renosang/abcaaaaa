.class Lcom/android/dialer/list/AllContactsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AllContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/AllContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/AllContactsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/AllContactsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/AllContactsFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/dialer/list/AllContactsFragment$1;->this$0:Lcom/android/dialer/list/AllContactsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment$1;->this$0:Lcom/android/dialer/list/AllContactsFragment;

    invoke-static {v0}, Lcom/android/dialer/list/AllContactsFragment;->-wrap0(Lcom/android/dialer/list/AllContactsFragment;)V

    .line 67
    return-void
.end method
