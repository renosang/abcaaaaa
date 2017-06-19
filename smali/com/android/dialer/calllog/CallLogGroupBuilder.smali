.class public Lcom/android/dialer/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# static fields
.field private static final TIME:Landroid/text/format/Time;


# instance fields
.field private final mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->TIME:Landroid/text/format/Time;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 0
    .param p1, "groupCreator"    # Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    .line 90
    return-void
.end method

.method private areBothBlocked(II)Z
    .locals 2
    .param p1, "callType"    # I
    .param p2, "groupCallType"    # I

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x0

    .line 297
    if-ne p1, v1, :cond_0

    .line 298
    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 297
    :cond_0
    return v0
.end method

.method private areBothNotBlocked(II)Z
    .locals 2
    .param p1, "callType"    # I
    .param p2, "groupCallType"    # I

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x0

    .line 292
    if-eq p1, v1, :cond_0

    .line 293
    if-eq p2, v1, :cond_0

    const/4 v0, 0x1

    .line 292
    :cond_0
    return v0
.end method

.method private areBothNotVoicemail(II)Z
    .locals 2
    .param p1, "callType"    # I
    .param p2, "groupCallType"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 287
    if-eq p1, v1, :cond_0

    .line 288
    if-eq p2, v1, :cond_0

    const/4 v0, 0x1

    .line 287
    :cond_0
    return v0
.end method

.method private getDayGroup(JJ)I
    .locals 5
    .param p1, "date"    # J
    .param p3, "now"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    sget-object v1, Lcom/android/dialer/calllog/CallLogGroupBuilder;->TIME:Landroid/text/format/Time;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/contacts/common/util/DateUtils;->getDayDifference(Landroid/text/format/Time;JJ)I

    move-result v0

    .line 277
    .local v0, "days":I
    if-nez v0, :cond_0

    .line 278
    return v2

    .line 279
    :cond_0
    if-ne v0, v3, :cond_1

    .line 280
    return v3

    .line 282
    :cond_1
    const/4 v1, 0x2

    return v1
.end method

