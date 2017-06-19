.class public Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;
.super Ljava/lang/Object;
.source "VisualVoicemailEnabledChecker.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;
    }
.end annotation


# instance fields
.field private mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCallback:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;

.field private mContext:Landroid/content/Context;

.field private mHasActiveVoicemailProvider:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mCallback:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;

    .line 50
    iget-object v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mPrefs:Landroid/content/SharedPreferences;

    .line 51
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    .line 52
    iget-object v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "has_active_voicemail_provider"

    .line 53
    const/4 v2, 0x0

    .line 52
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    .line 47
    return-void
.end method


# virtual methods
.method public asyncUpdate()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V

    .line 69
    iput-object v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 71
    iget-object v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 68
    return-void
.end method

.method public isVisualVoicemailEnabled()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    return v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "combinedCursor"    # Landroid/database/Cursor;

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 78
    .local v0, "hasActiveVoicemailProvider":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    if-eq v0, v1, :cond_0

    .line 79
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    .line 80
    iget-object v1, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "has_active_voicemail_provider"

    .line 81
    iget-boolean v3, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    .line 80
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v1, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mCallback:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mCallback:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;

    iget-boolean v2, p0, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    invoke-interface {v1, v2}, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;->onVisualVoicemailEnabledStatusChanged(Z)V

    .line 75
    :cond_0
    return-void

    .line 77
    .end local v0    # "hasActiveVoicemailProvider":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hasActiveVoicemailProvider":Z
    goto :goto_0
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    return-void
.end method
