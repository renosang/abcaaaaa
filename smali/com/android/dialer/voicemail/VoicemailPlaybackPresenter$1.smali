.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setPlaybackView(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChecked(Z)V
    .locals 3
    .param p1, "hasContent"    # Z

    .prologue
    .line 288
    if-eqz p1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prepareContent()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->resetSeekBar()V

    .line 292
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-get0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    goto :goto_0
.end method
