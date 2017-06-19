.class Lcom/android/dialer/compat/FilteredNumberCompat$1$1;
.super Ljava/lang/Object;
.source "FilteredNumberCompat.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/compat/FilteredNumberCompat$1;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/compat/FilteredNumberCompat$1;

.field final synthetic val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$displayNumber:Ljava/lang/String;

.field final synthetic val$fragmentManager:Landroid/app/FragmentManager;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$parentViewId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/dialer/compat/FilteredNumberCompat$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/compat/FilteredNumberCompat$1;
    .param p2, "val$number"    # Ljava/lang/String;
    .param p3, "val$countryIso"    # Ljava/lang/String;
    .param p4, "val$displayNumber"    # Ljava/lang/String;
    .param p5, "val$parentViewId"    # Ljava/lang/Integer;
    .param p6, "val$fragmentManager"    # Landroid/app/FragmentManager;
    .param p7, "val$callback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->this$1:Lcom/android/dialer/compat/FilteredNumberCompat$1;

    iput-object p2, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$countryIso:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$displayNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$parentViewId:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$fragmentManager:Landroid/app/FragmentManager;

    iput-object p7, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 309
    if-eqz p1, :cond_0

    .line 310
    const-string/jumbo v0, "FilteredNumberCompat"

    .line 311
    const-string/jumbo v1, "showBlockNumberDialogFlow - number already blocked"

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 314
    :cond_0
    const-string/jumbo v1, "FilteredNumberCompat"

    const-string/jumbo v2, "showBlockNumberDialogFlow - need to block number"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$countryIso:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$displayNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$parentViewId:Ljava/lang/Integer;

    .line 317
    iget-object v5, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$fragmentManager:Landroid/app/FragmentManager;

    iget-object v6, p0, Lcom/android/dialer/compat/FilteredNumberCompat$1$1;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .line 315
    invoke-static/range {v0 .. v6}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 308
    return-void
.end method
