.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;
.super Lcom/android/contacts/common/util/WeakAsyncTask;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 905
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 904
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 923
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;->doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 8
    .param p1, "target"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 925
    .local p2, "params":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object v0, p1

    .line 926
    .local v0, "context":Landroid/content/Context;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 927
    .local v5, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 930
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    :try_start_0
    aget-object v1, p2, v6

    .line 931
    .local v1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v6, "com.android.contacts"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    .end local v1    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 934
    :catch_0
    move-exception v2

    .line 935
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v6, "CustomContactListFilterActivity"

    const-string/jumbo v7, "Problem saving display groups"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 932
    .end local v2    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v3

    .line 933
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "CustomContactListFilterActivity"

    const-string/jumbo v7, "Problem saving display groups"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 4
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Void;

    .prologue
    .line 944
    move-object v0, p1

    .line 947
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 955
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 943
    return-void

    .line 948
    :catch_0
    move-exception v1

    .line 949
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomContactListFilterActivity"

    const-string/jumbo v3, "Error dismissing progress dialog"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 943
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 911
    move-object v0, p1

    .line 914
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0d0173

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 913
    invoke-static {p1, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;->mProgress:Landroid/app/ProgressDialog;

    .line 918
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 910
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 910
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$UpdateTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method
