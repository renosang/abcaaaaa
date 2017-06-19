.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sendShareIntent(Landroid/net/Uri;)V
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
    .line 952
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetArchivedVoicemailFilePath(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 955
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    .line 956
    if-nez p1, :cond_0

    .line 957
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setFetchContentTimeout()V

    .line 958
    return-void

    .line 961
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    .line 962
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v2, v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01f6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 963
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    invoke-static {v1, v2, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 964
    .local v0, "voicemailFileUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    .line 965
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v2, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-wrap0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 966
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v3, v3, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 967
    const v4, 0x7f0d021a

    .line 966
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 964
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 954
    return-void
.end method
