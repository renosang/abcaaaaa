.class Lcom/android/dialer/calllog/CallLogAdapter$3;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.telephony.action.CONFIGURE_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->-wrap0(Lcom/android/dialer/calllog/CallLogAdapter;)V

    .line 211
    return-void
.end method
