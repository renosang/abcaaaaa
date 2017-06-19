.class public interface abstract Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVoicemailDeletedListener"
.end annotation


# virtual methods
.method public abstract onVoicemailDeleteUndo()V
.end method

.method public abstract onVoicemailDeleted(Landroid/net/Uri;)V
.end method

.method public abstract onVoicemailDeletedInDatabase()V
.end method
