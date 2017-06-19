.class Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "MSimCallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/MSimCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/MSimCallLogFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/calllog/MSimCallLogFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    .line 133
    invoke-static {p1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->-get1(Lcom/android/dialer/calllog/MSimCallLogFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->-set1(Lcom/android/dialer/calllog/MSimCallLogFragment;Z)Z

    .line 136
    return-void
.end method
