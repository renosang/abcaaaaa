.class public interface abstract Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;
.super Ljava/lang/Object;
.source "VoicemailAsyncTaskUtil.java"


# annotations
.annotation build Lcom/android/contacts/common/testing/NeededForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnArchiveVoicemailListener"
.end annotation


# virtual methods
.method public abstract onArchiveVoicemail(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
