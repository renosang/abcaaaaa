.class Lcom/android/dialer/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

.field private final mPhoneCallDetailsHelper:Lcom/android/dialer/calllog/PhoneCallDetailsHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/PhoneCallDetailsHelper;Landroid/content/res/Resources;Lcom/android/dialer/calllog/calllogcache/CallLogCache;)V
    .locals 0
    .param p1, "phoneCallDetailsHelper"    # Lcom/android/dialer/calllog/PhoneCallDetailsHelper;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "callLogCache"    # Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/calllog/PhoneCallDetailsHelper;

    .line 54
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 55
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    .line 52
    return-void
.end method

.method private getContactBadgeDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d026e

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastCallType([I)I
    .locals 2
    .param p1, "callTypes"    # [I

    .prologue
    const/4 v1, 0x0

    .line 245
    array-length v0, p1

    if-lez v0, :cond_0

    .line 246
    aget v0, p1, v1

    return v0

    .line 248
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method private getNameOrNumber(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/android/dialer/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/android/dialer/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    .local v0, "recipient":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 262
    .end local v0    # "recipient":Ljava/lang/CharSequence;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "recipient":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public getCallDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 167
    iget-object v8, p1, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    invoke-direct {p0, v8}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getLastCallType([I)I

    move-result v2

    .line 170
    .local v2, "lastCallType":I
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 173
    .local v3, "nameOrNumber":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v8, p1}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getCallTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 176
    .local v7, "typeOrLocation":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v8, p1}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getCallDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 178
    .local v6, "timeOfCall":Ljava/lang/CharSequence;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 181
    .local v1, "callDescription":Landroid/text/SpannableStringBuilder;
    iget-object v8, p1, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    array-length v8, v8

    if-le v8, v11, :cond_0

    .line 182
    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    new-array v9, v11, [Ljava/lang/Object;

    .line 183
    iget-object v10, p1, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 182
    const v10, 0x7f0d026f

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 187
    :cond_0
    iget v8, p1, Lcom/android/dialer/PhoneCallDetails;->features:I

    and-int/lit8 v8, v8, 0x1

    if-ne v8, v11, :cond_1

    .line 188
    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0d0118

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 191
    :cond_1
    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    iget-object v9, p1, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v8, v9}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "accountLabel":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 193
    iget-object v9, p1, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    .line 192
    invoke-static {v8, v9, v0}, Lcom/android/dialer/PhoneCallDetails;->createAccountLabelDescription(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 195
    .local v4, "onAccountLabel":Ljava/lang/CharSequence;
    iget-object v8, p1, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    iget-boolean v9, p1, Lcom/android/dialer/PhoneCallDetails;->isRead:Z

    invoke-virtual {p0, v8, v9}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getCallDescriptionStringID([IZ)I

    move-result v5

    .line 198
    .local v5, "stringID":I
    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 197
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 199
    aput-object v3, v9, v12

    .line 200
    if-nez v7, :cond_2

    const-string/jumbo v7, ""

    .end local v7    # "typeOrLocation":Ljava/lang/CharSequence;
    :cond_2
    aput-object v7, v9, v11

    .line 201
    const/4 v10, 0x2

    aput-object v6, v9, v10

    .line 202
    const/4 v10, 0x3

    aput-object v4, v9, v10

    .line 197
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 196
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 204
    return-object v1
.end method

.method public getCallDescriptionStringID([IZ)I
    .locals 3
    .param p1, "callTypes"    # [I
    .param p2, "isRead"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getLastCallType([I)I

    move-result v0

    .line 219
    .local v0, "lastCallType":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 222
    const v1, 0x7f0d02bb

    .line 236
    .local v1, "stringID":I
    :goto_0
    return v1

    .line 223
    .end local v1    # "stringID":I
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 226
    const v1, 0x7f0d02bc

    .restart local v1    # "stringID":I
    goto :goto_0

    .line 227
    .end local v1    # "stringID":I
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 230
    if-eqz p2, :cond_2

    const v1, 0x7f0d02be

    .restart local v1    # "stringID":I
    goto :goto_0

    .line 231
    .end local v1    # "stringID":I
    :cond_2
    const v1, 0x7f0d02bd

    .restart local v1    # "stringID":I
    goto :goto_0

    .line 234
    .end local v1    # "stringID":I
    :cond_3
    const v1, 0x7f0d02bf

    .restart local v1    # "stringID":I
    goto :goto_0
.end method

.method public setActionContentDescriptions(Lcom/android/dialer/calllog/CallLogListItemViewHolder;)V
    .locals 6
    .param p1, "views"    # Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 94
    const-string/jumbo v1, "CallLogListItemHelper"

    const-string/jumbo v2, "setActionContentDescriptions; name or number is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const-string/jumbo v0, ""

    .line 101
    .local v0, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    .line 103
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d02c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 104
    aput-object v0, v3, v4

    .line 102
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    .line 108
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d02cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 109
    aput-object v0, v3, v4

    .line 107
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    .line 113
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d02cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 114
    aput-object v0, v3, v4

    .line 112
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d02ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 118
    aput-object v0, v3, v4

    .line 117
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 99
    .end local v0    # "nameOrNumber":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    .restart local v0    # "nameOrNumber":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setPhoneCallDetails(Lcom/android/dialer/calllog/CallLogListItemViewHolder;Lcom/android/dialer/PhoneCallDetails;Ljava/lang/String;)V
    .locals 2
    .param p1, "views"    # Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/calllog/PhoneCallDetailsHelper;

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->setPhoneCallDetails(Lcom/android/dialer/calllog/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;Ljava/lang/String;)V

    .line 70
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, p2}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getContactBadgeDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getCallDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0, p2}, Lcom/android/dialer/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    .line 81
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v0, p2}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getCallTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callTypeOrLocation:Ljava/lang/CharSequence;

    .line 84
    iget-object v0, p2, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    .line 66
    return-void
.end method