.method private isSameAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "id1"    # Ljava/lang/String;
    .param p4, "id2"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 35
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 106
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 107
    .local v7, "count":I
    if-nez v7, :cond_0

    .line 108
    return-void

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->clearDayGroups()V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 116
    .local v10, "currentTime":J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    const/16 v33, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 120
    .local v14, "firstDate":J
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 121
    .local v16, "firstRowId":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v10, v11}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getDayGroup(JJ)I

    move-result v21

    .line 122
    .local v21, "groupDayGroup":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v16

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->setDayGroup(JI)V

    .line 125
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 126
    .local v22, "groupNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 127
    sget v33, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 128
    .local v23, "groupPostDialDigits":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v33

    if-eqz v33, :cond_3

    .line 129
    sget v33, Lcom/android/dialer/calllog/CallLogQuery;->VIA_NUMBER:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 130
    .local v25, "groupViaNumbers":Ljava/lang/String;
    :goto_1
    const/16 v33, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 131
    .local v20, "groupCallType":I
    const/16 v33, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 132
    .local v18, "groupAccountComponentName":Ljava/lang/String;
    const/16 v33, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 133
    .local v19, "groupAccountId":Ljava/lang/String;
    const/16 v24, 0x1

    .line 142
    .local v24, "groupSize":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 144
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 145
    .local v30, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 146
    sget v33, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 147
    .local v31, "numberPostDialDigits":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 148
    sget v33, Lcom/android/dialer/calllog/CallLogQuery;->VIA_NUMBER:I

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 149
    .local v32, "numberViaNumbers":Ljava/lang/String;
    :goto_4
    const/16 v33, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 150
    .local v6, "callType":I
    const/16 v33, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "accountComponentName":Ljava/lang/String;
    const/16 v33, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "accountId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 154
    .local v27, "isSameNumber":Z
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 155
    .local v28, "isSamePostDialDigits":Z
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 156
    .local v29, "isSameViaNumbers":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->isSameAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 161
    .local v26, "isSameAccount":Z
    if-eqz v27, :cond_6

    if-eqz v26, :cond_6

    if-eqz v28, :cond_6

    if-eqz v29, :cond_6

    .line 162
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->areBothNotVoicemail(II)Z

    move-result v33

    .line 161
    if-eqz v33, :cond_6

    .line 163
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->areBothNotBlocked(II)Z

    move-result v33

    if-nez v33, :cond_1

    .line 164
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->areBothBlocked(II)Z

    move-result v33

    .line 161
    if-eqz v33, :cond_6

    .line 167
    :cond_1
    add-int/lit8 v24, v24, 0x1

    .line 190
    :goto_5
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 191
    .local v8, "currentCallId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-interface {v0, v8, v9, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->setDayGroup(JI)V

    goto/16 :goto_2

    .line 127
    .end local v4    # "accountComponentName":Ljava/lang/String;
    .end local v5    # "accountId":Ljava/lang/String;
    .end local v6    # "callType":I
    .end local v8    # "currentCallId":J
    .end local v18    # "groupAccountComponentName":Ljava/lang/String;
    .end local v19    # "groupAccountId":Ljava/lang/String;
    .end local v20    # "groupCallType":I
    .end local v23    # "groupPostDialDigits":Ljava/lang/String;
    .end local v24    # "groupSize":I
    .end local v25    # "groupViaNumbers":Ljava/lang/String;
    .end local v26    # "isSameAccount":Z
    .end local v27    # "isSameNumber":Z
    .end local v28    # "isSamePostDialDigits":Z
    .end local v29    # "isSameViaNumbers":Z
    .end local v30    # "number":Ljava/lang/String;
    .end local v31    # "numberPostDialDigits":Ljava/lang/String;
    .end local v32    # "numberViaNumbers":Ljava/lang/String;
    :cond_2
    const-string/jumbo v23, ""

    .restart local v23    # "groupPostDialDigits":Ljava/lang/String;
    goto/16 :goto_0

    .line 129
    :cond_3
    const-string/jumbo v25, ""

    .restart local v25    # "groupViaNumbers":Ljava/lang/String;
    goto/16 :goto_1

    .line 146
    .restart local v18    # "groupAccountComponentName":Ljava/lang/String;
    .restart local v19    # "groupAccountId":Ljava/lang/String;
    .restart local v20    # "groupCallType":I
    .restart local v24    # "groupSize":I
    .restart local v30    # "number":Ljava/lang/String;
    :cond_4
    const-string/jumbo v31, ""

    .restart local v31    # "numberPostDialDigits":Ljava/lang/String;
    goto/16 :goto_3

    .line 148
    :cond_5
    const-string/jumbo v32, ""

    .restart local v32    # "numberViaNumbers":Ljava/lang/String;
    goto/16 :goto_4

    .line 170
    .restart local v4    # "accountComponentName":Ljava/lang/String;
    .restart local v5    # "accountId":Ljava/lang/String;
    .restart local v6    # "callType":I
    .restart local v26    # "isSameAccount":Z
    .restart local v27    # "isSameNumber":Z
    .restart local v28    # "isSamePostDialDigits":Z
    .restart local v29    # "isSameViaNumbers":Z
    :cond_6
    const/16 v33, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 171
    .local v12, "date":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v10, v11}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getDayGroup(JJ)I

    move-result v21

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    move-object/from16 v33, v0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v34

    sub-int v34, v34, v24

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(II)V

    .line 178
    const/16 v24, 0x1

    .line 181
    move-object/from16 v22, v30

    .line 182
    move-object/from16 v23, v31

    .line 183
    move-object/from16 v25, v32

    .line 184
    move/from16 v20, v6

    .line 185
    move-object/from16 v18, v4

    .line 186
    move-object/from16 v19, v5

    goto :goto_5

    .line 195
    .end local v4    # "accountComponentName":Ljava/lang/String;
    .end local v5    # "accountId":Ljava/lang/String;
    .end local v6    # "callType":I
    .end local v12    # "date":J
    .end local v26    # "isSameAccount":Z
    .end local v27    # "isSameNumber":Z
    .end local v28    # "isSamePostDialDigits":Z
    .end local v29    # "isSameViaNumbers":Z
    .end local v30    # "number":Ljava/lang/String;
    .end local v31    # "numberPostDialDigits":Ljava/lang/String;
    .end local v32    # "numberViaNumbers":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    move-object/from16 v33, v0

    sub-int v34, v7, v24

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(II)V

    .line 105
    return-void
.end method

.method public addVoicemailGroups(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    .line 203
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 204
    return-void

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-interface {v2}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->clearDayGroups()V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    .local v0, "currentTime":J
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 217
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(II)V

    .line 219
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 220
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getDayGroup(JJ)I

    move-result v3

    .line 219
    invoke-interface {v2, v4, v5, v3}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->setDayGroup(JI)V

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

.method compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v8, 0x40

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 240
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6

    .line 242
    :cond_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 245
    .local v0, "index1":I
    if-eq v0, v7, :cond_4

    .line 246
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "userinfo1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "rest1":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 256
    .local v1, "index2":I
    if-eq v1, v7, :cond_5

    .line 257
    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "userinfo2":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "rest2":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    :cond_3
    return v6

    .line 249
    .end local v1    # "index2":I
    .end local v2    # "rest1":Ljava/lang/String;
    .end local v3    # "rest2":Ljava/lang/String;
    .end local v4    # "userinfo1":Ljava/lang/String;
    .end local v5    # "userinfo2":Ljava/lang/String;
    :cond_4
    move-object v4, p1

    .line 250
    .restart local v4    # "userinfo1":Ljava/lang/String;
    const-string/jumbo v2, ""

    .restart local v2    # "rest1":Ljava/lang/String;
    goto :goto_0

    .line 260
    .restart local v1    # "index2":I
    :cond_5
    move-object v5, p2

    .line 261
    .restart local v5    # "userinfo2":Ljava/lang/String;
    const-string/jumbo v3, ""

    .restart local v3    # "rest2":Ljava/lang/String;
    goto :goto_1
.end method

.method equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 227
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 230
    :cond_1
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
