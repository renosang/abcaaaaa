.class public Lcom/android/dialer/calllog/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private mDescriptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneTypeLabelForTest:Ljava/lang/CharSequence;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/dialer/calllog/calllogcache/CallLogCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "callLogCache"    # Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 87
    iput-object p3, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    .line 84
    return-void
.end method

.method private getCallLocationAndDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getCallTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    .local v0, "callTypeOrLocation":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v0    # "callTypeOrLocation":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getCallDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/dialer/util/DialerUtils;->join(Landroid/content/res/Resources;Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getGranularDate(J)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 308
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->shouldShowYear(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 311
    :goto_0
    const v2, 0x10010

    or-int/2addr v0, v2

    invoke-static {v1, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getVoicemailDuration(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/String;
    .locals 8
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 385
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p1, Lcom/android/dialer/PhoneCallDetails;->duration:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 386
    .local v0, "minutes":J
    iget-wide v4, p1, Lcom/android/dialer/PhoneCallDetails;->duration:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 387
    .local v2, "seconds":J
    const-wide/16 v4, 0x63

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 388
    const-wide/16 v0, 0x63

    .line 390
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x7f0d027c

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private setDetailText(Lcom/android/dialer/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 9
    .param p1, "views"    # Lcom/android/dialer/calllog/PhoneCallDetailsViews;
    .param p2, "callCount"    # Ljava/lang/Integer;
    .param p3, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getCallLocationAndDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 367
    .local v0, "dateText":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    new-array v3, v8, [Ljava/lang/Object;

    .line 369
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const v4, 0x7f0d023e

    .line 368
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p3, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    aget v2, v2, v6

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-wide v2, p3, Lcom/android/dialer/PhoneCallDetails;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 375
    iget-object v2, p1, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    new-array v4, v8, [Ljava/lang/Object;

    .line 376
    aput-object v1, v4, v6

    .line 377
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getVoicemailDuration(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 376
    const v5, 0x7f0d027d

    .line 375
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_1
    return-void

    .line 371
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, v0

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 379
    :cond_1
    iget-object v2, p1, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private shouldShowYear(J)Z
    .locals 7
    .param p1, "date"    # J

    .prologue
    const/4 v1, 0x1

    .line 322
    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 323
    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 324
    .local v0, "currentYear":I
    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 325
    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCallDate(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 277
    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getGranularDateTime(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 281
    :cond_0
    iget-wide v0, p1, Lcom/android/dialer/PhoneCallDetails;->date:J

    invoke-direct {p0}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 282
    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    .line 281
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCallTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    const/4 v1, 0x0

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "numberFormattedLabel":Ljava/lang/CharSequence;
    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    .end local v0    # "numberFormattedLabel":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    .line 261
    :cond_1
    return-object v0

    .line 246
    .restart local v0    # "numberFormattedLabel":Ljava/lang/CharSequence;
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    iget-object v3, p1, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v4, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    :cond_3
    iget v2, p1, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    if-nez v2, :cond_4

    .line 251
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 250
    :cond_4
    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mPhoneTypeLabelForTest:Ljava/lang/CharSequence;

    .line 254
    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iget v3, p1, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    iget-object v4, p1, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 253
    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "numberFormattedLabel":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "numberFormattedLabel":Ljava/lang/CharSequence;
    goto :goto_0

    .line 249
    .local v0, "numberFormattedLabel":Ljava/lang/CharSequence;
    :cond_5
    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    .local v0, "numberFormattedLabel":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public getGranularDateTime(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    const/4 v6, 0x1

    .line 299
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 300
    iget-wide v2, p1, Lcom/android/dialer/PhoneCallDetails;->date:J

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->getGranularDate(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 301
    iget-object v2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/dialer/PhoneCallDetails;->date:J

    invoke-static {v2, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 299
    const v2, 0x7f0d027b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 3
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 332
    iget-object v1, p2, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v0, p2, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    .line 340
    .local v0, "nameText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-void

    .line 334
    .end local v0    # "nameText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p2, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    iget-object v0, p2, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    .restart local v0    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 337
    .end local v0    # "nameText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0274

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 345
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 344
    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/dialer/calllog/PhoneCallDetailsViews;Lcom/android/dialer/PhoneCallDetails;Ljava/lang/String;)V
    .locals 24
    .param p1, "views"    # Lcom/android/dialer/calllog/PhoneCallDetailsViews;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 98
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/dialer/calllog/CallTypeIconsView;->clear()V

    .line 99
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v7, v0

    .line 100
    .local v7, "count":I
    const/4 v13, 0x0

    .line 101
    .local v13, "isVoicemail":Z
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    if-ge v12, v7, :cond_2

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v12, v0, :cond_2

    .line 102
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    move-object/from16 v21, v0

    aget v21, v21, v12

    invoke-virtual/range {v20 .. v21}, Lcom/android/dialer/calllog/CallTypeIconsView;->add(I)V

    .line 103
    if-nez v12, :cond_0

    .line 104
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    move-object/from16 v20, v0

    aget v20, v20, v12

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/4 v13, 0x1

    .line 101
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 109
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v21, v0

    .line 110
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/dialer/PhoneCallDetails;->features:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    .line 109
    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallTypeIconsView;->setShowVideo(Z)V

    .line 111
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/dialer/calllog/CallTypeIconsView;->requestLayout()V

    .line 112
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/dialer/calllog/CallTypeIconsView;->setVisibility(I)V

    .line 116
    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v7, v0, :cond_8

    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 123
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v5, v2}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->setDetailText(Lcom/android/dialer/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;Lcom/android/dialer/PhoneCallDetails;)V

    .line 126
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/dialer/PhoneCallDetails;->accountIcon:Landroid/graphics/drawable/Drawable;

    .line 127
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_9

    .line 128
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "accountLabel":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 137
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 139
    const/16 v22, 0x0

    aput-object v4, v21, v22

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aput-object v22, v21, v23

    .line 138
    const v22, 0x7f0d02c4

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_3
    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 146
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->getAccountColor(Landroid/telecom/PhoneAccountHandle;)I

    move-result v6

    .line 149
    .local v6, "color":I
    if-nez v6, :cond_b

    .line 150
    const v8, 0x7f0a02ff

    .line 151
    .local v8, "defaultColor":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    .end local v6    # "color":I
    .end local v8    # "defaultColor":I
    :goto_6
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    .line 161
    .local v9, "displayNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v15, Ljava/lang/String;

    .line 162
    .local v15, "phoneNum":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 164
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 165
    .local v17, "start":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v10, v17, v20

    .line 166
    .local v10, "end":I
    new-instance v16, Landroid/text/SpannableString;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    .local v16, "result":Landroid/text/SpannableString;
    new-instance v20, Landroid/text/style/StyleSpan;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 168
    const/16 v21, 0x11

    .line 167
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 169
    move-object/from16 v9, v16

    .line 171
    .end local v10    # "end":I
    .end local v16    # "result":Landroid/text/SpannableString;
    .end local v17    # "start":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/dialer/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 172
    move-object v14, v9

    .line 174
    .local v14, "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 189
    :cond_5
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    if-eqz v13, :cond_6

    .line 192
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x0

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_6
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/dialer/PhoneCallDetails;->isRead:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 198
    .local v19, "typeface":Landroid/graphics/Typeface;
    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 199
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 200
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 201
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/dialer/PhoneCallDetails;->isRead:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 202
    const v20, 0x7f0a0341

    .line 201
    :goto_a
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    return-void

    .line 110
    .end local v4    # "accountLabel":Ljava/lang/String;
    .end local v9    # "displayNumber":Ljava/lang/CharSequence;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "nameText":Ljava/lang/CharSequence;
    .end local v15    # "phoneNum":Ljava/lang/String;
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 119
    :cond_8
    const/4 v5, 0x0

    .local v5, "callCount":Ljava/lang/Integer;
    goto/16 :goto_3

    .line 131
    .end local v5    # "callCount":Ljava/lang/Integer;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 141
    .restart local v4    # "accountLabel":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 142
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 141
    const v22, 0x7f0d02c2

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 153
    .restart local v6    # "color":I
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 156
    .end local v6    # "color":I
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 176
    .restart local v9    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v15    # "phoneNum":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/dialer/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v14

    .line 177
    .restart local v14    # "nameText":Ljava/lang/CharSequence;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    .line 178
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    .line 177
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 180
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 181
    .restart local v17    # "start":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v10, v17, v20

    .line 182
    .restart local v10    # "end":I
    new-instance v18, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 183
    .local v18, "style":Landroid/text/SpannableString;
    new-instance v20, Landroid/text/style/StyleSpan;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 184
    const/16 v21, 0x11

    .line 183
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 185
    move-object/from16 v14, v18

    goto/16 :goto_7

    .line 193
    .end local v10    # "end":I
    .end local v17    # "start":I
    .end local v18    # "style":Landroid/text/SpannableString;
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    move-object/from16 v20, v0

    goto/16 :goto_8

    .line 197
    :cond_f
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    goto/16 :goto_9

    .line 202
    :cond_10
    const v20, 0x7f0a0345

    goto/16 :goto_a
.end method

.method public setPhoneTypeLabelForTest(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "phoneTypeLabel"    # Ljava/lang/CharSequence;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;->mPhoneTypeLabelForTest:Ljava/lang/CharSequence;

    .line 265
    return-void
.end method
