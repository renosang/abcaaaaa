.class Lcom/android/dialer/calllog/MissedCallNotifier$1;
.super Ljava/lang/Object;
.source "MissedCallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/MissedCallNotifier;->clearMissedCalls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/MissedCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/MissedCallNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/MissedCallNotifier;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/dialer/calllog/MissedCallNotifier$1;->this$0:Lcom/android/dialer/calllog/MissedCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 194
    iget-object v3, p0, Lcom/android/dialer/calllog/MissedCallNotifier$1;->this$0:Lcom/android/dialer/calllog/MissedCallNotifier;

    invoke-static {v3}, Lcom/android/dialer/calllog/MissedCallNotifier;->-get0(Lcom/android/dialer/calllog/MissedCallNotifier;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dialer/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "new"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string/jumbo v3, "is_read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v2, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string/jumbo v3, " = 1 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/calllog/MissedCallNotifier$1;->this$0:Lcom/android/dialer/calllog/MissedCallNotifier;

    invoke-static {v3}, Lcom/android/dialer/calllog/MissedCallNotifier;->-get0(Lcom/android/dialer/calllog/MissedCallNotifier;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 204
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "where":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/calllog/MissedCallNotifier$1;->this$0:Lcom/android/dialer/calllog/MissedCallNotifier;

    invoke-static {v3}, Lcom/android/dialer/calllog/MissedCallNotifier;->-wrap0(Lcom/android/dialer/calllog/MissedCallNotifier;)Landroid/app/NotificationManager;

    move-result-object v3

    const-string/jumbo v4, "MissedCallNotifier"

    invoke-virtual {v3, v4, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 191
    return-void

    .line 207
    .restart local v1    # "values":Landroid/content/ContentValues;
    .restart local v2    # "where":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "MissedCallNotifier"

    const-string/jumbo v4, "ContactsProvider update command failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
