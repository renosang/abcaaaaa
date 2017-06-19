.class public Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;
.super Lcom/android/dialer/calllog/CallLogFragment;
.source "VisualVoicemailCallLogFragment.java"


# instance fields
.field private mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field private final mVoicemailStatusObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(I)V

    .line 36
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    .line 38
    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/dialer/calllog/CallLogFragment;->fetchCalls()V

    .line 85
    invoke-virtual {p0}, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->updateTabUnreadCounts()V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->getInstance(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 46
    invoke-virtual {p0}, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    sget-object v1, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 46
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->setupView(Landroid/view/View;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    .line 54
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    .line 72
    invoke-virtual {p0}, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 73
    invoke-super {p0}, Lcom/android/dialer/calllog/CallLogFragment;->onDestroy()V

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onPause()V

    .line 66
    invoke-super {p0}, Lcom/android/dialer/calllog/CallLogFragment;->onPause()V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/dialer/calllog/CallLogFragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onResume()V

    .line 58
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method
