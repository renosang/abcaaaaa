.class Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "currentPositionMs":I
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->-get2(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 104
    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->getMediaPlayerPosition()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v2

    .line 108
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->-get0(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->setClipPosition(II)V

    .line 99
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
