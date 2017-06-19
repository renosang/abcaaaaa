.class Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;
.super Landroid/os/AsyncTask;
.source "VoicemailAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->setVoicemailArchiveStatus(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

.field final synthetic val$archivedByUser:Z

.field final synthetic val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;ZLandroid/net/Uri;Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;
    .param p2, "val$archivedByUser"    # Z
    .param p3, "val$voicemailUri"    # Landroid/net/Uri;
    .param p4, "val$listener"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    iput-boolean p2, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->val$archivedByUser:Z

    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->val$voicemailUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 144
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "archived_by_user"

    .line 145
    iget-boolean v4, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->val$archivedByUser:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 144
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 146
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->val$voicemailUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;->onSetVoicemailArchiveStatus(Z)V

    .line 150
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 150
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
