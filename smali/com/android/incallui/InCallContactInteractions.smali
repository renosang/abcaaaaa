.class public Lcom/android/incallui/InCallContactInteractions;
.super Ljava/lang/Object;
.source "InCallContactInteractions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;,
        Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/incallui/InCallContactInteractions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallContactInteractions;->TAG:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method constructHoursInfo(Ljava/util/Calendar;Ljava/util/List;)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 13
    .param p1, "currentTime"    # Ljava/util/Calendar;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;)",
            "Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;"
        }
    .end annotation

    .prologue
    .local p2, "openingHours":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;>;"
    const/4 v12, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 148
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 149
    :cond_0
    return-object v8

    .line 148
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    new-instance v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    invoke-direct {v3}, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;-><init>()V

    .line 153
    .local v3, "hoursInfo":Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    const v7, 0x7f020127

    iput v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->iconId:I

    .line 155
    const/4 v4, 0x0

    .line 159
    .local v4, "isOpenNow":Z
    const/4 v0, 0x0

    .line 161
    .local v0, "afterInterval":I
    const/4 v6, 0x0

    .line 163
    .local v6, "todaysIntervalCount":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "hours$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 164
    .local v1, "hours":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;"
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    invoke-virtual {v7, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v7

    if-gtz v7, :cond_3

    .line 165
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v7

    if-gez v7, :cond_3

    .line 168
    const/4 v4, 0x1

    .line 171
    :cond_3
    invoke-virtual {p1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_4

    .line 172
    add-int/lit8 v6, v6, 0x1

    .line 175
    :cond_4
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v7

    if-lez v7, :cond_2

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "hours":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;"
    :cond_5
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0416

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iput-object v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    .line 196
    if-eqz v4, :cond_a

    .line 197
    if-ne v6, v11, :cond_8

    .line 198
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    .line 242
    :cond_6
    :goto_2
    return-object v3

    .line 182
    :cond_7
    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0417

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 199
    :cond_8
    if-ne v6, v9, :cond_9

    .line 200
    iget-object v8, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    new-array v9, v9, [Ljava/lang/Object;

    .line 202
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    .line 203
    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v11

    .line 201
    const v7, 0x7f0d0411

    .line 200
    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_2

    .line 204
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 207
    iget-object v8, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    new-array v9, v11, [Ljava/lang/Object;

    .line 209
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    .line 208
    const v7, 0x7f0d0414

    .line 207
    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_2

    .line 212
    :cond_a
    add-int/lit8 v5, v6, -0x1

    .line 213
    .local v5, "lastIntervalToday":I
    if-nez v6, :cond_b

    .line 214
    iget-object v8, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    new-array v9, v11, [Ljava/lang/Object;

    .line 216
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    .line 215
    const v7, 0x7f0d0412

    .line 214
    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_2

    .line 217
    :cond_b
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 219
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 221
    iget-object v8, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    new-array v9, v11, [Ljava/lang/Object;

    .line 224
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    .line 223
    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    .line 222
    const v7, 0x7f0d0412

    .line 221
    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_2

    .line 227
    :cond_c
    iget-object v8, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    new-array v9, v11, [Ljava/lang/Object;

    .line 230
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    .line 229
    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    .line 228
    const v7, 0x7f0d0415

    .line 227
    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_2

    .line 232
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 236
    iget-object v8, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    new-array v9, v11, [Ljava/lang/Object;

    .line 238
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/Calendar;

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    .line 237
    const v7, 0x7f0d0413

    .line 236
    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method constructLocationInfo(Ljava/util/Locale;Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "address"    # Landroid/location/Address;
    .param p3, "distance"    # F
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    if-nez p2, :cond_0

    .line 274
    return-object v1

    .line 277
    :cond_0
    new-instance v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    invoke-direct {v0}, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;-><init>()V

    .line 278
    .local v0, "locationInfo":Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    const v1, 0x7f0200f2

    iput v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->iconId:I

    .line 279
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1

    .line 281
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    .line 283
    const v3, 0x3a22e384

    mul-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    .line 282
    const v3, 0x7f0d040d

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    .line 289
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 292
    invoke-virtual {p2, v4}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 293
    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 291
    const v3, 0x7f0d040f

    .line 290
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    .line 297
    :goto_1
    return-object v0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    .line 286
    const v3, 0x3a83126f    # 0.001f

    mul-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    .line 285
    const v3, 0x7f0d040e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p2, v4}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_1
.end method

.method getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "hours":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;"
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    .line 251
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 252
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 250
    const v0, 0x7f0d0410

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
