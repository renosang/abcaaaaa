.class public abstract Lcom/android/contacts/common/util/WeakAsyncTask;
.super Landroid/os/AsyncTask;
.source "WeakAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        "WeakTarget:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TWeakTarget;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/android/contacts/common/util/WeakAsyncTask;, "Lcom/android/contacts/common/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "target":Ljava/lang/Object;, "TWeakTarget;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/common/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs abstract doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;[TParams;)TResult;"
        }
    .end annotation
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/contacts/common/util/WeakAsyncTask;, "Lcom/android/contacts/common/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    const/4 v2, 0x0

    .line 43
    iget-object v1, p0, Lcom/android/contacts/common/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "target":Ljava/lang/Object;, "TWeakTarget;"
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/util/WeakAsyncTask;->doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 47
    :cond_0
    return-object v2
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/android/contacts/common/util/WeakAsyncTask;, "Lcom/android/contacts/common/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/android/contacts/common/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "target":Ljava/lang/Object;, "TWeakTarget;"
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;TResult;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/android/contacts/common/util/WeakAsyncTask;, "Lcom/android/contacts/common/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "target":Ljava/lang/Object;, "TWeakTarget;"
    .local p2, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 34
    .local p0, "this":Lcom/android/contacts/common/util/WeakAsyncTask;, "Lcom/android/contacts/common/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    iget-object v1, p0, Lcom/android/contacts/common/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "target":Ljava/lang/Object;, "TWeakTarget;"
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method

.method protected onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/android/contacts/common/util/WeakAsyncTask;, "Lcom/android/contacts/common/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "target":Ljava/lang/Object;, "TWeakTarget;"
    return-void
.end method
