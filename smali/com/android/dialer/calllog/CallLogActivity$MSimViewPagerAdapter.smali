.class public Lcom/android/dialer/calllog/CallLogActivity$MSimViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MSimViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogActivity;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity$MSimViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    .line 138
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 137
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$MSimViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    new-instance v1, Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-direct {v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->-set1(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/MSimCallLogFragment;)Lcom/android/dialer/calllog/MSimCallLogFragment;

    .line 146
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$MSimViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->-get1(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/MSimCallLogFragment;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
