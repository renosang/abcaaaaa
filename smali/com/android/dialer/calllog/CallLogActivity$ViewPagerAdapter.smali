.class public Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogActivity;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    .line 90
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v0, p1}, Lcom/android/dialer/calllog/CallLogActivity;->-wrap0(Lcom/android/dialer/calllog/CallLogActivity;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
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

    .line 102
    :pswitch_0
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment;

    .line 103
    const/4 v1, -0x1

    .line 102
    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(IZ)V

    return-object v0

    .line 105
    :pswitch_1
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(IZ)V

    return-object v0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v0, p1}, Lcom/android/dialer/calllog/CallLogActivity;->-wrap0(Lcom/android/dialer/calllog/CallLogActivity;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->-get5(Lcom/android/dialer/calllog/CallLogActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogFragment;

    .line 114
    .local v0, "fragment":Lcom/android/dialer/calllog/CallLogFragment;
    packed-switch p2, :pswitch_data_0

    .line 122
    :goto_0
    return-object v0

    .line 116
    :pswitch_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v1, v0}, Lcom/android/dialer/calllog/CallLogActivity;->-set0(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v1, v0}, Lcom/android/dialer/calllog/CallLogActivity;->-set2(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
