.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V
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
    .line 695
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChecked(Z)V
    .locals 3
    .param p1, "hasContent"    # Z

    .prologue
    .line 698
    if-nez p1, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->requestContent(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-set0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 697
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-set0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 705
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prepareContent()V

    goto :goto_0
.end method
