.class Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;
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
    .line 204
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    .line 211
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onVoicemailDeleted()V

    .line 213
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get6(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/net/Uri;

    move-result-object v1

    .line 214
    .local v1, "deleteUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$1;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;Landroid/net/Uri;)V

    .line 224
    .local v0, "deleteCallback":Ljava/lang/Runnable;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 227
    .local v2, "handler":Landroid/os/Handler;
    const-wide/16 v4, 0xbea

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    const v4, 0x7f0d021b

    .line 230
    const/4 v5, 0x0

    .line 229
    invoke-static {v3, v4, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    .line 231
    const/16 v4, 0xbb8

    .line 229
    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    .line 233
    new-instance v4, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 232
    const v5, 0x7f0d021d

    .line 229
    invoke-virtual {v3, v5, v4}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    .line 241
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get2(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 242
    const v5, 0x7f0a0339

    .line 241
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 229
    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar;->show()V

    .line 206
    return-void
.end method
