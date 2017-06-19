.class public Lcom/android/contacts/common/util/DataStatus;
.super Ljava/lang/Object;
.source "DataStatus.java"


# instance fields
.field private mIconRes:I

.field private mLabelRes:I

.field private mPresence:I

.field private mResPackage:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    .line 36
    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    .line 39
    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    .line 41
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    .line 36
    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    .line 39
    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    .line 41
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    .line 46
    return-void
.end method

.method private fromCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, -0x1

    .line 77
    const-string/jumbo v0, "mode"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    .line 78
    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "status_ts"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    .line 80
    const-string/jumbo v0, "status_res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "status_icon"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    .line 82
    const-string/jumbo v0, "status_label"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    .line 76
    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "missingValue"    # I

    .prologue
    .line 153
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "missingValue":I
    :goto_0
    return p2

    .restart local p2    # "missingValue":I
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "missingValue"    # J

    .prologue
    .line 158
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "missingValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "missingValue":J
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isNull(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 138
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 141
    .local v1, "validIcon":Z
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    return v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    return-wide v0
.end method

.method public getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 108
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 110
    :cond_0
    iget-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v11, 0x1

    .line 111
    .local v11, "validTimestamp":Z
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v10, 0x1

    .line 113
    .local v10, "validLabel":Z
    :goto_1
    if-eqz v11, :cond_3

    .line 114
    iget-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    .line 115
    const/high16 v6, 0x40000

    .line 113
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v9

    .line 116
    :goto_2
    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    .line 117
    const/4 v2, 0x0

    .line 116
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 119
    :goto_3
    if-eqz v11, :cond_5

    if-eqz v10, :cond_5

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    .line 121
    const v1, 0x7f0d01d5

    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    .end local v10    # "validLabel":Z
    .end local v11    # "validTimestamp":Z
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "validTimestamp":Z
    goto :goto_0

    .line 111
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "validLabel":Z
    goto :goto_1

    .line 115
    :cond_3
    const/4 v9, 0x0

    .local v9, "timeClause":Ljava/lang/CharSequence;
    goto :goto_2

    .line 117
    .end local v9    # "timeClause":Ljava/lang/CharSequence;
    :cond_4
    const/4 v7, 0x0

    .local v7, "labelClause":Ljava/lang/CharSequence;
    goto :goto_3

    .line 123
    .end local v7    # "labelClause":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v10, :cond_6

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 126
    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 125
    const v1, 0x7f0d01d4

    .line 124
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_6
    if-eqz v11, :cond_7

    .line 128
    return-object v9

    .line 130
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public possibleUpdate(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 56
    const-string/jumbo v4, "status"

    invoke-static {p1, v4}, Lcom/android/contacts/common/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 57
    .local v0, "hasStatus":Z
    :goto_0
    const-string/jumbo v4, "status_ts"

    invoke-static {p1, v4}, Lcom/android/contacts/common/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 61
    .local v1, "hasTimestamp":Z
    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 56
    .end local v0    # "hasStatus":Z
    .end local v1    # "hasTimestamp":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "hasStatus":Z
    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "hasTimestamp":Z
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/util/DataStatus;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    .line 64
    :cond_3
    if-eqz v1, :cond_6

    .line 66
    const-string/jumbo v4, "status_ts"

    const-wide/16 v6, -0x1

    invoke-static {p1, v4, v6, v7}, Lcom/android/contacts/common/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    .line 67
    .local v2, "newTimestamp":J
    iget-wide v4, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    return-void

    .line 62
    .end local v2    # "newTimestamp":J
    :cond_4
    return-void

    .line 69
    .restart local v2    # "newTimestamp":J
    :cond_5
    iput-wide v2, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    .line 73
    .end local v2    # "newTimestamp":J
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    .line 55
    return-void
.end method
