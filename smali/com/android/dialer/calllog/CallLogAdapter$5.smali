.class Lcom/android/dialer/calllog/CallLogAdapter$5;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;


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
    .line 255
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoChanged()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 257
    return-void
.end method
