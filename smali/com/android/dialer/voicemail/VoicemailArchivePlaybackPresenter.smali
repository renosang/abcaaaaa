.class public Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;
.super Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.source "VoicemailArchivePlaybackPresenter.java"


# static fields
.field private static sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;-><init>(Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 49
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    return-object v0
.end method


# virtual methods
.method protected checkForContent(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;-><init>(Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method

.method protected requestContent(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "Voicemail archive file does not exist"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected startArchiveVoicemailTask(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "archivedByUser"    # Z

    .prologue
    .line 80
    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->sendShareIntent(Landroid/net/Uri;)V

    .line 77
    :cond_0
    return-void
.end method
