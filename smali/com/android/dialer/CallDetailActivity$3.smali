.class Lcom/android/dialer/CallDetailActivity$3;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->updateFilteredNumberChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$3;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$3;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v0, p1}, Lcom/android/dialer/CallDetailActivity;->-set0(Lcom/android/dialer/CallDetailActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 442
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$3;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->-wrap2(Lcom/android/dialer/CallDetailActivity;)V

    .line 440
    return-void
.end method
