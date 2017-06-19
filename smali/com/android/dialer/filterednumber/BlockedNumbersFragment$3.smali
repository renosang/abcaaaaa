.class Lcom/android/dialer/filterednumber/BlockedNumbersFragment$3;
.super Ljava/lang/Object;
.source "BlockedNumbersFragment.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

.field final synthetic val$activity:Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockedNumbersFragment;Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/BlockedNumbersFragment;
    .param p2, "val$activity"    # Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$3;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$3;->val$activity:Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$3;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    invoke-virtual {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$3;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    invoke-virtual {v1}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/compat/FilteredNumberCompat;->createManageBlockedNumbersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$3;->val$activity:Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->finish()V

    .line 234
    return-void
.end method
