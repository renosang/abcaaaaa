.class public interface abstract Lcom/android/dialer/voicemail/VoicemailStatusHelper;
.super Ljava/lang/Object;
.source "VoicemailStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    }
.end annotation


# virtual methods
.method public abstract getNumberActivityVoicemailSources(Landroid/database/Cursor;)I
.end method

.method public abstract getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;",
            ">;"
        }
    .end annotation
.end method
