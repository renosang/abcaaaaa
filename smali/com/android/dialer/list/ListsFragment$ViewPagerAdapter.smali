.class public Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "ListsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/ListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/dialer/list/ListsFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/list/ListsFragment;Landroid/app/FragmentManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/dialer/list/ListsFragment;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    .line 113
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->mFragments:Ljava/util/List;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->mFragments:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->-get1(Lcom/android/dialer/list/ListsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0, p1}, Lcom/android/dialer/list/ListsFragment;->-wrap0(Lcom/android/dialer/list/ListsFragment;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
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

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    new-instance v1, Lcom/android/dialer/list/SpeedDialFragment;

    invoke-direct {v1}, Lcom/android/dialer/list/SpeedDialFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->-set2(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/SpeedDialFragment;

    .line 129
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->-get3(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/list/SpeedDialFragment;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->-set1(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    .line 132
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->-get2(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    new-instance v1, Lcom/android/dialer/list/AllContactsFragment;

    invoke-direct {v1}, Lcom/android/dialer/list/AllContactsFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->-set0(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/AllContactsFragment;)Lcom/android/dialer/list/AllContactsFragment;

    .line 135
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->-get0(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/list/AllContactsFragment;

    move-result-object v0

    return-object v0

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    new-instance v1, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;

    invoke-direct {v1}, Lcom/android/dialer/calllog/VisualVoicemailCallLogFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->-set3(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    .line 138
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->-get5(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0, p1}, Lcom/android/dialer/list/ListsFragment;->-wrap0(Lcom/android/dialer/list/ListsFragment;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->-get1(Lcom/android/dialer/list/ListsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    .line 173
    :goto_0
    return v0

    .line 175
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->-get4(Lcom/android/dialer/list/ListsFragment;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/app/Fragment;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 150
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/dialer/list/SpeedDialFragment;

    if-eqz v1, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v2, v1}, Lcom/android/dialer/list/ListsFragment;->-set2(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/SpeedDialFragment;

    .line 159
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v0

    .line 152
    :cond_1
    instance-of v1, v0, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/calllog/CallLogFragment;

    invoke-static {v2, v1}, Lcom/android/dialer/list/ListsFragment;->-set1(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    goto :goto_0

    .line 154
    :cond_2
    instance-of v1, v0, Lcom/android/dialer/list/AllContactsFragment;

    if-eqz v1, :cond_3

    .line 155
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/list/AllContactsFragment;

    invoke-static {v2, v1}, Lcom/android/dialer/list/ListsFragment;->-set0(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/AllContactsFragment;)Lcom/android/dialer/list/AllContactsFragment;

    goto :goto_0

    .line 156
    :cond_3
    instance-of v1, v0, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->this$0:Lcom/android/dialer/list/ListsFragment;

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/calllog/CallLogFragment;

    invoke-static {v2, v1}, Lcom/android/dialer/list/ListsFragment;->-set3(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;

    goto :goto_0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method
