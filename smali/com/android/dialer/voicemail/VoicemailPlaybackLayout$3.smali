.class Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get4(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    .line 191
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V

    goto :goto_0
.end method
