.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisplayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter$1;
    }
.end annotation


# instance fields
.field private checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 566
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 722
    new-instance v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter$1;-><init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 567
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 568
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 569
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 566
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 653
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    if-ltz p2, :cond_0

    .line 654
    iget-object v2, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 655
    .local v1, "validChild":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 656
    iget-object v2, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 658
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getChildId(II)J
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 665
    .local v0, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 667
    .local v1, "childId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    return-wide v2

    .line 669
    .end local v1    # "childId":Ljava/lang/Long;
    :cond_1
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 620
    if-nez p4, :cond_0

    .line 621
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 622
    const v8, 0x7f040044

    const/4 v9, 0x0

    .line 621
    invoke-virtual {v7, v8, p5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 625
    :cond_0
    const v7, 0x1020014

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 626
    .local v5, "text1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 627
    .local v6, "text2":Landroid/widget/TextView;
    const v7, 0x1020001

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 629
    .local v1, "checkbox":Landroid/widget/CheckBox;
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v7, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 630
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 631
    .local v2, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v2, :cond_1

    .line 633
    invoke-virtual {v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v4

    .line 634
    .local v4, "groupVisible":Z
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 635
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 637
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 638
    .local v3, "groupTitle":Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    .end local v4    # "groupVisible":Z
    :goto_0
    return-object p4

    .line 642
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 643
    const v7, 0x7f0d0171

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 644
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v3, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 677
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v3, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 678
    .local v1, "anyHidden":Z
    :goto_0
    iget-object v3, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v2, v3

    return v2

    .line 677
    .end local v1    # "anyHidden":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "anyHidden":Z
    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_0

    .line 689
    const/4 v0, 0x0

    return v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 696
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 588
    if-nez p3, :cond_0

    .line 589
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 590
    const v7, 0x7f040043

    .line 589
    invoke-virtual {v5, v7, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 593
    :cond_0
    const v5, 0x1020014

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 594
    .local v3, "text1":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 595
    .local v4, "text2":Landroid/widget/TextView;
    const v5, 0x1020001

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 597
    .local v2, "checkbox":Landroid/widget/CheckBox;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 599
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 600
    iget-object v7, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    .line 599
    invoke-virtual {v5, v7, v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 602
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v5, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v5, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    if-nez v5, :cond_1

    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->isAllChildVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 608
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 612
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 613
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 614
    return-object p3

    :cond_1
    move v5, v6

    .line 603
    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public isAllChildVisible(I)Z
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 710
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChildrenCount(I)I

    move-result v1

    .line 711
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 712
    invoke-virtual {p0, p1, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 713
    .local v0, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 715
    const/4 v3, 0x0

    return v3

    .line 711
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    .end local v0    # "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 706
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0
    .param p1, "accounts"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .line 574
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 572
    return-void
.end method

.method public setChildDescripWithPhones(Z)V
    .locals 0
    .param p1, "withPhones"    # Z

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 581
    return-void
.end method
