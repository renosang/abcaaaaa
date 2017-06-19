.class Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;
.super Landroid/os/AsyncTask;
.source "BlockedNumbersMigrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->migrate(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;)Z
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
.field final synthetic this$0:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

.field final synthetic val$listener:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;
    .param p2, "val$listener"    # Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;->val$listener:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 84
    const-string/jumbo v0, "BlockedNumbersMigrator"

    const-string/jumbo v1, "migrate - start background migration"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->-get0(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->-wrap0(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isSuccessful"    # Ljava/lang/Boolean;

    .prologue
    .line 90
    const-string/jumbo v0, "BlockedNumbersMigrator"

    const-string/jumbo v1, "migrate - marking migration complete"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/compat/FilteredNumberCompat;->setHasMigratedToNewBlocking(Z)V

    .line 92
    const-string/jumbo v0, "BlockedNumbersMigrator"

    const-string/jumbo v1, "migrate - calling listener"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;->val$listener:Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    invoke-interface {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;->onComplete()V

    .line 89
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "isSuccessful"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "isSuccessful":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
