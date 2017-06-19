.class Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->updateArchiveButton(Landroid/net/Uri;)V
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
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->val$voicemailUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 606
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get2(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;->CONTENT_URI:Landroid/net/Uri;

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "server_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get6(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    const-string/jumbo v4, " AND "

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    const-string/jumbo v4, "archived_by_user"

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    const-string/jumbo v4, "= 1"

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 606
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 609
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    .line 610
    .local v6, "archived":Z
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 611
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 609
    .end local v6    # "archived":Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "archived":Z
    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 605
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "archived"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->val$voicemailUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get6(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    return-void

    .line 620
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->hideArchiveButton()V

    .line 615
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/widget/Space;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Space;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get0(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get0(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 626
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get0(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "archived"    # Ljava/lang/Object;

    .prologue
    .line 615
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "archived":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
