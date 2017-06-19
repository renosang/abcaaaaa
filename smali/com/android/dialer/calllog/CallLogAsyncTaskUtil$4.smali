.class final Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;
.super Landroid/os/AsyncTask;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;->val$voicemailUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 354
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 355
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 356
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "is_read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 357
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 358
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;->val$voicemailUri:Landroid/net/Uri;

    const-string/jumbo v4, "is_read = 0"

    .line 357
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;->val$context:Landroid/content/Context;

    const-class v3, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.dialer.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 363
    return-object v5
.end method
