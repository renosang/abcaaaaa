.class Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;
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
    .line 261
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get6(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-wrap0(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->disableUiElements()V

    .line 268
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get6(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->archiveContent(Landroid/net/Uri;Z)V

    .line 263
    return-void
.end method
