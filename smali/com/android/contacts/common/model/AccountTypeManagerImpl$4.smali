.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;
.super Landroid/database/ContentObserver;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1043
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->-get3(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->-get3(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->-get3(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1047
    const-string/jumbo v0, "AccountTypeManager"

    const-string/jumbo v1, "Sim Account Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-void
.end method
