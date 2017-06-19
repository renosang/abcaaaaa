.class final Lcom/android/dialer/calllog/IntentProvider$4;
.super Lcom/android/dialer/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/IntentProvider;->getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$number"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/dialer/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/dialer/calllog/IntentProvider$4;->val$number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
