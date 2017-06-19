.class Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;
.super Ljava/lang/Thread;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/contactinfo/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/dialer/contactinfo/ContactInfoCache;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/contactinfo/ContactInfoCache;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;

    .line 54
    const-string/jumbo v0, "ContactInfoCache.QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->mDone:Z

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 66
    :goto_0
    iget-boolean v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->mDone:Z

    if-eqz v3, :cond_0

    return-void

    .line 70
    :cond_0
    const/4 v2, 0x0

    .line 71
    .local v2, "req":Lcom/android/dialer/contactinfo/ContactInfoRequest;
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-static {v3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->-get2(Lcom/android/dialer/contactinfo/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-static {v3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->-get2(Lcom/android/dialer/contactinfo/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-static {v3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->-get2(Lcom/android/dialer/contactinfo/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lcom/android/dialer/contactinfo/ContactInfoRequest;
    check-cast v2, Lcom/android/dialer/contactinfo/ContactInfoRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 77
    if-eqz v2, :cond_2

    .line 79
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;

    iget-object v4, v2, Lcom/android/dialer/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/dialer/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/dialer/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    invoke-static {v3, v4, v5, v6}, Lcom/android/dialer/contactinfo/ContactInfoCache;->-wrap0(Lcom/android/dialer/contactinfo/ContactInfoCache;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v3

    or-int/2addr v1, v3

    .local v1, "needRedraw":Z
    goto :goto_0

    .line 71
    .end local v1    # "needRedraw":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 83
    :cond_2
    if-eqz v1, :cond_3

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "needRedraw":Z
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-static {v3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->-get0(Lcom/android/dialer/contactinfo/ContactInfoCache;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    .end local v1    # "needRedraw":Z
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-static {v3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->-get2(Lcom/android/dialer/contactinfo/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :try_start_2
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-static {v3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->-get2(Lcom/android/dialer/contactinfo/ContactInfoCache;)Ljava/util/LinkedList;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedList;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 92
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->mDone:Z

    .line 57
    return-void
.end method
