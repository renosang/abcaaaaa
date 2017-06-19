.class Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator$1;
.super Ljava/lang/Object;
.source "BlockedNumbersAutoMigrator.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;->autoMigrate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator$1;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersAutoMigrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHasBlockedNumbers(Z)V
    .locals 2
    .param p1, "hasBlockedNumbers"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo v0, "BlockedNumbersAuto"

    const-string/jumbo v1, "Not auto-migrating: blocked numbers exist."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "BlockedNumbersAuto"

    const-string/jumbo v1, "Auto-migrating: no blocked numbers."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/dialer/compat/FilteredNumberCompat;->setHasMigratedToNewBlocking(Z)V

    .line 71
    return-void
.end method
