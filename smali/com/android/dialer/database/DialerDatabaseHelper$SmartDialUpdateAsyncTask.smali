.class Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartDialUpdateAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/database/DialerDatabaseHelper;


# direct methods
.method private constructor <init>(Lcom/android/dialer/database/DialerDatabaseHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/database/DialerDatabaseHelper;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;->this$0:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/database/DialerDatabaseHelper;Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/database/DialerDatabaseHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;-><init>(Lcom/android/dialer/database/DialerDatabaseHelper;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;->this$0:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/dialer/database/DialerDatabaseHelper;->updateSmartDialDatabase()V

    .line 658
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 666
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 662
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 674
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 670
    return-void
.end method
