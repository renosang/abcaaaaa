.class final Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;
.super Landroid/os/AsyncTask;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->checkForSendToVoicemailContact(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$listener"    # Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;->val$listener:Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 133
    sget-object v2, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ContactsQuery;->PROJECTION:[Ljava/lang/String;

    .line 134
    const-string/jumbo v3, "send_to_voicemail=1"

    move-object v5, v4

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 139
    .local v7, "hasSendToVoicemailContacts":Z
    if-eqz v6, :cond_1

    .line 141
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v7, 0x1

    .line 143
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 141
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    throw v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasSendToVoicemailContact"    # Ljava/lang/Boolean;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;->val$listener:Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;->val$listener:Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;->onComplete(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasSendToVoicemailContact"    # Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasSendToVoicemailContact":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
