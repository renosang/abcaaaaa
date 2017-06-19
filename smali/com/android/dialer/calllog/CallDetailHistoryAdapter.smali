.class public Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# instance fields
.field private final mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private mDurationItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/dialer/calllog/CallTypeHelper;[Lcom/android/dialer/PhoneCallDetails;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "callTypeHelper"    # Lcom/android/dialer/calllog/CallTypeHelper;
    .param p4, "phoneCallDetails"    # [Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p3, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    .line 61
    iput-object p4, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    .line 57
    return-void
.end method

.method private formatDuration(J)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "elapsedSeconds"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .local v0, "minutes":J
    const-wide/16 v2, 0x0

    .line 160
    .local v2, "seconds":J
    cmp-long v4, p1, v6

    if-ltz v4, :cond_0

    .line 161
    div-long v0, p1, v6

    .line 162
    mul-long v4, v0, v6

    sub-long/2addr p1, v4

    .line 163
    move-wide v2, p1

    .line 164
    iget-object v4, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f0d0279

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 166
    :cond_0
    move-wide v2, p1

    .line 167
    iget-object v4, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0d0278

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private formatDurationAndDataUsage(JLjava/lang/Long;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "elapsedSeconds"    # J
    .param p3, "dataUsage"    # Ljava/lang/Long;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 181
    .local v0, "duration":Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/dialer/util/DialerUtils;->join(Landroid/content/res/Resources;Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 188
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 98
    if-nez p2, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040031

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 102
    .local v19, "result":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    aget-object v14, v3, p1

    .line 104
    .local v14, "details":Lcom/android/dialer/PhoneCallDetails;
    const v3, 0x7f0e00db

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/dialer/calllog/CallTypeIconsView;

    .line 105
    .local v10, "callTypeIconView":Lcom/android/dialer/calllog/CallTypeIconsView;
    const v3, 0x7f0e00dc

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 106
    .local v11, "callTypeTextView":Landroid/widget/TextView;
    const v3, 0x7f0e00dd

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 107
    .local v13, "dateView":Landroid/widget/TextView;
    const v3, 0x7f0e00de

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 109
    .local v15, "durationView":Landroid/widget/TextView;
    iget-object v3, v14, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/4 v4, 0x0

    aget v9, v3, v4

    .line 110
    .local v9, "callType":I
    iget v3, v14, Lcom/android/dialer/PhoneCallDetails;->features:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v17

    .line 112
    :goto_1
    const/16 v3, 0x8

    if-eq v9, v3, :cond_0

    .line 113
    const/16 v3, 0x9

    if-ne v9, v3, :cond_4

    .line 112
    :cond_0
    const/16 v18, 0x1

    .line 115
    .local v18, "isVoLTE":Z
    :goto_2
    const-string/jumbo v3, "CallDetailHistoryAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVideoCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string/jumbo v5, ", isVoLTE = "

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v10}, Lcom/android/dialer/calllog/CallTypeIconsView;->clear()V

    .line 118
    invoke-virtual {v10, v9}, Lcom/android/dialer/calllog/CallTypeIconsView;->add(I)V

    .line 119
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/dialer/calllog/CallTypeIconsView;->setShowVideo(Z)V

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 121
    const v4, 0x7f090026

    .line 120
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 122
    .local v16, "imsCallLogEnabled":Z
    if-nez v16, :cond_1

    if-eqz v18, :cond_1

    .line 123
    packed-switch v9, :pswitch_data_0

    .line 136
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    move/from16 v0, v17

    invoke-virtual {v3, v9, v0}, Lcom/android/dialer/calllog/CallTypeHelper;->getCallTypeText(IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v14, Lcom/android/dialer/PhoneCallDetails;->date:J

    iget-wide v6, v14, Lcom/android/dialer/PhoneCallDetails;->date:J

    .line 139
    const/16 v8, 0x17

    .line 138
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "dateValue":Ljava/lang/CharSequence;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 144
    const v4, 0x7f090025

    .line 143
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 145
    .local v2, "callDurationEnabled":Z
    const/4 v3, 0x4

    if-eq v3, v9, :cond_6

    invoke-static {v9}, Lcom/android/dialer/calllog/CallTypeHelper;->isMissedCallType(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 146
    if-eqz v2, :cond_6

    .line 149
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-wide v4, v14, Lcom/android/dialer/PhoneCallDetails;->duration:J

    iget-object v3, v14, Lcom/android/dialer/PhoneCallDetails;->dataUsage:Ljava/lang/Long;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->formatDurationAndDataUsage(JLjava/lang/Long;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_4
    return-object v19

    .line 100
    .end local v2    # "callDurationEnabled":Z
    .end local v9    # "callType":I
    .end local v10    # "callTypeIconView":Lcom/android/dialer/calllog/CallTypeIconsView;
    .end local v11    # "callTypeTextView":Landroid/widget/TextView;
    .end local v12    # "dateValue":Ljava/lang/CharSequence;
    .end local v13    # "dateView":Landroid/widget/TextView;
    .end local v14    # "details":Lcom/android/dialer/PhoneCallDetails;
    .end local v15    # "durationView":Landroid/widget/TextView;
    .end local v16    # "imsCallLogEnabled":Z
    .end local v18    # "isVoLTE":Z
    .end local v19    # "result":Landroid/view/View;
    :cond_2
    move-object/from16 v19, p2

    .restart local v19    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 110
    .restart local v9    # "callType":I
    .restart local v10    # "callTypeIconView":Lcom/android/dialer/calllog/CallTypeIconsView;
    .restart local v11    # "callTypeTextView":Landroid/widget/TextView;
    .restart local v13    # "dateView":Landroid/widget/TextView;
    .restart local v14    # "details":Lcom/android/dialer/PhoneCallDetails;
    .restart local v15    # "durationView":Landroid/widget/TextView;
    :cond_3
    const/16 v17, 0x0

    .local v17, "isVideoCall":Z
    goto/16 :goto_1

    .line 114
    .end local v17    # "isVideoCall":Z
    :cond_4
    const/16 v3, 0xa

    if-ne v9, v3, :cond_5

    const/16 v18, 0x1

    .restart local v18    # "isVoLTE":Z
    goto/16 :goto_2

    .end local v18    # "isVoLTE":Z
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "isVoLTE":Z
    goto/16 :goto_2

    .line 125
    .restart local v16    # "imsCallLogEnabled":Z
    :pswitch_0
    const/4 v9, 0x1

    .line 126
    goto :goto_3

    .line 128
    :pswitch_1
    const/4 v9, 0x2

    .line 129
    goto :goto_3

    .line 131
    :pswitch_2
    const/4 v9, 0x3

    .line 132
    goto :goto_3

    .line 147
    .restart local v2    # "callDurationEnabled":Z
    .restart local v12    # "dateValue":Ljava/lang/CharSequence;
    :cond_6
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 123
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
